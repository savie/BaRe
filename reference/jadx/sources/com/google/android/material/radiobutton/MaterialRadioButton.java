package com.google.android.material.radiobutton;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableWrapper;
import android.graphics.drawable.RippleDrawable;
import android.util.AttributeSet;
import defpackage.jd4;
import defpackage.jm1;
import defpackage.k55;
import defpackage.so;
import defpackage.td6;
import defpackage.z85;
import defpackage.zm5;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class MaterialRadioButton extends so {
    public static final int[][] k = {new int[]{R.attr.state_enabled, R.attr.state_checked}, new int[]{R.attr.state_enabled, -16842912}, new int[]{-16842910, R.attr.state_checked}, new int[]{-16842910, -16842912}};
    public ColorStateList e;
    public boolean f;

    public MaterialRadioButton(Context context, AttributeSet attributeSet, int i) {
        super(zm5.J(context, attributeSet, i, org.swiftapps.swiftbackup.R.style.Widget_MaterialComponents_CompoundButton_RadioButton), attributeSet, i);
        Context context2 = getContext();
        TypedArray typedArrayB = jd4.B(context2, attributeSet, td6.C, i, org.swiftapps.swiftbackup.R.style.Widget_MaterialComponents_CompoundButton_RadioButton, new int[0]);
        if (typedArrayB.hasValue(0)) {
            setButtonTintList(k55.m(context2, typedArrayB, 0));
        }
        if (typedArrayB.hasValue(1)) {
            setRippleColor(k55.m(context2, typedArrayB, 1));
        }
        this.f = typedArrayB.getBoolean(2, false);
        typedArrayB.recycle();
    }

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.e == null) {
            int iC = z85.C(getContext(), jm1.U(this, org.swiftapps.swiftbackup.R.attr.colorControlActivated));
            int iC2 = z85.C(getContext(), jm1.U(this, org.swiftapps.swiftbackup.R.attr.colorOnSurface));
            int iC3 = z85.C(getContext(), jm1.U(this, org.swiftapps.swiftbackup.R.attr.colorSurface));
            this.e = new ColorStateList(k, new int[]{z85.x(1.0f, iC3, iC), z85.x(0.54f, iC3, iC2), z85.x(0.38f, iC3, iC2), z85.x(0.38f, iC3, iC2)});
        }
        return this.e;
    }

    private void setRippleColor(ColorStateList colorStateList) {
        if (colorStateList == null) {
            return;
        }
        Drawable background = getBackground();
        if (background instanceof DrawableWrapper) {
            background = ((DrawableWrapper) background).getDrawable();
        }
        if (background instanceof RippleDrawable) {
            ((RippleDrawable) background).setColor(colorStateList);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f && getButtonTintList() == null) {
            setUseMaterialThemeColors(true);
        }
    }

    public void setUseMaterialThemeColors(boolean z) {
        this.f = z;
        if (z) {
            setButtonTintList(getMaterialThemeColorsTintList());
        } else {
            setButtonTintList(null);
        }
    }

    public MaterialRadioButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, org.swiftapps.swiftbackup.R.attr.radioButtonStyle);
    }

    public MaterialRadioButton(Context context) {
        this(context, null);
    }
}
