package androidx.preference;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Checkable;
import android.widget.CompoundButton;
import defpackage.de6;
import defpackage.k46;
import defpackage.t51;
import defpackage.x13;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class CheckBoxPreference extends TwoStatePreference {
    public final t51 k0;

    public CheckBoxPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.k0 = new t51(this);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, de6.b, i, i2);
        String string = typedArrayObtainStyledAttributes.getString(5);
        this.g0 = string == null ? typedArrayObtainStyledAttributes.getString(0) : string;
        if (this.f0) {
            h();
        }
        String string2 = typedArrayObtainStyledAttributes.getString(4);
        this.h0 = string2 == null ? typedArrayObtainStyledAttributes.getString(1) : string2;
        if (!this.f0) {
            h();
        }
        this.j0 = typedArrayObtainStyledAttributes.getBoolean(3, typedArrayObtainStyledAttributes.getBoolean(2, false));
        typedArrayObtainStyledAttributes.recycle();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void I(View view) {
        boolean z = view instanceof CompoundButton;
        if (z) {
            ((CompoundButton) view).setOnCheckedChangeListener(null);
        }
        if (view instanceof Checkable) {
            ((Checkable) view).setChecked(this.f0);
        }
        if (z) {
            ((CompoundButton) view).setOnCheckedChangeListener(this.k0);
        }
    }

    @Override // androidx.preference.Preference
    public final void l(k46 k46Var) {
        super.l(k46Var);
        I(k46Var.r(R.id.checkbox));
        H(k46Var.r(R.id.summary));
    }

    @Override // androidx.preference.Preference
    public final void w(View view) {
        super.w(view);
        if (((AccessibilityManager) this.a.getSystemService("accessibility")).isEnabled()) {
            I(view.findViewById(R.id.checkbox));
            H(view.findViewById(R.id.summary));
        }
    }

    public CheckBoxPreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public CheckBoxPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, x13.q(context, org.swiftapps.swiftbackup.R.attr.checkBoxPreferenceStyle, R.attr.checkBoxPreferenceStyle));
    }

    public CheckBoxPreference(Context context) {
        this(context, null);
    }
}
