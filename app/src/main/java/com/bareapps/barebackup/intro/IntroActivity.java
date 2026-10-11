package com.bareapps.barebackup.intro;

import android.app.Activity;
import android.os.Bundle;
import android.view.Gravity;
import android.widget.TextView;

public final class IntroActivity extends Activity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        TextView message = new TextView(this);
        message.setText("BΛR☰");
        message.setTextSize(24);
        message.setGravity(Gravity.CENTER);
        setContentView(message);
    }
}
