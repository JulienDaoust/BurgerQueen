package zedboardking.burgerqueenapp;

/**
 * Created by JulienDaoust on 15-10-13.
 * Cette classe affiche et gère le panier des achats
 */
import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Base64;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import android.widget.Toast;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;

public class ViewCart extends Activity {

    // URL to get contacts JSON
    private static String url = "http://132.207.89.27/commande";

    //test serveur julien//
    //private static String url = "http://juliendaoust.olympe.in/commande.txt";

    private RadioGroup radioGroup;
    private RadioButton pourEmporter, surPlace;
    private TextView textView;
    private JSONObject obj = null;
    private String emporterBool="";
    private EditText clientNameText;
    private EditText noTableText;
    private EditText emailText;
    private String emailSubject;
    private String emailBody="";
    private String clientName;
    private String noTable;
    private String email;
    private ImageView imageView;
    private Bitmap bp;
    private String repServer;
    private String showString = "";
    private String headerEmail = "";
    private static final String TAG_NO_COMMANDE = "noCommande";
    private ArrayList<HashMap<String, String>> menuList;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.viewcart_layout);

        final TextView[] showCartContent = {(TextView) findViewById(R.id.showCart)};
        final Button thirdBtn   = (Button) findViewById(R.id.third);
        final Button backToMenu = (Button) findViewById(R.id.backToMenu);
        final Button clearCart  = (Button) findViewById(R.id.buttonClearCart);
        final Button photoBtn   = (Button) findViewById(R.id.buttonPhoto);
        final Controller[] aController = {(Controller) getApplicationContext()};
        final int[] cartSize = {aController[0].getCart().getCartSize()};

        double subTotal = 0;
        double tps = 0.05;
        double tvq = 0.09975;
        double total = 0;

        imageView = (ImageView)findViewById(R.id.photoImageView);
        clientNameText = (EditText) findViewById(R.id.clientName);
        noTableText = (EditText) findViewById(R.id.Notable);
        emailText = (EditText) findViewById(R.id.clientCourriel);
        pourEmporter = (RadioButton) findViewById(R.id.emporter);
        surPlace = (RadioButton) findViewById(R.id.surPlace);
        radioGroup = (RadioGroup) findViewById(R.id.myRadioGroup);

        radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() {

            @Override
            public void onCheckedChanged(RadioGroup group, int checkedId) {
                // find which radio button is selected
                if (checkedId == R.id.emporter) {
                    emporterBool = "1";
                    Toast.makeText(getApplicationContext(), "choix: Pour Emporter",
                            Toast.LENGTH_SHORT).show();
                } else if (checkedId == R.id.surPlace) {
                    emporterBool = "0";
                    Toast.makeText(getApplicationContext(), "choix: Manger Sur Place",
                            Toast.LENGTH_SHORT).show();
                }
            }
        });

        if (cartSize[0] > 0) {
            for (int i = 0; i < cartSize[0]; i++) {
                String pId = aController[0].getCart().getProducts(i).getProductID();
                String pPrice = aController[0].getCart().getProducts(i).getProductPrice();
                String pDesc = aController[0].getCart().getProducts(i).getProductDesc();
                String pOpt = aController[0].getCart().getProducts(i).getProductOption();
                String pNumb = aController[0].getCart().getProducts(i).getProductNumber();

                if(pOpt.matches(""))
                {
                    showString += "\n\nNom Produit : " + pId + "\n" +
                            "Prix : " + pPrice + " $" + "\n" +
                            "Description : " + pDesc + "" + "\n" +
                            "Nombre : " + pNumb + "" + "\n" +
                            "\n -------------------------------------------";
                }
                else
                {
                    showString += "\n\nNom Produit : " + pId + "\n" +
                            "Prix : " + pPrice + " $" + "\n" +
                            "Description : " + pDesc + "" + "\n" +
                            "Nombre : " + pNumb + "" + "\n" +
                            "Option : " + pOpt + "" + "\n" +
                            "\n -------------------------------------------";
                }
                subTotal += Double.parseDouble(pPrice)*Double.parseDouble(pNumb);
            }
        } else
        {
            showString = "\n\nLe panier est vide.\n\n";
        }

        total += subTotal + (tps*subTotal) + (tvq*subTotal);

        showString+= "\n\nSous-Total : " + formatDecimal(subTotal)+" $" + "\n" +
                "TPS :            " + formatDecimal(tps*subTotal)+ " $" + "\n" +
                "TVQ:             " + formatDecimal(tvq*subTotal)+ " $" +"\n" +
                "Total :         " + formatDecimal(total)+" $" + "\n";

        showCartContent[0].setText(showString);


        //Envoie info paiement lorsque nous appuyons sur le bouton "Paiement"

        thirdBtn.setOnClickListener(new OnClickListener() {
            public void onClick(View v) {

                noTable = noTableText.getText().toString();
                clientName = clientNameText.getText().toString();
                if (clientName.matches("")) {
                    Toast.makeText(getApplicationContext(),
                            "Veuillez entrer un nom SVP.",
                            Toast.LENGTH_LONG).show();
                } else if (noTable.matches("") && (bp == null)) {
                    Toast.makeText(getApplicationContext(),
                            "Veuillez entrer un numéro de table ou prendre une photo.",
                            Toast.LENGTH_LONG).show();
                } else if (emporterBool.matches("")) {
                    Toast.makeText(getApplicationContext(),
                            "Veuillez choisir le mode de livraison.",
                            Toast.LENGTH_LONG).show();
                } else {
                    if (cartSize[0] > 0) {

                        clientName = clientNameText.getText().toString();
                        noTable = noTableText.getText().toString();
                        email = emailText.getText().toString();

                        int selectedId = radioGroup.getCheckedRadioButtonId();
                        textView = (TextView) findViewById(R.id.text);

                        // find which radioButton is checked by id
                        if (selectedId == pourEmporter.getId()) {
                            textView.setText("Vous avez choisi la commande pour emporter");
                        } else if (selectedId == surPlace.getId()) {
                            textView.setText("Vous avez choisi de manger sur place");
                        }

                        Calendar c = Calendar.getInstance();
                        int date = c.get(Calendar.DATE);
                        int mois = c.get(Calendar.MONTH);
                        int annee = c.get(Calendar.YEAR);
                        int heure = c.get(Calendar.HOUR);
                        int minute = c.get(Calendar.MINUTE);
                        int seconde = c.get(Calendar.SECOND);

                        String dateString = date + "-" + mois + "-" + annee;
                        String heureString = heure + ":" + minute + ":" + seconde;

                        JSONArray jsonArray = new JSONArray();

                        obj = new JSONObject();

                        try {
                            obj.put("nom", clientName);
                            if (noTable.matches(""))
                            {
                                obj.put("noTable", noTable);
                            }
                            else{
                                obj.put("noTable", Integer.parseInt(noTable));
                            }
                            if (bp == null) {
                                obj.put("photo", "");
                            } else {
                                obj.put("photo", bitmapToBase64(bp));
                            }
                            obj.put("courriel", email);
                            obj.put("date", dateString);
                            obj.put("heure", heureString);
                            obj.put("pourEmporter", Integer.parseInt(emporterBool));

                        } catch (JSONException e) {
                            e.printStackTrace();
                        }

                        for (int i = 0; i < cartSize[0]; i++) {
                            String pId = aController[0].getCart().getProducts(i).getProductID();
                            String pNumb = aController[0].getCart().getProducts(i).getProductNumber();
                            String pOpt = aController[0].getCart().getProducts(i).getProductOption();

                            JSONObject objArray = null;
                            objArray = new JSONObject();

                            try {
                                objArray.put("identificateur", Integer.parseInt(pId));
                                objArray.put("nombre", Integer.parseInt(pNumb));
                                objArray.put("options", pOpt);

                            } catch (JSONException e) {
                                e.printStackTrace();
                            }

                            jsonArray.put(objArray);
                        }

                        try {
                            obj.put("commande", jsonArray);
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                        emailBody += "Merci d'avoir acheté chez Burger Queen!\n\n";
                        emailBody += "Nom Client: " + clientName +"\n";
                        emailBody += "Heure: " + heureString + "\n\n\n";
                        emailBody += showString;
                        new SendJSONToServer().execute();

                        Intent i = new Intent(getBaseContext(), ViewCheckout.class);
                        startActivity(i);

                    } else
                        Toast.makeText(getApplicationContext(),
                                "Le panier est vide.",
                                Toast.LENGTH_LONG).show();
                }
            }
        });

        //Bouton pour BackToMenu

        backToMenu.setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                Intent i = new Intent(getBaseContext(), ViewCostumerMenu.class);
                i.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TASK);
                startActivity(i);
            }
        });

        //Bouton pour clear cart

        clearCart.setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                aController[0].getCart().clearCart();
                recreate();
            }
        });

        //Bouton pour prendre photo

        photoBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(android.provider.MediaStore.ACTION_IMAGE_CAPTURE);
                intent.putExtra("android.intent.extras.CAMERA_FACING", 1);
                startActivityForResult(intent, 0);
            }
        });
    }

     /*
     *Mettre en bon format les nombre pour la fature
     */

    public String formatDecimal(double number) {
        float epsilon = 0.004f; // 4 tenths of a cent
        if (Math.abs(Math.round(number) - number) < epsilon) {
            return String.format("%10.0f", number); // sdb
        } else {
            return String.format("%10.2f", number); // dj_segfault
        }
    }

    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        // TODO Auto-generated method stub
        super.onActivityResult(requestCode, resultCode, data);

        bp = (Bitmap) data.getExtras().get("data");
        bp = Bitmap.createScaledBitmap(bp,64,64,false);
        imageView.setImageBitmap(bp);

    }
    /*
     *Conversion de bitmap en base64 pour l'image
     */
    private String bitmapToBase64(Bitmap bitmap) {

        final int lnth= bitmap.getByteCount();
        ByteBuffer dst= ByteBuffer.allocate(lnth);
        bitmap.copyPixelsToBuffer(dst);
        byte[] byteArray=dst.array();

        byte[] ret = new byte[(bitmap.getByteCount()) * 3/4 + 54];
        for (int i =0; i<54; ++i) {
            ret[i] = byteArray[i];
        }
        int j = 54;
        for (int i=0; i<bitmap.getByteCount(); i+=4) {
            ret[j++] = byteArray[i+2];
            ret[j++] = byteArray[i+1];
            ret[j++] = byteArray[i];
        }
        return Base64.encodeToString(ret, Base64.NO_WRAP);
    }

    /*
    *Méthode Async Permettant de récupérer le JSON
    */
    private class SendJSONToServer extends AsyncTask<Void, Void, Void> {

        // Hashmap for ListView
        ProgressDialog pDialog;

        @Override
        protected void onPreExecute() {
            super.onPreExecute();
            // Showing progress dialog
            pDialog = new ProgressDialog(ViewCart.this);
            pDialog.setMessage("Veuillez Patienter...");
            pDialog.setCancelable(false);
            pDialog.show();
        }

        @Override
        protected Void doInBackground(Void... arg0) {
            // Creating service handler class instance

            WebRequest webreq = new WebRequest();

            System.out.println("json : " + obj.toString());

            // Making a request to url and posting response
            repServer = webreq.makeWebServiceCall(url, WebRequest.POST, obj.toString());

            menuList = ParseJSON(repServer);

            emailSubject = "Facture pour la commande: " + (menuList.get(0).get(TAG_NO_COMMANDE));
            sendEmail(emailSubject,emailBody,email);

            Log.d("TAG", "Appel on doInBackground");

            return null;
        }

        @Override
        protected void onPostExecute(Void result) {
            super.onPostExecute(result);
        }
    }
        /*
        *Envoie du email
        */
    private void sendEmail(String subject, String body, String emailClient)
    {
        try {
            GMailSender sender = new GMailSender("burgerqueenzedboard@gmail.com", "Starcraft2");
            sender.sendMail(subject,
                    body,
                    "burgerqueenzedboard@gmail.com",
                    emailClient);
        } catch (Exception e) {
            Log.e("SendMail", e.getMessage(), e);
        }
    }

    /*
    *Création du JSON
    */
    private ArrayList<HashMap<String, String>> ParseJSON(String json) {
        if (json != null) {
            try {

                // Hashmap for ListView
                ArrayList<HashMap<String, String>> listDisp = new ArrayList<HashMap<String, String>>();

                JSONObject jsonObj = new JSONObject(json);

                // tmp hashmap for single entete item
                HashMap<String, String> hashMode = new HashMap<String, String>();

                // Entete
                String noCommande = jsonObj.getString(TAG_NO_COMMANDE);

                hashMode.put(TAG_NO_COMMANDE, noCommande);

                // adding item to list
                listDisp.add(hashMode);
                return listDisp;

            } catch (JSONException e) {
                e.printStackTrace();
                return null;
            }
        } else {
            Log.e("ServiceHandler", "pas de noCommande recu");
            return null;
        }
    }

    @Override
    public void recreate()
    {
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            onDestroy();
            super.recreate();
        }
        else
        {
            onDestroy();
            startActivity(getIntent());
            finish();
        }
    }

    @Override
    protected void onDestroy() {

        super.onDestroy();
    }
}