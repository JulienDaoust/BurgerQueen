package zedboardking.burgerqueenapp;

/**
 * Created by JulienDaoust on 15-10-13.
 * Cette classe affiche la facture finale et retourne au menu après 3 secondes
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
        TextView subTotalTV = (TextView) findViewById(R.id.subTotalTV);
        TextView tpsTV = (TextView) findViewById(R.id.tpsTV);
        TextView tvqTV = (TextView) findViewById(R.id.tvqTV);
        TextView totalTV = (TextView) findViewById(R.id.totalTV);

        double subTotal = 0;
        double tps = 0.05;
        double tvq = 0.09975;
        double total = 0;

        final Controller aController = (Controller) getApplicationContext();
        final Button backToMenuButton = (Button) findViewById(R.id.buttonBackMenu);
        final Button quitButton = (Button) findViewById(R.id.buttonQuit);

        int cartSize = aController.getCart().getCartSize();

        String showString = "";

        if (cartSize > 0) {
            for (int i = 0; i < cartSize; i++) {
                String pId = aController.getCart().getProducts(i).getProductID();
                String pPrice = aController.getCart().getProducts(i).getProductPrice();
                String pDesc = aController.getCart().getProducts(i).getProductDesc();
                String pOpt = aController.getCart().getProducts(i).getProductOption();
                String pNumb = aController.getCart().getProducts(i).getProductNumber();

                if (pOpt.matches("")) {
                    showString += "\n\nNom Produit : " + pId + "\n" +
                            "Prix : " + pPrice + " $" + "\n" +
                            "Description : " + pDesc + "" + "\n" +
                            "Nombre : " + pNumb + "" + "\n" +
                            "\n -------------------------------------------";
                } else {
                    showString += "\n\nNom Produit : " + pId + "\n" +
                            "Prix : " + pPrice + " $" + "\n" +
                            "Description : " + pDesc + "" + "\n" +
                            "Nombre : " + pNumb + "" + "\n" +
                            "Option : " + pOpt + "" + "\n" +
                            "\n -------------------------------------------";
                }

                subTotal += Double.parseDouble(pPrice)*Double.parseDouble(pNumb);
            }
        }
        showCartContent.setText(showString);

        total += subTotal + (tps*subTotal) + (tvq*subTotal);

        subTotalTV.setText(formatDecimal(subTotal)+" $");
        tpsTV.setText(formatDecimal(tps*subTotal)+" $");
        tvqTV.setText(formatDecimal(tvq*subTotal)+" $");
        totalTV.setText(formatDecimal(total)+" $");


        //Bouton backToMenu
        backToMenuButton.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {

                Intent openMainActivity = new Intent(getBaseContext(), ViewCostumerMenu.class);
                openMainActivity.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TASK);
                startActivity(openMainActivity);
                aController.getCart().clearCart();

            }
        });

        //Bouton QuitToMainPage
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

    public String formatDecimal(double number) {
        float epsilon = 0.004f; // 4 tenths of a cent
        if (Math.abs(Math.round(number) - number) < epsilon) {
            return String.format("%10.0f", number); // sdb
        } else {
            return String.format("%10.2f", number); // dj_segfault
        }
    }
}