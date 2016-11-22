package zedboardking.burgerqueenapp;


import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.TextView;


import java.util.List;

/**
 * Created by Wassim on 05/11/2015.
 */

class Order
{
    String name;
    int number;
    boolean selected= false;

    public Order(String name){

        super();
        this.name= name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public int getNumber() {
        return number;
    }

    public void setSelected(boolean selected) {
        this.selected = selected;
    }

    public boolean isSelected() {
        return selected;
    }
}

public class ordersAdapter extends ArrayAdapter<Order> {

    private List<Order> orderList;
    private Context context;

    public ordersAdapter(List<Order> orderList, Context context) {
        super(context, R.layout.view_neworders, orderList);
        this.orderList = orderList;
        this.context = context;
    }

    private static class orderHolder {

        public TextView orderName;
        public TextView orderNum;
        public Button checkbox;
    }

    @Override
    public View getView(int pos, View cv, ViewGroup parent) {

        View v = cv;

        orderHolder holder = new orderHolder();

        if (cv == null) {

            LayoutInflater inflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
            v = inflater.inflate(R.layout.view_neworders, null);

            holder.orderName = (TextView) v.findViewById(R.id.name);
            holder.checkbox = (Button) v.findViewById(R.id.checkbox);

            holder.checkbox.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {

                    AlertDialog.Builder build = new AlertDialog.Builder(context);

                    build.setTitle("Supprimer cette commande?");
                    build.setMessage("Êtes vous certain?");
                    build.setIcon(android.R.drawable.ic_dialog_alert);
                    final int pos = (int) v.getTag();
                    build.setPositiveButton("Oui", new DialogInterface.OnClickListener() {
                        public void onClick(DialogInterface dialog, int which) {
                            orderList.remove(pos);
                            ordersAdapter.this.notifyDataSetChanged();
                        }
                    });

                    build.setNegativeButton("Non", null);
                    build.show();
                }
            });

        }
        else
        {
            holder.orderName = (TextView) v.findViewById(R.id.name);
            holder.checkbox = (Button) v.findViewById(R.id.checkbox);
        }
        holder.checkbox.setTag(pos);
        Order o = orderList.get(pos);
        holder.orderName.setText(o.getName());

        return v;
    }
}

