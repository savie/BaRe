package com.bare.intro;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.Gravity;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;

public final class IntroPermissionCardView extends MaterialCardView {
    private final TextView title;
    private final TextView subtitle;
    private final MaterialButton action;

    public IntroPermissionCardView(Context context) {
        this(context, null);
    }

    public IntroPermissionCardView(Context context, AttributeSet attrs) {
        super(context, attrs);
        setRadius(dp(16));
        setCardElevation(0);
        setStrokeWidth(dp(1));

        LinearLayout content = new LinearLayout(context);
        content.setOrientation(LinearLayout.VERTICAL);
        content.setPadding(dp(16), dp(16), dp(16), dp(12));

        title = new TextView(context);
        title.setTextSize(18);
        title.setTextColor(Color.DKGRAY);

        subtitle = new TextView(context);
        subtitle.setTextSize(14);
        subtitle.setTextColor(Color.GRAY);
        subtitle.setPadding(0, dp(6), 0, dp(8));

        action = new MaterialButton(context);
        action.setMinHeight(dp(48));

        content.addView(title, new LinearLayout.LayoutParams(-1, -2));
        content.addView(subtitle, new LinearLayout.LayoutParams(-1, -2));
        content.addView(action, new LinearLayout.LayoutParams(-1, -2));
        addView(content);
    }

    public TextView getTitleView() { return title; }
    public TextView getSubtitleView() { return subtitle; }
    public MaterialButton getActionButton() { return action; }

    private int dp(int value) {
        return Math.round(value * getResources().getDisplayMetrics().density);
    }
}
