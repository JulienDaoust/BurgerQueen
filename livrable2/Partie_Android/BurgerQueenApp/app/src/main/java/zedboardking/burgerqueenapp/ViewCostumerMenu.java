package zedboardking.burgerqueenapp;

import android.app.ActionBar;
import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.widget.Button;
import android.widget.ExpandableListView;
import android.widget.LinearLayout;
import android.widget.TextView;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.ExecutionException;


public class ViewCostumerMenu extends Activity {

    // URL to get contacts JSON
    private static String url = "http://132.207.89.27/obtenirmenu";
    //private static String url = "http://juliendaoust.olympe.in/menu.txt";

    // JSON Node names
    private static final String TAG_NOM_RESTO= "nomResto";
    private static final String TAG_ENDROIT = "endroit";
    private static final String TAG_MESSAGE = "message";
    private static final String TAG_MENU_PRINCIPAL1 = "menuPrincipal1";
    private static final String TAG_MENU_PRINCIPAL2 = "menuPrincipal2";
    private static final String TAG_MENU_SPECIAUX = "speciaux";
    private static final String TAG_NOM_MENU = "nomMenu";
    private static final String TAG_DESCRIPTION_MENU = "descriptionMenu";
    private static final String TAG_LISTE = "liste";
    private static final String TAG_ID = "identificateur";
    private static final String TAG_DESCRIPTION_ITEM = "descriptionItem";
    private static final String TAG_PRIX = "prix";
    private static final String TAG_REGROUPEMENT = "regroupement";

