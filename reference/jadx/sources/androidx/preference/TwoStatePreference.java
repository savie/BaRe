package androidx.preference;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.AbsSavedState;
import android.view.View;
import android.widget.TextView;
import defpackage.tb8;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class TwoStatePreference extends Preference {
    public boolean f0;
    public CharSequence g0;
    public CharSequence h0;
    public boolean i0;
    public boolean j0;

    public TwoStatePreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0, 0);
    }

    @Override // androidx.preference.Preference
    public final boolean E() {
        boolean z = this.j0;
        boolean z2 = this.f0;
        if (!z) {
            z2 = !z2;
        }
        return z2 || super.E();
    }

    public final void G(boolean z) {
        boolean z2 = this.f0 != z;
        if (z2 || !this.i0) {
            this.f0 = z;
            this.i0 = true;
            if (F()) {
                boolean z3 = !z;
                boolean zF = F();
                String str = this.t;
                if (zF) {
                    z3 = this.b.b().getBoolean(str, z3);
                }
                if (z != z3) {
                    SharedPreferences.Editor editorA = this.b.a();
                    editorA.putBoolean(str, z);
                    if (!this.b.e) {
                        editorA.apply();
                    }
                }
            }
            if (z2) {
                i(E());
                h();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0030  */
    /* JADX WARN: Code duplicated, block: B:20:0x003a  */
    /* JADX WARN: Code duplicated, block: B:23:0x0041  */
    /* JADX WARN: Code duplicated, block: B:26:0x0049  */
    /* JADX WARN: Code duplicated, block: B:28:? A[RETURN, SYNTHETIC] */
    public final void H(View view) {
        boolean z;
        int i;
        CharSequence charSequenceF;
        if (view instanceof TextView) {
            TextView textView = (TextView) view;
            if (!this.f0 || TextUtils.isEmpty(this.g0)) {
                if (this.f0 || TextUtils.isEmpty(this.h0)) {
                    z = true;
                } else {
                    textView.setText(this.h0);
                }
                if (z) {
                    charSequenceF = f();
                    if (!TextUtils.isEmpty(charSequenceF)) {
                        textView.setText(charSequenceF);
                        z = false;
                    }
                }
                i = z ? 8 : 0;
                if (i != textView.getVisibility()) {
                    textView.setVisibility(i);
                }
            }
            textView.setText(this.g0);
            z = false;
            if (z) {
                charSequenceF = f();
                if (!TextUtils.isEmpty(charSequenceF)) {
                    textView.setText(charSequenceF);
                    z = false;
                }
            }
            if (z) {
            }
            if (i != textView.getVisibility()) {
                textView.setVisibility(i);
            }
        }
    }

    @Override // androidx.preference.Preference
    public final void o() {
        boolean z = !this.f0;
        if (a(Boolean.valueOf(z))) {
            G(z);
        }
    }

    @Override // androidx.preference.Preference
    public final Object r(TypedArray typedArray, int i) {
        return Boolean.valueOf(typedArray.getBoolean(i, false));
    }

    @Override // androidx.preference.Preference
    public final void s(Parcelable parcelable) {
        if (!parcelable.getClass().equals(tb8.class)) {
            super.s(parcelable);
            return;
        }
        tb8 tb8Var = (tb8) parcelable;
        super.s(tb8Var.getSuperState());
        G(tb8Var.a);
    }

    @Override // androidx.preference.Preference
    public final Parcelable t() {
        super.t();
        AbsSavedState absSavedState = AbsSavedState.EMPTY_STATE;
        if (this.J) {
            return absSavedState;
        }
        tb8 tb8Var = new tb8();
        tb8Var.a = this.f0;
        return tb8Var;
    }

    @Override // androidx.preference.Preference
    public final void u(Object obj) {
        if (obj == null) {
            obj = Boolean.FALSE;
        }
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        if (F()) {
            zBooleanValue = this.b.b().getBoolean(this.t, zBooleanValue);
        }
        G(zBooleanValue);
    }
}
