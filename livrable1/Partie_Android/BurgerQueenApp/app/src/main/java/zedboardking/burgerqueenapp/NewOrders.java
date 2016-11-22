package zedboardking.burgerqueenapp;

/**
 * Created by Wassim on 28/10/2015.
 */

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.media.Image;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.util.Base64;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.ListView;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.ExecutionException;

public class NewOrders extends AppCompatActivity implements android.widget.CompoundButton.OnCheckedChangeListener{

    ListView l;
    ArrayList<Order> orderList;
    ordersAdapter oadap;

    // URL to get contacts JSON
    private static String url = "http://132.207.89.26/commandes/pretesaservir";
    private static final String TAG_NOM= "nom";
    private static final String TAG_NUMCOMMANDE = "noCommande";
    private static final String TAG_EMPORTE = "pourEmporter";
    private static final String TAG_NUMTABLE = "noTable";
    private static final String TAG_PHOTO = "photo";
    private static final String TAG_TOTAL = "total";
    private static final String TAG_HEURE = "heure";
    private static final String TAG_NOMLISTE = "Liste";

    private ArrayList<HashMap<String, String>> menuList;

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        MenuInflater inflater = getMenuInflater();
        inflater.inflate(R.menu.menu, menu);
        return true;
    }

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

            default:
                return super.onOptionsItemSelected(item);
        }
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {

        super.onCreate(savedInstanceState);
        setContentView(R.layout.orders);

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
    }

    private void showOrderList(){

        orderList = new ArrayList<Order>();
        for(int i = 0; i < menuList.size() ; i++)
        {
            String nom = menuList.get(i).get(TAG_NOM);
            String noCommande = menuList.get(i).get(TAG_NUMCOMMANDE);
            String noTable = menuList.get(i).get(TAG_NUMTABLE);
            String pourEmporter = menuList.get(i).get(TAG_EMPORTE);
            String heure = menuList.get(i).get(TAG_HEURE);
            String photo = menuList.get(i).get(TAG_PHOTO);

            orderList.add(new Order("nom: " + nom + "\n" + "noCommande: " + noCommande + "\n" + "pourEmporter: " + pourEmporter + "\n" + "noTable: " + noTable + "\n" + "heure: " + heure));
        }

        oadap = new ordersAdapter(orderList, this);
        l.setAdapter(oadap);

    }

    @Override
     public void onCheckedChanged(CompoundButton b, boolean isChecked){

        int pos = l.getPositionForView(b);
        if(pos!=ListView.INVALID_POSITION){
            Order o = orderList.get(pos);
            o.setSelected(isChecked);

            //Toast.makeText(this, "Order: " + o.getNumber() + " selected." + isChecked, Toast.LENGTH_SHORT).show();
            oadap.remove(oadap.getItem(pos));
        }
    }

    /**
     * Async task class to get json by making HTTP call
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

            // Making a request to url and getting response
            String jsonStr = webreq.makeWebServiceCall(url, WebRequest.POST);

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

            Log.d("TAG", "Appel on post execute");
        }
    }

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

    private ArrayList<HashMap<String, String>> ParseJSON(String json) {
        if (json != null) {
            try {
                // Hashmap for ListView
                ArrayList<HashMap<String, String>> listDisp = new ArrayList<HashMap<String, String>>();
                JSONObject jsonObj = new JSONObject(json);
                // Récuperer la liste des commandes:
                JSONArray jsonArr = jsonObj.getJSONArray(TAG_NOMLISTE);
                // Entete
                //int ii = 0;
                for (int i = 0; i < jsonArr.length(); i++) {
                    JSONObject itemArr = jsonArr.getJSONObject(i);
                    String nom = itemArr.getString(TAG_NOM);
                    String numcommande = itemArr.getString(TAG_NUMCOMMANDE);
                    String emporte = itemArr.getString(TAG_EMPORTE);
                    String numtable = itemArr.getString(TAG_NUMTABLE);
                    String photo = itemArr.getString(TAG_PHOTO);
                    //String total = itemArr.getString(TAG_TOTAL);
                    String heure = itemArr.getString(TAG_HEURE);
                    // tmp hashmap for single entete item
                    HashMap<String, String> hashMode = new HashMap<String, String>();
                    hashMode.put(TAG_NOM, nom);
                    hashMode.put(TAG_NUMCOMMANDE, numcommande);
                    hashMode.put(TAG_EMPORTE, emporte);
                    hashMode.put(TAG_NUMTABLE, numtable);
                    hashMode.put(TAG_PHOTO, photo);
                    //hashMode.put(TAG_TOTAL, total);
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
