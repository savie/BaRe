package com.bare.intro;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.google.android.material.card.MaterialCardView;

public final class IntroBenefitCardView extends MaterialCardView {
    public IntroBenefitCardView(Context context) {
        this(context, null);
    }

    public IntroBenefitCardView(Context context, AttributeSet attrs) {
        super(context, attrs);
        setRadius(dp(16));
        setCardElevation(0);
        setStrokeWidth(dp(1));

        LinearLayout content = new LinearLayout(context);
        content.setOrientation(LinearLayout.VERTICAL);
        content.setGravity(android.view.Gravity.CENTER_HORIZONTAL);
        content.setPadding(dp(12), dp(16), dp(12), dp(16));

        TextView title = new TextView(context);
        title.setTextSize(16);
        title.setTextColor(Color.DKGRAY);
        title.setGravity(android.view.Gravity.CENTER);

        TextView subtitle = new TextView(context);
        subtitle.setTextSize(13);
        subtitle.setTextColor(Color.GRAY);
        subtitle.setGravity(android.view.Gravity.CENTER);
        subtitle.setPadding(0, dp(6), 0, 0);

        content.addView(title, new LinearLayout.LayoutParams(-1, -2));
        content.addView(subtitle, new LinearLayout.LayoutParams(-1, -2));
        addView(content);
    }

    private int dp(int value) {
        return Math.round(value * getResources().getDisplayMetrics().density);
    }
}
