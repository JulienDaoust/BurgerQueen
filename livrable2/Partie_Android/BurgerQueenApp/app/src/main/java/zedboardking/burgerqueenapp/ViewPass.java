package zedboardking.burgerqueenapp;

import android.app.Activity;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Base64;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

import org.json.JSONException;
import org.json.JSONObject;


/**
 * Created by Wassim on 29/11/2015.
 * classe pour gerer le changement de mot de passe
 */
public class ViewPass extends Activity{

    private Button pass;
    private String data;
    private String UName1;
    private String MPasseAnc;
    private String MPasseNew;
    private String MPassNewB64;
    private JSONObject obj;
    private static String url = "http://132.207.89.27/compte/motdepasse/";
    private String repServer;


    @Override
    protected void onCreate(Bundle savedInstanceState) {

        super.onCreate(savedInstanceState);
        setContentView(R.layout.changer_pass);
        butListener();
    }

    /**
     * Fonction pour gerer le click du bouton quand on change le mot de passe
     */
    public void butListener() {

        pass = (Button) findViewById(R.id.submitPass);
        pass.setOnClickListener(new View.OnClickListener() {

            @Override
            public void onClick(View v) {

                EditText usernameTxt = (EditText) findViewById(R.id.userName1);
                EditText ancienpassTxt = (EditText) findViewById(R.id.motdepasseAnc);
                EditText newpassTxt = (EditText) findViewById(R.id.motdepasseNew);
                UName1 = usernameTxt.getText().toString();
                MPasseAnc = ancienpassTxt.getText().toString();
                MPasseNew = newpassTxt.getText().toString();
                MPassNewB64 = Base64.encodeToString(MPasseNew.getBytes(),Base64.DEFAULT);
                //data = passText.getText().toString();
                obj = new JSONObject();

                try {
                    obj.put("Nom", UName1);
                    obj.put("Mot de passe", MPasseAnc);
                    obj.put("nouveauMotDePasse", MPassNewB64);
                } catch (JSONException e) {
                    e.printStackTrace();
                }

                System.out.print("JSON_motDePasse: " + obj);
                new Pass().execute();
//                if(repServer.equals("HTTP 200 OK")) {
//                    Toast.makeText(getApplicationContext(),
//                            "Mot de passe est changé!",
//                            Toast.LENGTH_LONG).show();
//                }
//                else
//                {
//                    Toast.makeText(getApplicationContext(),
//                            "Action non authorisée!",
//                            Toast.LENGTH_LONG).show();
//                }
            }
        });
    }


    /**
     * Fonction qui gere le changement du mot de passe
     */
    private class Pass extends AsyncTask<Void, Void, Void> {

        // Hashmap for ListView

        @Override
        protected void onPreExecute() {
            super.onPreExecute();
            // Showing progress dialog
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
        }
    }
}