    private ArrayList<HashMap<String, String>> menuList = new ArrayList<>();
    private ArrayList<HashMap<String, String>> listDisp = new ArrayList<>();
    private Controller aController;
    private SparseArray<Group> groups = new SparseArray<Group>();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.viewmenu_layout);

        // Calling async task to get json
        try {
            new GetItemList().execute().get();
        } catch (InterruptedException e) {
            e.printStackTrace();
        } catch (ExecutionException e) {
            e.printStackTrace();
        }

        final Button secondBtn = (Button) findViewById(R.id.second);
        final Button refreshBtn = (Button) findViewById(R.id.buttonRefresh);
        final Button quitButton = (Button) findViewById(R.id.buttonQuitMenu);

        //Get Global Controller Class object (see application tag in AndroidManifest.xml)
        aController = (Controller) getApplicationContext();

        //******************  Create Products Data  ***********//

        ModelProducts productObject = null;


        for (int i = 1; i < menuList.size(); i++) {
            String id = menuList.get(i).get(TAG_ID);
            String desc = menuList.get(i).get(TAG_DESCRIPTION_ITEM);
            String prix = menuList.get(i).get(TAG_PRIX);

            String nomMenu = menuList.get(i).get(TAG_NOM_MENU);
            String descMenu = menuList.get(i).get(TAG_DESCRIPTION_MENU);

            //store product object to arraylist in controller
            productObject = new ModelProducts(id, desc, prix, nomMenu, descMenu,"","");
            aController.setProducts(productObject);
        }

        //******************  Products Data Creation End   ***********//*


        //******************  Create Top Menu Data  ***********//

        String nomREsto = menuList.get(0).get(TAG_NOM_RESTO);
        String endroit = menuList.get(0).get(TAG_ENDROIT);
        String message = menuList.get(0).get(TAG_MESSAGE);

        //add name
        TextView TVNomResto = (TextView) findViewById(R.id.nomRestoTextV);
        TVNomResto.setText(nomREsto);

        TextView TVEndroit = (TextView) findViewById(R.id.endroitTextV);
        TVEndroit.setText(endroit);

        TextView TVMessage = (TextView) findViewById(R.id.messageTextV);
        TVMessage.setText(message);
        //****************** Create Top Menu Data End   ***********//*


        //******* Create view elements dynamically and show on activity ******//*

        //Product arraylist size
        int ProductsSize = aController.getProductsArraylistSize();

        // create the layout params that will be used to define how your
        // button will be displayed
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(
                ActionBar.LayoutParams.WRAP_CONTENT, ActionBar.LayoutParams.WRAP_CONTENT);

        //******** Dynamically create view elements - LISTVIEW - Start **********//*

        Group groupMenu;

        if (groups.size() >0)
        {
            groups.clear();
        }

        int iter = 0;

        for (int j = 0; j < ProductsSize; j++) {
            String pID = aController.getProducts(j).getProductID();

            if (pID == null){
                String pNomMenu = aController.getProducts(j).getproductNomMenu();
                if(pNomMenu == null)
                {
                    pNomMenu = "Nos Speciaux";
                }
                String pDescMenu = aController.getProducts(j).getProductDescMenu();

                groupMenu = new Group(pNomMenu + "\n" + pDescMenu);

                for (int k = j+1; k < ProductsSize; k++)
                {
                    final int index = k;
                    String pIDs = aController.getProducts(k).getProductID();
                    String pDesc = aController.getProducts(k).getProductDesc();
                    String pPrice = aController.getProducts(k).getProductPrice();

                    if(pIDs != null)
                    {
                        Group.cartProduct cart = new Group.cartProduct();
                        cart.id = pIDs;
                        cart.desc = pDesc;
                        cart.prix = pPrice;
                        cart.aController = aController;
                        cart.index = index;

                        groupMenu.children.add(cart);
                    }
                    else
                    {
                        break;

                    }
                }
                groups.append(iter, groupMenu);
                iter++;
            }
        }
        //******** Dynamically create view elements - End **********//*

        secondBtn.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {

                Intent i = new Intent(getBaseContext(), ViewCart.class);
                startActivity(i);
            }
        });

        refreshBtn.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {

                recreate();
            }
        });

        quitButton.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {

                Intent quit = new Intent(getBaseContext(), ViewWelcome.class);
                quit.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TASK);
                startActivity(quit);
                aController.getCart().clearCart();

            }
        });

        ExpandableListView listView = (ExpandableListView) findViewById(R.id.listView);
        MyExpandableListAdapter adapter = new MyExpandableListAdapter(this, groups);
        listView.setAdapter(adapter);
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
            pDialog = new ProgressDialog(ViewCostumerMenu.this);
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

            if (menuList.size() >0 )
            {
                menuList.clear();
            }
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

    private ArrayList<HashMap<String, String>> ParseJSON(String json) {
        if (json != null) {
            try {

                /**
                 * Entete menu
                 */

            if (listDisp.size()>0)
            {
                listDisp.clear();
            }

                // Hashmap for ListView
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

                /**
                 * Traitement du menuPrincipal1
                 */

                JSONObject menu1 = jsonObj.getJSONObject(TAG_MENU_PRINCIPAL1);

                // tmp hashmap for single enteteMenu item

                HashMap<String, String> enteteMenu1 = new HashMap<String, String>();

                String nomMenu1 = menu1.getString(TAG_NOM_MENU);
                String descMenu1 = menu1.getString(TAG_DESCRIPTION_MENU);

                enteteMenu1.put(TAG_NOM_MENU, nomMenu1);
                enteteMenu1.put(TAG_DESCRIPTION_MENU, descMenu1);

                listDisp.add(enteteMenu1);

                // Getting JSON Array node
                JSONArray listeMenuItem1 = menu1.getJSONArray(TAG_LISTE);

                for (int i = 0; i < listeMenuItem1.length(); i++) {
                    JSONObject c = listeMenuItem1.getJSONObject(i);

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

                /**
                 * Traitement du menuPrincipal2
                 */

                JSONObject menu2 = jsonObj.getJSONObject(TAG_MENU_PRINCIPAL2);

                // tmp hashmap for single enteteMenu item

                HashMap<String, String> enteteMenu2 = new HashMap<String, String>();

                String nomMenu2 = menu2.getString(TAG_NOM_MENU);
                String descMenu2 = menu2.getString(TAG_DESCRIPTION_MENU);

                enteteMenu2.put(TAG_NOM_MENU, nomMenu2);
                enteteMenu2.put(TAG_DESCRIPTION_MENU, descMenu2);

                listDisp.add(enteteMenu2);

                // Getting JSON Array node
                JSONArray listeMenuItem2 = menu2.getJSONArray(TAG_LISTE);

                for (int i = 0; i < listeMenuItem2.length(); i++) {
                    JSONObject c = listeMenuItem2.getJSONObject(i);

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

                /**
                 * Traitement du menuSpeciaux
                 */

                JSONObject speciaux = jsonObj.getJSONObject(TAG_MENU_SPECIAUX);

                // tmp hashmap for single enteteMenu item

                HashMap<String, String> enteteMenuSpeciaux = new HashMap<String, String>();

                String descMenuSpeciaux = speciaux.getString(TAG_DESCRIPTION_MENU);

                enteteMenuSpeciaux.put(TAG_DESCRIPTION_MENU, descMenuSpeciaux);

                listDisp.add(enteteMenuSpeciaux);

                // Getting JSON Array node
                JSONArray listeMenuItemSpeciaux = speciaux.getJSONArray(TAG_LISTE);

                for (int i = 0; i < listeMenuItemSpeciaux.length(); i++) {
                    JSONObject c = listeMenuItemSpeciaux.getJSONObject(i);

                    String id = c.getString(TAG_ID);
                    String descItem = c.getString(TAG_DESCRIPTION_ITEM);
                    String prix = c.getString(TAG_PRIX);

                    // tmp hashmap for single menu item
                    HashMap<String, String> menuItem = new HashMap<String, String>();

                    // adding each child node to HashMap key => value
                    menuItem.put(TAG_ID, id);
                    menuItem.put(TAG_DESCRIPTION_ITEM, descItem);
                    menuItem.put(TAG_PRIX, prix);


                    JSONArray listeRegroupement = c.getJSONArray(TAG_REGROUPEMENT);
                    String[] regroupement = new String[listeRegroupement.length()];

                    for (int j = 0; j < listeRegroupement.length(); j++) {
                        regroupement[j] = listeRegroupement.get(j).toString();
                    }

                    menuItem.put(TAG_REGROUPEMENT, regroupement.toString());

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
        menuList.clear();
        listDisp.clear();
        groups.clear();
        aController.clearProducts();
    }
}