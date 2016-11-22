package com.zedboardking.burgerqueen;

/**
 * Created by JulienDaoust on 15-10-13.
 */
import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;

public class ThirdScreen extends Activity {

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.thirdscreen);

        TextView showCartContent    = (TextView) findViewById(R.id.showCart);

        final Controller aController = (Controller) getApplicationContext();

        int cartSize = aController.getCart().getCartSize();

        String showString = "";

        for(int i=0;i<cartSize;i++)
        {

            String pName     = aController.getCart().getProducts(i).getProductName();
            int pPrice       = aController.getCart().getProducts(i).getProductPrice();
            String pDisc       = aController.getCart().getProducts(i).getProductDesc();

            showString += "\n\nProduct Name : "+pName+"\n"+
                    "Price : "+pPrice+"\n"+
                    "Discription : "+pDisc+""+
                    "\n -----------------------------------";
        }

        showCartContent.setText(showString);

    }


}