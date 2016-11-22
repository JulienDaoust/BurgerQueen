package zedboardking.burgerqueenapp;

/**
 * Created by JulienDaoust on 15-10-13.
 */
import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
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

import java.io.ByteArrayOutputStream;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;

public class ViewCart extends Activity {

    // URL to get contacts JSON
    private static String url = "http://132.207.89.26/commande";
    //private static String url = "http://juliendaoust.olympe.in/commande.txt";

    private RadioGroup radioGroup;
    private RadioButton pourEmporter, surPlace;
    private TextView textView;
    private JSONObject obj = null;
    boolean emporterBool = false;
    private EditText clientNameText;
    private String clientName;


    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.viewcart_layout);

        final TextView[] showCartContent = {(TextView) findViewById(R.id.showCart)};
        final Button thirdBtn   = (Button) findViewById(R.id.third);
        final Button backToMenu = (Button) findViewById(R.id.backToMenu);
        final Button clearCart  = (Button) findViewById(R.id.buttonClearCart);
        final Controller[] aController = {(Controller) getApplicationContext()};
        final int[] cartSize = {aController[0].getCart().getCartSize()};

        radioGroup = (RadioGroup) findViewById(R.id.myRadioGroup);
        radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() {

            @Override
            public void onCheckedChanged(RadioGroup group, int checkedId) {
                // find which radio button is selected
                if (checkedId == R.id.emporter) {
                    Toast.makeText(getApplicationContext(), "choix: Pour Emporter",
                            Toast.LENGTH_SHORT).show();
                } else if (checkedId == R.id.surPlace) {
                    Toast.makeText(getApplicationContext(), "choice: Manger Sur Place",
                            Toast.LENGTH_SHORT).show();
                }
            }
        });

        pourEmporter = (RadioButton) findViewById(R.id.emporter);
        surPlace = (RadioButton) findViewById(R.id.surPlace);

        String showString = "";

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
                            "Prix : " + pPrice + "\n" +
                            "Description : " + pDesc + "" + "\n" +
                            "Nombre : " + pNumb + "" + "\n" +
                            "\n -------------------------------------------";
                }
                else
                {
                    showString += "\n\nNom Produit : " + pId + "\n" +
                            "Prix : " + pPrice + "\n" +
                            "Description : " + pDesc + "" + "\n" +
                            "Nombre : " + pNumb + "" + "\n" +
                            "Option : " + pOpt + "" + "\n" +
                            "\n -------------------------------------------";
                }
            }
        } else
            showString = "\n\nLe panier est vide.\n\n";

        showCartContent[0].setText(showString);

        clientNameText = (EditText) findViewById(R.id.clientName);

        thirdBtn.setOnClickListener(new OnClickListener() {
            public void onClick(View v) {

                clientName = clientNameText.getText().toString();
                if (clientName.matches("")) {
                    Toast.makeText(getApplicationContext(),
                            "Veuillez entrer un nom SVP.",
                            Toast.LENGTH_LONG).show();
                } else {
                    if (cartSize[0] > 0) {

                        int selectedId = radioGroup.getCheckedRadioButtonId();
                        textView = (TextView) findViewById(R.id.text);

                        // find which radioButton is checked by id
                        if (selectedId == pourEmporter.getId()) {
                            textView.setText("Vous avez choisi la commande pour emporter");
                            emporterBool = true;
                        } else if (selectedId == surPlace.getId()) {
                            textView.setText("Vous avez choisi de manger sur place");
                            emporterBool = false;
                        }

                        EditText clientNameText = (EditText) findViewById(R.id.clientName);
                        String clientName = clientNameText.getText().toString();

                        EditText noTableClient = (EditText) findViewById(R.id.Notable);
                        String noTable = noTableClient.getText().toString();

                        EditText emailClient = (EditText) findViewById(R.id.clientCourriel);
                        String clientEmail = emailClient.getText().toString();

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

                        String strBase64 = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAKCAYAAACNMs+9AAAAS0lEQVR4nGNgIAFMZmBg+E8At8AUn8Sj6AxM0TE8is9D5Q4zQAWwKUZW9J8BSQJZMboiFIXIitEV/WeEqSYEmBgYGHYQoY4YNRAAAPorL+vMPrX1AAAAAElFTkSuQmCC";

                        //byte[] decodedString = Base64.decode(strBase64, Base64.DEFAULT);
                        //Bitmap decodedByte = BitmapFactory.decodeByteArray(decodedString, 0, decodedString.length);
                        //ImageView image = (ImageView)findViewById(R.id.imageView);
                        //image.setImageBitmap(decodedByte);

                        try {
                            obj.put("nom", clientName);
                            obj.put("noTable", noTable);
                            obj.put("photo", strBase64);
                            obj.put("courriel", clientEmail);
                            obj.put("date", dateString.toString());
                            obj.put("heure", heureString.toString());
                            obj.put("pourEmporter", emporterBool);

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
                                objArray.put("identificateur", pId);
                                objArray.put("nombre", pNumb);
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

        backToMenu.setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                Intent i = new Intent(getBaseContext(),ViewCostumerMenu.class);
               i.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TASK);
               startActivity(i);
            }
        });

        clearCart.setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                aController[0].getCart().clearCart();
                recreate();
            }
        });
    }

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
            webreq.makeWebServiceCall(url, WebRequest.POST, obj.toString());

            Log.d("TAG", "Appel on doInBackground");

            return null;
        }

        @Override
        protected void onPostExecute(Void result) {
            super.onPostExecute(result);
            // Dismiss the progress dialog
            if (pDialog.isShowing())
                pDialog.dismiss();

            Log.d("TAG", "Appel on post execute");
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