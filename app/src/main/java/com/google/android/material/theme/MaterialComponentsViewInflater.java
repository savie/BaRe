package com.google.android.material.theme;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.checkbox.MaterialCheckBox;
import com.google.android.material.radiobutton.MaterialRadioButton;
import defpackage.an;
import defpackage.bq;
import defpackage.cn;
import defpackage.en;
import defpackage.h95;
import defpackage.jm1;
import defpackage.k55;
import defpackage.so;
import defpackage.td6;
import defpackage.tp;
import defpackage.y75;
import defpackage.zm5;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class MaterialComponentsViewInflater extends bq {
    @Override // defpackage.bq
    public final an a(Context context, AttributeSet attributeSet) {
        return new y75(context, attributeSet);
    }

    @Override // defpackage.bq
    public final cn b(Context context, AttributeSet attributeSet) {
        return new MaterialButton(context, attributeSet);
    }

    @Override // defpackage.bq
    public final en c(Context context, AttributeSet attributeSet) {
        return new MaterialCheckBox(context, attributeSet);
    }

    @Override // defpackage.bq
    public final so d(Context context, AttributeSet attributeSet) {
        return new MaterialRadioButton(context, attributeSet);
    }

    @Override // defpackage.bq
    public final tp e(Context context, AttributeSet attributeSet) {
        h95 h95Var = new h95(zm5.J(context, attributeSet, R.attr.textViewStyle, 0), attributeSet, R.attr.textViewStyle);
        Context context2 = h95Var.getContext();
        if (jm1.Q(context2, org.swiftapps.swiftbackup.R.attr.textAppearanceLineHeightEnabled, true)) {
            Resources.Theme theme = context2.getTheme();
            int[] iArr = td6.H;
            TypedArray typedArrayObtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, iArr, R.attr.textViewStyle, 0);
            int[] iArr2 = {1, 2};
            int iO = -1;
            for (int i = 0; i < 2 && iO < 0; i++) {
                iO = k55.o(context2, typedArrayObtainStyledAttributes, iArr2[i], -1);
            }
            typedArrayObtainStyledAttributes.recycle();
            if (iO == -1) {
                TypedArray typedArrayObtainStyledAttributes2 = theme.obtainStyledAttributes(attributeSet, iArr, R.attr.textViewStyle, 0);
                int resourceId = typedArrayObtainStyledAttributes2.getResourceId(0, -1);
                typedArrayObtainStyledAttributes2.recycle();
                if (resourceId != -1) {
                    TypedArray typedArrayObtainStyledAttributes3 = theme.obtainStyledAttributes(resourceId, td6.G);
                    Context context3 = h95Var.getContext();
                    int[] iArr3 = {2, 4};
                    int iO2 = -1;
                    for (int i2 = 0; i2 < 2 && iO2 < 0; i2++) {
                        iO2 = k55.o(context3, typedArrayObtainStyledAttributes3, iArr3[i2], -1);
                    }
                    typedArrayObtainStyledAttributes3.recycle();
                    if (iO2 >= 0) {
                        h95Var.setLineHeight(iO2);
                    }
                }
            }
        }
        return h95Var;
    }
}
