package com.bare.views;

import android.content.Context;
import android.util.AttributeSet;
import androidx.constraintlayout.widget.ConstraintLayout;

/** Reference-shaped segment container; segment regrouping behavior remains a parity boundary. */
public class BaReSegmentConstraintLayout extends ConstraintLayout {
    public BaReSegmentConstraintLayout(Context context) { super(context); }
    public BaReSegmentConstraintLayout(Context context, AttributeSet attrs) { super(context, attrs); }
    public BaReSegmentConstraintLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }
}