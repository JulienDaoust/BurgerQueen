package zedboardking.burgerqueenapp;

/**
 * Created by JulienDaoust on 15-10-19.
 * Inspiration de ce tutoriel sur le web
 * Je l'ai adapté à mes besoin pour l'envoie du format JSON
 * http://mobilesiri.com/json-parsing-in-android-using-android-studio/
 */
import android.util.Base64;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.net.ssl.HttpsURLConnection;

public class WebRequest {

    public final static int GET = 1;
    public final static int POST = 2;
    public final static int DEL = 3;

    //Constructor with no parameter
    public WebRequest() {

    }

    /**
     * Making web service call
     *
     * @url - url to make request
     * @requestmethod - http request method
     */
    public String makeWebServiceCall(String url, int requestmethod) {
        return this.makeWebServiceCall(url, requestmethod, null, null, null);
    }

    /**
     * Making web service call
     *
     * @url - url to make request
     * @requestmethod - http request method
     * @params - params to send
     */
    public String makeWebServiceCall(String url, int requestmethod, String params) {
        return this.makeWebServiceCall(url, requestmethod, params, null, null);
    }

    /**
     * Making service call
     *
     * @url - url to make request
     * @requestmethod - http request method
     * @params - http request params
     */

    public String makeWebServiceCall(String urladdress, int requestmethod, String params, String userName, String password) {
        URL url;
        String response = "";
        try {
            url = new URL(urladdress);

            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setReadTimeout(15000);
            conn.setConnectTimeout(15000);
            conn.setDoInput(true);
            conn.setDoOutput(true);

            if (requestmethod == POST) {
                conn.setRequestMethod("POST");
            } else if (requestmethod == GET) {
                conn.setRequestMethod("GET");
            } else if(requestmethod == DEL) {
                conn.setRequestMethod("DELETE");
            }

            if(userName!=null && password!=null){
                if(!userName.isEmpty( )&& !password.isEmpty()){
                    String userCredentials = userName+":"+password;
                    String credBase64 = Base64.encodeToString(userCredentials.getBytes(), Base64.NO_WRAP);
                    String basicAuth = "Basic " + credBase64;
                    conn.setRequestProperty("Authorization", basicAuth);
                }
            }

            if (params != null) {
                OutputStream os = conn.getOutputStream();
                BufferedWriter writer = new BufferedWriter(
                        new OutputStreamWriter(os, "UTF-8"));

                writer.write(params);

                writer.flush();
                writer.close();
                os.close();
            }

            int responseCode = conn.getResponseCode();

            if (responseCode == HttpsURLConnection.HTTP_OK) {
                String line;
                BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
                while ((line = br.readLine()) != null) {
                    response += line;
                }
            } else {
                response = "";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return response;
    }
}