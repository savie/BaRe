package com.bare.views;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;

/**
 * Reference-shaped segmented card container.
 * Advanced segment styling remains a parity boundary until its rendering behavior is ported.
 */
public class BaReSegmentedCardGroup extends LinearLayout {
    public BaReSegmentedCardGroup(Context context) { super(context); init(); }
    public BaReSegmentedCardGroup(Context context, AttributeSet attrs) { super(context, attrs); init(); }
    public BaReSegmentedCardGroup(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr); init();
    }
    private void init() {
        setOrientation(VERTICAL);
        setClipChildren(false);
        setClipToPadding(false);
    }
}