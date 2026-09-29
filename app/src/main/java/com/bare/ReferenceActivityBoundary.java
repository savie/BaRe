package com.bare;

import android.graphics.Color;
import android.os.Bundle;
import android.view.Gravity;
import android.widget.LinearLayout;
import android.widget.TextView;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

public abstract class ReferenceActivityBoundary extends AppCompatActivity {
    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(buildP3Shell());
    }

    private android.view.View buildP3Shell() {
        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);

        Toolbar toolbar = new Toolbar(this);
        toolbar.setTitle(humanTitle(getClass().getSimpleName()));
        toolbar.setNavigationIcon(android.R.drawable.ic_menu_revert);
        toolbar.setNavigationOnClickListener(v -> finish());
        root.addView(toolbar, new LinearLayout.LayoutParams(-1, dp(56)));

        TextView body = new TextView(this);
        body.setText(com.bare.R.string.p3_activity_boundary);
        body.setTextSize(16);
        body.setTextColor(Color.GRAY);
        body.setGravity(Gravity.CENTER);
        body.setPadding(dp(24), dp(24), dp(24), dp(24));
        root.addView(body, new LinearLayout.LayoutParams(-1, 0, 1));

        return root;
    }

    private String humanTitle(String name) {
        if (name.endsWith("Activity")) name = name.substring(0, name.length() - "Activity".length());
        return name.replaceAll("([a-z])([A-Z])", "$1 $2");
    }

    private int dp(int value) {
        return Math.round(value * getResources().getDisplayMetrics().density);
    }
}
