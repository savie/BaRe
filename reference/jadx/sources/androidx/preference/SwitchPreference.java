package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Checkable;
import android.widget.Switch;
import defpackage.de6;
import defpackage.gu7;
import defpackage.k46;
import defpackage.x13;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class SwitchPreference extends TwoStatePreference {
    public final gu7 k0;
    public final String l0;
    public final String m0;

    /* JADX WARN: Illegal instructions before constructor call */
    public SwitchPreference(Context context, AttributeSet attributeSet) {
        int iQ = x13.q(context, R.attr.switchPreferenceStyle, android.R.attr.switchPreferenceStyle);
        super(context, attributeSet, iQ, 0);
        this.k0 = new gu7(this);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, de6.l, iQ, 0);
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
        boolean z = view instanceof Switch;
        if (z) {
            ((Switch) view).setOnCheckedChangeListener(null);
        }
        if (view instanceof Checkable) {
            ((Checkable) view).setChecked(this.f0);
        }
        if (z) {
            Switch r4 = (Switch) view;
            r4.setTextOn(this.l0);
            r4.setTextOff(this.m0);
            r4.setOnCheckedChangeListener(this.k0);
        }
    }

    @Override // androidx.preference.Preference
    public final void l(k46 k46Var) {
        super.l(k46Var);
        I(k46Var.r(android.R.id.switch_widget));
        H(k46Var.r(android.R.id.summary));
    }

    @Override // androidx.preference.Preference
    public final void w(View view) {
        super.w(view);
        if (((AccessibilityManager) this.a.getSystemService("accessibility")).isEnabled()) {
            I(view.findViewById(android.R.id.switch_widget));
            H(view.findViewById(android.R.id.summary));
        }
    }
}
