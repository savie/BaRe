package com.bare.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;

/**
 * Reference-shaped fast-scroll boundary.
 * The Reference fast-scroll provider is not yet ported; this class preserves
 * the layout/component boundary without inventing provider behavior.
 */
public class FastScroller extends View {
    public FastScroller(Context context) { super(context); }
    public FastScroller(Context context, AttributeSet attrs) { super(context, attrs); }
    public FastScroller(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }
}
