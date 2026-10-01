package com.bare.views;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;

/** Reference-shaped segment container; segment regrouping behavior remains a parity boundary. */
public class BaReSegmentLinearLayout extends LinearLayout {
    public BaReSegmentLinearLayout(Context context) { super(context); }
    public BaReSegmentLinearLayout(Context context, AttributeSet attrs) { super(context, attrs); }
    public BaReSegmentLinearLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }
}