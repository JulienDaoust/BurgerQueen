package zedboardking.burgerqueenapp;

/**
 * Created by JulienDaoust on 15-11-09.
 * Cette classe gère la liste qui contient une autre liste
 */

import android.app.Activity;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.Button;
import android.widget.CheckedTextView;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

public class MyExpandableListAdapter extends BaseExpandableListAdapter {

    private final SparseArray<Group> groups;
    public LayoutInflater inflater;
    public Activity activity;

    public MyExpandableListAdapter(Activity act, SparseArray<Group> groups) {
        activity = act;
        this.groups = groups;
        inflater = act.getLayoutInflater();
    }

    @Override
    public Object getChild(int groupPosition, int childPosition) {
        return groups.get(groupPosition).children.get(childPosition);
    }

    @Override
    public long getChildId(int groupPosition, int childPosition) {
        return 0;
    }


    @Override
    public View getChildView(final int groupPosition, final int childPosition,
                             boolean isLastChild, View convertView, ViewGroup parent) {

        final Group.cartProduct children = (Group.cartProduct) getChild(groupPosition, childPosition);

        if (convertView == null) {
            convertView = inflater.inflate(R.layout.listrow_details, null);
        }

        String descChild = children.id+"\n"+children.desc+"\n"+children.prix+"$";
        TextView viewChild = (TextView) convertView.findViewById(R.id.textView1);

        viewChild.setText(descChild);

        convertView.setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                Toast.makeText(activity, (CharSequence) children.id,
                        Toast.LENGTH_SHORT).show();
            }
        });

        Button addToCart;
        addToCart = (Button) convertView.findViewById(R.id.buttonPanier);
        addToCart.setTag(childPosition);

        final View finalConvertView = convertView;
        addToCart.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                //Clicked button index

                EditText quantiteEditText = (EditText) finalConvertView.findViewById(R.id.quantEditText);
                String quantite = quantiteEditText.getText().toString();

                EditText optionEditText = (EditText) finalConvertView.findViewById(R.id.optionEditText);
                String option = optionEditText.getText().toString();

                if (quantite.matches("")) {
                    Toast.makeText(activity, "Veuillez entrer une quantité!",
                            Toast.LENGTH_LONG).show();
                }
                else{
                    Log.i("TAG", "index :" + children.index);
                    int qt = Integer.parseInt(quantite);
                        if (option.matches("")) {
                            children.aController.getCart().setProducts(children.aController.getProducts(children.index));
                            children.aController.getProducts(children.index).getProductNumber(quantite);
                        } else {
                            children.aController.getProducts(children.index).getProductNumber(quantite);
                            children.aController.getProducts(children.index).setProductOption(option);
                            children.aController.getCart().setProducts(children.aController.getProducts(children.index));
                        }
                    Toast.makeText(activity, quantite + " Produit(s) ajouté au panier !",
                            Toast.LENGTH_LONG).show();
                }
                quantiteEditText.setText("");
                optionEditText.setText("");
            }
        });
        return convertView;
    }

    @Override
    public int getChildrenCount(int groupPosition) {
        return groups.get(groupPosition).children.size();
    }

    @Override
    public Object getGroup(int groupPosition) {
        return groups.get(groupPosition);
    }

    @Override
    public int getGroupCount() {
        return groups.size();
    }

    @Override
    public void onGroupCollapsed(int groupPosition) {
        super.onGroupCollapsed(groupPosition);
    }

    @Override
    public void onGroupExpanded(int groupPosition) {
        super.onGroupExpanded(groupPosition);
    }

    @Override
    public long getGroupId(int groupPosition) {
        return 0;
    }

    @Override
    public View getGroupView(int groupPosition, boolean isExpanded,
                             View convertView, ViewGroup parent) {
        if (convertView == null) {
            convertView = inflater.inflate(R.layout.listrow_group, null);
        }
        Group group = (Group) getGroup(groupPosition);
        ((CheckedTextView) convertView).setText(group.name);
        ((CheckedTextView) convertView).setChecked(isExpanded);
        return convertView;
    }

    @Override
    public boolean hasStableIds() {
        return false;
    }

    @Override
    public boolean isChildSelectable(int groupPosition, int childPosition) {
        return false;
    }
}