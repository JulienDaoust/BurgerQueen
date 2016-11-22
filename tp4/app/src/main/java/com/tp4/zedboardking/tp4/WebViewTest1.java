package com.tp4.zedboardking.tp4;

/**
 * Created by JulienDaoust on 15-09-22.
 */
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.app.Activity;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;

public class WebViewTest1 extends Activity {


    private Button buttonBack;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.webviewlayout);

        WebView myWebView = (WebView) findViewById(R.id.webView1);
        myWebView.loadUrl("http://132.207.89.25/test1");

        WebSettings webSettings = myWebView.getSettings();
        webSettings.setJavaScriptEnabled(true);

        myWebView.setWebViewClient(new WebViewClient());
        addListenerOnButton();

    }

    public void addListenerOnButton() {

        final Context context = this;

        buttonBack = (Button) findViewById(R.id.buttonBack);

        buttonBack.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(context, tp4.class);
                startActivity(intent);
            }
        });
    }
}
