package com.bare.views;

import android.content.Context;
import android.util.AttributeSet;
import com.google.android.material.materialswitch.MaterialSwitch;

/** Reference-specific switch type with behavior intentionally left to the feature layer. */
public class BaReMaterialSwitch extends MaterialSwitch {
    public BaReMaterialSwitch(Context context) { super(context); }
    public BaReMaterialSwitch(Context context, AttributeSet attrs) { super(context, attrs); }
    public BaReMaterialSwitch(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }
}