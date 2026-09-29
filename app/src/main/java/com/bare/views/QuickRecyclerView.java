package com.bare.views;

import android.content.Context;
import android.util.AttributeSet;
import androidx.recyclerview.widget.RecyclerView;

/**
 * Reference-shaped RecyclerView. Nested-scroll/fixed-size behavior is retained;
 * feature-specific adapters and layout-manager behavior remain in their owning screen.
 */
public class QuickRecyclerView extends RecyclerView {
    public QuickRecyclerView(Context context) { super(context); init(); }
    public QuickRecyclerView(Context context, AttributeSet attrs) { super(context, attrs); init(); }
    public QuickRecyclerView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr); init();
    }
    private void init() {
        setHasFixedSize(true);
        setOverScrollMode(OVER_SCROLL_NEVER);
        setNestedScrollingEnabled(false);
    }
}