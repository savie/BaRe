package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.AbsSavedState;
import defpackage.de6;
import defpackage.sl4;
import defpackage.vs2;
import defpackage.x13;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class EditTextPreference extends DialogPreference {
    public String l0;

    /* JADX WARN: Illegal instructions before constructor call */
    public EditTextPreference(Context context, AttributeSet attributeSet) {
        int iQ = x13.q(context, R.attr.editTextPreferenceStyle, android.R.attr.editTextPreferenceStyle);
        super(context, attributeSet, iQ, 0);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, de6.d, iQ, 0);
        if (typedArrayObtainStyledAttributes.getBoolean(0, typedArrayObtainStyledAttributes.getBoolean(0, false))) {
            if (sl4.k == null) {
                sl4.k = new sl4();
            }
            this.d0 = sl4.k;
            h();
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // androidx.preference.Preference
    public final boolean E() {
        return TextUtils.isEmpty(this.l0) || super.E();
    }

    public final void G(String str) {
        boolean zE = E();
        this.l0 = str;
        x(str);
        boolean zE2 = E();
        if (zE2 != zE) {
            i(zE2);
        }
        h();
    }

    @Override // androidx.preference.Preference
    public final Object r(TypedArray typedArray, int i) {
        return typedArray.getString(i);
    }

    @Override // androidx.preference.Preference
    public final void s(Parcelable parcelable) {
        if (!parcelable.getClass().equals(vs2.class)) {
            super.s(parcelable);
            return;
        }
        vs2 vs2Var = (vs2) parcelable;
        super.s(vs2Var.getSuperState());
        G(vs2Var.a);
    }

    @Override // androidx.preference.Preference
    public final Parcelable t() {
        super.t();
        AbsSavedState absSavedState = AbsSavedState.EMPTY_STATE;
        if (this.J) {
            return absSavedState;
        }
        vs2 vs2Var = new vs2();
        vs2Var.a = this.l0;
        return vs2Var;
    }

    @Override // androidx.preference.Preference
    public final void u(Object obj) {
        G(e((String) obj));
    }
}
