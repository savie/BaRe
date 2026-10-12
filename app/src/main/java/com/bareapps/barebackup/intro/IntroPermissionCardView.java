package com.bareapps.barebackup.intro;

import android.content.Context;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.ViewGroup;
import android.widget.LinearLayout;

import com.bareapps.barebackup.R;

/** Reference-style vertical permission card; actions remain UI-only placeholders. */
public final class IntroPermissionCardView extends LinearLayout {
    public IntroPermissionCardView(Context context) {
        super(context);
        initialize(context);
    }

    public IntroPermissionCardView(Context context, AttributeSet attrs) {
        super(context, attrs);
        initialize(context);
    }

    public IntroPermissionCardView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        initialize(context);
    }

    private void initialize(Context context) {
        setOrientation(VERTICAL);
        setGravity(Gravity.CENTER_VERTICAL);
        int horizontal = dp(context, 16);
        int vertical = dp(context, 16);
        setPadding(horizontal, vertical, horizontal, vertical);
        setBackgroundResource(R.drawable.intro_card_background);
        ViewGroup.LayoutParams params = getLayoutParams();
        if (params instanceof MarginLayoutParams) {
            ((MarginLayoutParams) params).width = ViewGroup.LayoutParams.MATCH_PARENT;
        }
    }

    private static int dp(Context context, int value) {
        return Math.round(value * context.getResources().getDisplayMetrics().density);
    }
}