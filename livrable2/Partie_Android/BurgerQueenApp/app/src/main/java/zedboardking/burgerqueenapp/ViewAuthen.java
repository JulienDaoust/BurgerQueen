package zedboardking.burgerqueenapp;

import android.app.Activity;
import android.app.ProgressDialog;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

import org.json.JSONException;
import org.json.JSONObject;

/**
 * Created by Wassim on 26/11/2015.
 */
public class ViewAuthen extends Activity{


    private static String url = "http://132.207.89.27/ ";
    private String repServer;
    Button authen;
    private String dataNom;
    private String dataMotPasse;
    private JSONObject obj;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.authentification);
        butListener();
    }


    public void butListener() {

        authen = (Button) findViewById(R.id.submitAuthen);
        authen.setOnClickListener(new View.OnClickListener() {


            @Override
            public void onClick(View v) {

                EditText txtNom = (EditText) findViewById(R.id.nomUtil);
                EditText txtMotPasse = (EditText) findViewById(R.id.nomUtil);
                dataNom = txtNom.getText().toString();
                dataMotPasse = txtMotPasse.getText().toString();

                obj = new JSONObject();

                try {
                    obj.put("Nom", dataNom);
                    obj.put("Mot de passe", dataMotPasse);

                } catch (JSONException e) {
                    e.printStackTrace();
                }

                System.out.print("JSON: " + obj);
                new authentification().execute();
            }
        });
    }


    private class authentification extends AsyncTask<Void, Void, Void> {

        // Hashmap for ListView
        ProgressDialog pDialog;

        @Override
        protected void onPreExecute() {
            super.onPreExecute();
            // Showing progress dialog
            pDialog = new ProgressDialog(ViewAuthen.this);
            pDialog.setMessage("Envoie de donnees...");
            pDialog.setCancelable(false);
            pDialog.show();
        }

        @Override
        protected Void doInBackground(Void... arg0) {
            // Creating service handler class instance
            WebRequest webreqGet = new WebRequest();

            // Making a request to url and getting response
            repServer = webreqGet.makeWebServiceCall(url + " ", WebRequest.POST, obj.toString());



            Log.d("Response: ", "> " + repServer);
            return null;
        }

        @Override
        protected void onPostExecute(Void result) {
            super.onPostExecute(result);
            // Dismiss the progress dialog
            if (pDialog.isShowing())
                pDialog.dismiss();

            Log.d("Authen", "Authentification");
        }

    }


}
