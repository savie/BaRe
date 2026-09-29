package com.bare.views;

import android.content.Context;
import android.util.AttributeSet;
import com.google.android.material.materialswitch.MaterialSwitch;

/** Reference-specific switch type with behavior intentionally left to the feature layer. */
public class SwiftBackupMaterialSwitch extends MaterialSwitch {
    public SwiftBackupMaterialSwitch(Context context) { super(context); }
    public SwiftBackupMaterialSwitch(Context context, AttributeSet attrs) { super(context, attrs); }
    public SwiftBackupMaterialSwitch(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }
}