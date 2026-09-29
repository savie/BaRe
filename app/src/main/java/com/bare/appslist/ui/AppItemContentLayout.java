package com.bare.appslist.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;

/**
 * Reference-shaped app-row content boundary.
 * Exact custom measurement is intentionally deferred until the Reference
 * provider/data contract is reconstructed.
 */
public class AppItemContentLayout extends FrameLayout {
    public AppItemContentLayout(Context context) { super(context); }
    public AppItemContentLayout(Context context, AttributeSet attrs) { super(context, attrs); }
    public AppItemContentLayout(Context context, AttributeSet attrs, int defStyleAttr) { super(context, attrs, defStyleAttr); }
}
