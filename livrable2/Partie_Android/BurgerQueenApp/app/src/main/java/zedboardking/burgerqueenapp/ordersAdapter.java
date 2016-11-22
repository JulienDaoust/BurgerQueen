package zedboardking.burgerqueenapp;


import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.AsyncTask;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.TextView;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.List;

/**
 * Created by Wassim on 05/11/2015.
 * Adaptateur pour la liste des commandes
 */

class Order
{
    String name;
    String numCommande;

    public Order(String name, String numCommande){

        super();
        this.name= name;
        this.numCommande = numCommande;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public String getNumCommande() {
        return numCommande;
    }
}

public class ordersAdapter extends ArrayAdapter<Order> {

    private List<Order> orderList;
    private Order o;
    private String numCommandeDel;
    private JSONObject obj;
    private Context context;
    private static String url = "http://132.207.89.27/commandes/:";
    private static String url2 = "http://132.207.89.27/commandes/alerte/:";


    public ordersAdapter(List<Order> orderList, Context context) {
        super(context, R.layout.view_neworders, orderList);
        this.orderList = orderList;
        this.context = context;
    }

    private static class orderHolder {

        public TextView orderName;
        public Button checkbox;
        public Button alertBut;
    }

    /**
     * Fonction pour prendre la vue et l'afficher
     * @param pos
     * @param cv
     * @param parent
     * @return
     */
    @Override
    public View getView(int pos, View cv, ViewGroup parent) {

        View v = cv;

        orderHolder holder = new orderHolder();

        if (cv == null) {

            o = orderList.get(pos);
            LayoutInflater inflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
            v = inflater.inflate(R.layout.view_neworders, null);

            holder.orderName = (TextView) v.findViewById(R.id.name);

            holder.checkbox = (Button) v.findViewById(R.id.checkbox);
            holder.checkbox.setOnClickListener(new View.OnClickListener() {

                @Override
                public void onClick(View v) {
                    numCommandeDel = o.getNumCommande();
                    AlertDialog.Builder build = new AlertDialog.Builder(context);
                    build.setTitle("Supprimer cette commande?");
                    build.setMessage("Êtes vous certain?");
                    build.setIcon(android.R.drawable.ic_dialog_alert);
                    final int pos = (int) v.getTag();
                    build.setPositiveButton("Oui", new DialogInterface.OnClickListener() {
                        public void onClick(DialogInterface dialog, int which) {
                           // orderList.remove(pos);
                            new DeleteItem().execute();
                            ordersAdapter.this.notifyDataSetChanged();

                        }
                    });
                    build.setNegativeButton("Non", null);
                    build.show();
                }
            });

            holder.alertBut = (Button) v.findViewById(R.id.alertBut);
            holder.alertBut.setOnClickListener(new View.OnClickListener() {

                @Override
                public void onClick(View v) {

                    numCommandeDel = o.getNumCommande();

                    obj = new JSONObject();

                    try {
                        obj.put("message", "Attention a la commande #" + numCommandeDel );
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }

                    System.out.print("JSON: " + obj);

                    new alert().execute();
                }
            });
        }

        else
        {
            holder.orderName = (TextView) v.findViewById(R.id.name);
            holder.checkbox = (Button) v.findViewById(R.id.checkbox);
            holder.alertBut = (Button) v.findViewById(R.id.alertBut);
        }

        holder.checkbox.setTag(pos);
        holder.alertBut.setTag(pos);
        holder.orderName.setText(o.getName());

        return v;
    }

    /**
     * Fonction pour effacer une commande
     */
    private class DeleteItem extends AsyncTask<Void, Void, Void> {

        // Hashmap for ListView

        @Override
        protected void onPreExecute() {
            super.onPreExecute();
            // Showing progress dialog
        }

        @Override
        protected Void doInBackground(Void ... args0) {
            // Creating service handler class instance
            WebRequest webreq = new WebRequest();
            // Making a request to url and getting response
            webreq.makeWebServiceCall(url+numCommandeDel, WebRequest.DEL);

            return null;
        }

        @Override
        protected void onPostExecute(Void result) {
            super.onPostExecute(result);
            // Dismiss the progress dialog

            Log.d("TAG", "Appel delete");
        }
    }

    /**
     * Fonction pour envoyer une alerte pour une commande
     */
    private class alert extends AsyncTask<Void, Void, Void> {

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
            webreqGet.makeWebServiceCall(url2+numCommandeDel, WebRequest.POST, obj.toString());
            return null;
        }

        @Override
        protected void onPostExecute(Void result) {
            super.onPostExecute(result);
            // Dismiss the progress dialog
        }
    }
}