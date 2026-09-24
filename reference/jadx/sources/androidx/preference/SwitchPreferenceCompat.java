package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Checkable;
import androidx.appcompat.widget.SwitchCompat;
import defpackage.de6;
import defpackage.hu7;
import defpackage.k46;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class SwitchPreferenceCompat extends TwoStatePreference {
    public final hu7 k0;
    public final String l0;
    public final String m0;

    public SwitchPreferenceCompat(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, 0);
        this.k0 = new hu7(this);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, de6.m, i, 0);
        String string = typedArrayObtainStyledAttributes.getString(7);
        this.g0 = string == null ? typedArrayObtainStyledAttributes.getString(0) : string;
        if (this.f0) {
            h();
        }
        String string2 = typedArrayObtainStyledAttributes.getString(6);
        this.h0 = string2 == null ? typedArrayObtainStyledAttributes.getString(1) : string2;
        if (!this.f0) {
            h();
        }
        String string3 = typedArrayObtainStyledAttributes.getString(9);
        this.l0 = string3 == null ? typedArrayObtainStyledAttributes.getString(3) : string3;
        h();
        String string4 = typedArrayObtainStyledAttributes.getString(8);
        this.m0 = string4 == null ? typedArrayObtainStyledAttributes.getString(4) : string4;
        h();
        this.j0 = typedArrayObtainStyledAttributes.getBoolean(5, typedArrayObtainStyledAttributes.getBoolean(2, false));
        typedArrayObtainStyledAttributes.recycle();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void I(View view) {
        boolean z = view instanceof SwitchCompat;
        if (z) {
            ((SwitchCompat) view).setOnCheckedChangeListener(null);
        }
        if (view instanceof Checkable) {
            ((Checkable) view).setChecked(this.f0);
        }
        if (z) {
            SwitchCompat switchCompat = (SwitchCompat) view;
            switchCompat.setTextOn(this.l0);
            switchCompat.setTextOff(this.m0);
            switchCompat.setOnCheckedChangeListener(this.k0);
        }
    }

    @Override // androidx.preference.Preference
    public void l(k46 k46Var) {
        super.l(k46Var);
        I(k46Var.r(R.id.switchWidget));
        H(k46Var.r(android.R.id.summary));
    }

    @Override // androidx.preference.Preference
    public final void w(View view) {
        super.w(view);
        if (((AccessibilityManager) this.a.getSystemService("accessibility")).isEnabled()) {
            I(view.findViewById(R.id.switchWidget));
            H(view.findViewById(android.R.id.summary));
        }
    }

    public SwitchPreferenceCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.switchPreferenceCompatStyle, 0);
    }
}
