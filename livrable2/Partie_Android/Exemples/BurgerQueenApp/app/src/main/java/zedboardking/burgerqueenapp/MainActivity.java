package zedboardking.burgerqueenapp;

import android.app.ListActivity;
import android.app.ProgressDialog;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.widget.ListAdapter;
import android.widget.SimpleAdapter;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.HashMap;


public class MainActivity extends ListActivity {

    // URL to get contacts JSON
    private static String url = "http://juliendaoust.olympe.in/json.html";

    // JSON Node names
    private static final String TAG_NOM_RESTO= "nomresto";
    private static final String TAG_ENDROIT = "endroit";
    private static final String TAG_MESSAGE = "message";
    private static final String TAG_MENU_PRINCIPAL = "menuprincipal";
    private static final String TAG_NOM_MENU = "nommenu";
    private static final String TAG_DESCRIPTION_MENU = "descriptionmenu";
    private static final String TAG_LISTE = "liste";
    private static final String TAG_ID = "identificateur";
    private static final String TAG_DESCRIPTION_ITEM = "descriptionitem";
    private static final String TAG_PRIX = "prix";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        // Calling async task to get json
        new GetItemList().execute();
    }

    /**
     * Async task class to get json by making HTTP call
     */
    private class GetItemList extends AsyncTask<Void, Void, Void> {

        // Hashmap for ListView
        ArrayList<HashMap<String, String>> menuList;
        ProgressDialog pDialog;

        @Override
        protected void onPreExecute() {
            super.onPreExecute();
            // Showing progress dialog
            pDialog = new ProgressDialog(MainActivity.this);
            pDialog.setMessage("Veuillez Patienter...");
            pDialog.setCancelable(false);
            pDialog.show();
        }

        @Override
        protected Void doInBackground(Void... arg0) {
            // Creating service handler class instance
            WebRequest webreq = new WebRequest();

            // Making a request to url and getting response
            String jsonStr = webreq.makeWebServiceCall(url, WebRequest.GET);

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
            /**
             * Updating parsed JSON data into ListView
             * */
            ListAdapter entete = new SimpleAdapter(
                    MainActivity.this, menuList,
                    R.layout.entete, new String[]{
                    TAG_NOM_RESTO,
                    TAG_ENDROIT,
                    TAG_MESSAGE},
                    new int[]{
                            R.id.nomResto,
                            R.id.endroit,
                            R.id.message,});
            setListAdapter(entete);

            ListAdapter menu = new SimpleAdapter(
                    MainActivity.this, menuList,
                    R.layout.list_item, new String[]{
                    TAG_ID,
                    TAG_DESCRIPTION_ITEM,
                    TAG_PRIX},
                    new int[]{
                            R.id.id,
                            R.id.desciptionitem,
                            R.id.prix});
            setListAdapter(menu);
        }
    }

    private ArrayList<HashMap<String, String>> ParseJSON(String json) {
        if (json != null) {
            try {

                // Hashmap for ListView
                ArrayList<HashMap<String, String>> listDisp = new ArrayList<HashMap<String, String>>();

                JSONObject jsonObj = new JSONObject(json);

                // tmp hashmap for single entete item
                HashMap<String, String> entete = new HashMap<String, String>();

                // Entete
                String nomResto = jsonObj.getString(TAG_NOM_RESTO);
                String endroit = jsonObj.getString(TAG_ENDROIT);
                String message = jsonObj.getString(TAG_MESSAGE);

                entete.put(TAG_NOM_RESTO, nomResto);
                entete.put(TAG_ENDROIT, endroit);
                entete.put(TAG_MESSAGE, message);

                // adding item to list
                listDisp.add(entete);

                JSONObject menu = jsonObj.getJSONObject(TAG_MENU_PRINCIPAL);

                // Getting JSON Array node
                JSONArray listeMenuItem = menu.getJSONArray(TAG_LISTE);

                // looping through All menu item
                for (int i = 0; i < listeMenuItem.length(); i++) {
                    JSONObject c = listeMenuItem.getJSONObject(i);

                    String id = c.getString(TAG_ID);
                    String descItem = c.getString(TAG_DESCRIPTION_ITEM);
                    String prix = c.getString(TAG_PRIX);

                    // tmp hashmap for single menu item
                    HashMap<String, String> menuItem = new HashMap<String, String>();

                    // adding each child node to HashMap key => value
                    menuItem.put(TAG_ID, id);
                    menuItem.put(TAG_DESCRIPTION_ITEM, descItem);
                    menuItem.put(TAG_PRIX, prix);

                    // adding item to list
                    listDisp.add(menuItem);
                }
                return listDisp;
            } catch (JSONException e) {
                e.printStackTrace();
                return null;
            }
        } else {
            Log.e("ServiceHandler", "Couldn't get any data from the url");
            return null;
        }
    }
}
