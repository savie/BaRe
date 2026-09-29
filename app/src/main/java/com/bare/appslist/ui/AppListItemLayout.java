package com.bare.appslist.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;

/**
 * Reference-shaped row container. Reveal choreography remains a P3 boundary;
 * backup/restore semantics are not implemented here.
 */
public class AppListItemLayout extends FrameLayout {
    public AppListItemLayout(Context context) { super(context); init(); }
    public AppListItemLayout(Context context, AttributeSet attrs) { super(context, attrs); init(); }
    public AppListItemLayout(Context context, AttributeSet attrs, int defStyleAttr) { super(context, attrs, defStyleAttr); init(); }

    private void init() {
        setClipChildren(false);
        setClipToPadding(false);
    }

    public void h(View reveal, boolean open) {
        if (reveal == null) return;
        reveal.setVisibility(open ? VISIBLE : GONE);
    }
}
