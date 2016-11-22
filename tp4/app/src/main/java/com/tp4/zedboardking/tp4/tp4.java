package com.tp4.zedboardking.tp4;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.content.Context;
import android.widget.Button;

public class tp4 extends Activity {

    private Button buttonTest1;
    private Button buttonTest2;
    private Button buttonTest3;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_tp4);
        addListenerOnButton();
    }

    public void addListenerOnButton(){

        final Context context = this;

        buttonTest1 = (Button) findViewById(R.id.buttonTest1);
        buttonTest2 = (Button) findViewById(R.id.buttonTest2);
        buttonTest3 = (Button) findViewById(R.id.buttonTest3);

        buttonTest1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v){
                Intent intent = new Intent(context, WebViewTest1.class);
                startActivity(intent);
            }
        });

        buttonTest2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(context, WebViewTest2.class);
                startActivity(intent);
            }
        });

        buttonTest3.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(context, WebViewTest3.class);
                startActivity(intent);
            }
        });
    }
}
