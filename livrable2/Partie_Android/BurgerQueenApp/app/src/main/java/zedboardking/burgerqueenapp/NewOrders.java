package zedboardking.burgerqueenapp;

/**
 * Created by Wassim on 28/10/2015.
 * classe pour l'affichage de la liste
 * des commandes pretes a servir.
 */

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ListView;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.ExecutionException;

public class NewOrders extends AppCompatActivity {

    // URL to get contacts JSON
    private static String url = "http://132.207.89.27/commandes/pretesaservir";
    private static final String TAG_NOM= "nom";
    private static final String TAG_NUMCOMMANDE = "noCommande";
    private static final String TAG_EMPORTE = "pourEmporter";
    private static final String TAG_NUMTABLE = "noTable";
    private static final String TAG_HEURE = "heure";
    private static final String TAG_NOMLISTE = "Liste";

    private EditText userNameEditText;
    private EditText passwordEditText;
    private String userName;
    private String password;

    private ArrayList<HashMap<String, String>> menuList= new ArrayList<>();

    ListView l;
    ArrayList<Order> orderList;
    ordersAdapter oadap;

    /**
     * Fonction pour afficher les option menu
     * @param menu
     * @return
     */
    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        MenuInflater inflater = getMenuInflater();
        inflater.inflate(R.menu.menu, menu);
        return true;
    }

    /**
     * Fonction pour gerer la seletion des options
     * @param item
     * @return
     */
    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle item selection
        switch (item.getItemId()) {

            case R.id.refresh:

                recreate();
                return true;

            case R.id.signout:

                AlertDialog.Builder build = new AlertDialog.Builder(this);
                build.setTitle("Déconnexion");
                build.setMessage("Êtes-vous certain?");
                build.setIcon(android.R.drawable.ic_dialog_alert);
                build.setPositiveButton("Oui", new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int which) {
                        Intent i = new Intent(getBaseContext(), ViewWelcome.class);
                        startActivity(i);
                    }
                });
                build.setNegativeButton("Non", null);
                build.show();

                return true;

            case R.id.password:

                Intent i = new Intent(getBaseContext(), ViewPass.class);
                startActivity(i);
                return true;

            default:
                return super.onOptionsItemSelected(item);
        }
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {

        super.onCreate(savedInstanceState);
        setContentView(R.layout.orders);

        final Button connectWaiter = (Button) findViewById(R.id.buttonWaiterConnect);

        userNameEditText = (EditText) findViewById(R.id.textUserName);
        passwordEditText = (EditText) findViewById(R.id.textPassword);

        userName = null;
        password = null;

        // Calling async task to get json
        try {
            new GetItemList().execute().get();
        } catch (InterruptedException e) {
            e.printStackTrace();
        } catch (ExecutionException e) {
            e.printStackTrace();
        }

        l = (ListView) findViewById(R.id.listview);
        showOrderList();

        connectWaiter.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                userName = userNameEditText.getText().toString();
                password = passwordEditText.getText().toString();

                // Calling async task to get json
                try {
                    new GetItemList().execute().get();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                } catch (ExecutionException e) {
                    e.printStackTrace();
                }
            }
        });
    }


    /**
     * Fonction pour afficher la liste des commandes prises du serveur
     */
    private void showOrderList(){

        orderList = new ArrayList<Order>();

        if (menuList !=null){
            for(int i = 0; i < menuList.size() ; i++)
            {
                String nom = menuList.get(i).get(TAG_NOM);
                String noCommande = menuList.get(i).get(TAG_NUMCOMMANDE);
                String noTable = menuList.get(i).get(TAG_NUMTABLE);
                String pourEmporter = menuList.get(i).get(TAG_EMPORTE);
                String heure = menuList.get(i).get(TAG_HEURE);

                orderList.add(new Order("nom: " + nom + "\n" + "noCommande: " + noCommande + "\n" + "pourEmporter: " + pourEmporter + "\n" + "noTable: " + noTable + "\n" + "heure: " + heure, noCommande));
            }

            oadap = new ordersAdapter(orderList, this);
            l.setAdapter(oadap);
        }
    }

    /**
     * Fonction pour prendre les items de la liste du serveur
     */
    private class GetItemList extends AsyncTask<Void, Void, Void> {

        // Hashmap for ListView
        ProgressDialog pDialog;

        @Override
        protected void onPreExecute() {
            super.onPreExecute();
            // Showing progress dialog
            pDialog = new ProgressDialog(NewOrders.this);
            pDialog.setMessage("Veuillez Patienter...");
            pDialog.setCancelable(false);
            pDialog.show();
        }

        @Override
        protected Void doInBackground(Void... arg0) {
            // Creating service handler class instance
            WebRequest webreq = new WebRequest();

            menuList= new ArrayList<>();

            // Making a request to url and getting response
            String jsonStr = webreq.makeWebServiceCall(url, WebRequest.GET, null, userName, password);
//            if(jsonStr != null) {
//                Toast.makeText(getApplicationContext(),
//                        "Action authorisé!",
//                        Toast.LENGTH_LONG).show();
//            }
//            else
//            {
//                Toast.makeText(getApplicationContext(),
//                        "Action non authorisée!",
//                        Toast.LENGTH_LONG).show();
//            }

            Log.d("Response: ", "> " + jsonStr);

            menuList = ParseJSON(jsonStr);

            return null;
        }

        @Override
        protected void onPostExecute(Void result) {
            super.onPostExecute(result);
            // Dismiss the progress dialog
            if (pDialog.isShowing())
                pDialog.dismiss();

            userName = null;
            password = null;

            Log.d("TAG", "Appel on post execute");
        }
    }

    /**
     * Fonction pour rafraichir la liste des commandes
     */
    @Override
    public void recreate()
    {
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            super.recreate();
        }
        else
        {
            startActivity(getIntent());
            finish();
        }
    }


    /**
     * Fonction pour parser le JSON
     * @param json
     * @return
     */
    private ArrayList<HashMap<String, String>> ParseJSON(String json) {
        if (json != null) {
            try {

                // Hashmap for ListView
                ArrayList<HashMap<String, String>> listDisp = new ArrayList<HashMap<String, String>>();
                JSONObject jsonObj = new JSONObject(json);

                // Récuperer la liste des commandes:
                JSONArray jsonArr = jsonObj.getJSONArray(TAG_NOMLISTE);

                // Entete
                for (int i = 0; i < jsonArr.length(); i++) {
                    JSONObject itemArr = jsonArr.getJSONObject(i);
                    String nom = itemArr.getString(TAG_NOM);
                    String numcommande = itemArr.getString(TAG_NUMCOMMANDE);
                    String emporte = itemArr.getString(TAG_EMPORTE);
                    String numtable = itemArr.getString(TAG_NUMTABLE);
                    String heure = itemArr.getString(TAG_HEURE);

                    HashMap<String, String> hashMode = new HashMap<String, String>();
                    hashMode.put(TAG_NOM, nom);
                    hashMode.put(TAG_NUMCOMMANDE, numcommande);
                    hashMode.put(TAG_EMPORTE, emporte);
                    hashMode.put(TAG_NUMTABLE, numtable);
                    hashMode.put(TAG_HEURE, heure);

                    // adding item to list
                    listDisp.add(hashMode);
                }
                return listDisp;

            } catch (JSONException e) {
                e.printStackTrace();
                return null;
            }
        } else {
            Log.e("ServiceHandler", "pas de list recu");
            return null;
        }
    }
}
