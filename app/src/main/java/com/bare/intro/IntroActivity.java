package com.bare.intro;

import android.app.Activity;
import android.os.Bundle;
import android.graphics.Color;
import android.view.Gravity;
import android.widget.TextView;

public final class IntroActivity extends Activity {
    @Override
    protected void onCreate(Bundle state) {
        super.onCreate(state);

        TextView root = new TextView(this);
        root.setText("BΛR☰\nReference Reconstruction");
        root.setTextSize(24);
        root.setTextColor(Color.WHITE);
        root.setGravity(Gravity.CENTER);
        root.setBackgroundColor(Color.rgb(18, 18, 18));
        setContentView(root);
    }
}
