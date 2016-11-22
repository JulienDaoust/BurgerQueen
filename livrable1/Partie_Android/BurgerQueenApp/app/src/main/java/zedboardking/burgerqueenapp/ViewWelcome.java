package zedboardking.burgerqueenapp;

/**
 * Created by Wassim on 27/10/2015.
 */

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.app.Activity;
import android.widget.Toast;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.HashMap;


public class ViewWelcome extends Activity {

    private ArrayList<HashMap<String, String>> menuList;
    private static final String TAG_MODE = "mode";
    private Button sub;
    private String repServer;
    private String code;
    private JSONObject obj;
    private static String url = "http://132.207.89.26/debut";
    //private static String url = "http://juliendaoust.olympe.in/debut2.txt";
    private int checkJson = 0;


    @Override
    protected void onCreate(Bundle savedInstanceState) {

        super.onCreate(savedInstanceState);
        setContentView(R.layout.viewwelcome);
        butListener();
    }

    public void butListener() {

        sub = (Button) findViewById(R.id.submit);
        sub.setOnClickListener(new View.OnClickListener() {


            @Override
            public void onClick(View v) {

                EditText codeText = (EditText) findViewById(R.id.code);
                code = codeText.getText().toString();

                obj = new JSONObject();

                try {
                    obj.put("code", code);
                } catch (JSONException e) {
                    e.printStackTrace();
                }

                System.out.print("JSON: " + obj);

                new Code().execute();

            }
        });
    }

    private class Code extends AsyncTask<Void, Void, Void> {

        // Hashmap for ListView
        ProgressDialog pDialog;

        @Override
        protected void onPreExecute() {
            super.onPreExecute();
            // Showing progress dialog
            pDialog = new ProgressDialog(ViewWelcome.this);
            pDialog.setMessage("Envoie du code...");
            pDialog.setCancelable(false);
            pDialog.show();
        }

        @Override
        protected Void doInBackground(Void... arg0) {
            // Creating service handler class instance
            WebRequest webreqGet = new WebRequest();

            // Making a request to url and getting response
            repServer = webreqGet.makeWebServiceCall(url, WebRequest.POST, obj.toString());

            menuList = ParseJSON(repServer);

            Log.d("Response: ", "> " + repServer);

            return null;
        }

        @Override
        protected void onPostExecute(Void result) {
            super.onPostExecute(result);
            // Dismiss the progress dialog
            if (pDialog.isShowing())
                pDialog.dismiss();

            if(checkJson == 1){
                if (Integer.parseInt(menuList.get(0).get(TAG_MODE)) == 222) {
                    Intent i = new Intent(getBaseContext(), NewOrders.class);
                    startActivity(i);
                } else if (Integer.parseInt(menuList.get(0).get(TAG_MODE)) == 111) {
                    Intent i = new Intent(getBaseContext(), ViewCostumerMenu.class);
                    startActivity(i);
                }
            }

            Log.d("TAG", "Appel on post execute");
        }
    }

    private ArrayList<HashMap<String, String>> ParseJSON(String json) {
        if (json != null) {
            try {

                // Hashmap for ListView
                ArrayList<HashMap<String, String>> listDisp = new ArrayList<HashMap<String, String>>();

                JSONObject jsonObj = new JSONObject(json);

                // tmp hashmap for single entete item
                HashMap<String, String> hashMode = new HashMap<String, String>();

                // Entete
                String mode = jsonObj.getString(TAG_MODE);

                if(mode.matches("111") || (mode.matches("222")))
                {
                    hashMode.put(TAG_MODE, mode);
                    checkJson = 1;
                }
                else
                {
                    hashMode.put(TAG_MODE, mode);
                    Toast.makeText(getApplicationContext(),
                            "Svp entrer un code valide!",
                            Toast.LENGTH_LONG).show();
                    checkJson = 0;
                }

                // adding item to list
                listDisp.add(hashMode);
                return listDisp;

            } catch (JSONException e) {
                e.printStackTrace();
                return null;
            }
        } else {
            Log.e("ServiceHandler", "pas de code recu");
            return null;
        }
    }
}