package zedboardking.burgerqueenapp;

/**
 * Created by JulienDaoust on 15-10-13.
 */
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import java.util.Timer;
import java.util.TimerTask;

public class ViewCheckout extends Activity {

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.viewcheckout_layout);

        TextView showCartContent = (TextView) findViewById(R.id.showCart);

        final Controller aController = (Controller) getApplicationContext();
        final Button backToMenuButton = (Button) findViewById(R.id.buttonBackMenu);
        final Button quitButton = (Button) findViewById(R.id.buttonQuit);

        int cartSize = aController.getCart().getCartSize();

        String showString = "";

        for (int i = 0; i < cartSize; i++) {

            String pId = aController.getCart().getProducts(i).getProductID();
            String pPrice = aController.getCart().getProducts(i).getProductPrice();
            String pDesc = aController.getCart().getProducts(i).getProductDesc();

            showString += "\n\nProduit : " + pId + "\n" +
                    "Prix : " + pPrice + "\n" +
                    "Description : " + pDesc + "" +
                    "\n -----------------------------------";
        }

        showCartContent.setText(showString);

        backToMenuButton.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {

                Intent openMainActivity = new Intent(getBaseContext(), ViewCostumerMenu.class);
                openMainActivity.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TASK);
                startActivity(openMainActivity);
                aController.getCart().clearCart();

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

        new Timer().schedule(
                new TimerTask() {
                    @Override
                    public void run() {
                        Intent quit = new Intent(getBaseContext(), ViewWelcome.class);
                        quit.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TASK);
                        startActivity(quit);
                        aController.getCart().clearCart();
                    }
                },
                3000
        );
    }
}