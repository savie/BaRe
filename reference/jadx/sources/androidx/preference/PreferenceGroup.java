package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.AbsSavedState;
import defpackage.c6;
import defpackage.d46;
import defpackage.de6;
import defpackage.dg7;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class PreferenceGroup extends Preference {
    public final dg7 f0;
    public final ArrayList g0;
    public boolean h0;
    public int i0;
    public boolean j0;
    public int k0;

    public PreferenceGroup(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.f0 = new dg7(0);
        new Handler(Looper.getMainLooper());
        this.h0 = true;
        this.i0 = 0;
        this.j0 = false;
        this.k0 = Integer.MAX_VALUE;
        this.g0 = new ArrayList();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, de6.i, i, i2);
        this.h0 = typedArrayObtainStyledAttributes.getBoolean(2, typedArrayObtainStyledAttributes.getBoolean(2, true));
        if (typedArrayObtainStyledAttributes.hasValue(1)) {
            int i3 = typedArrayObtainStyledAttributes.getInt(1, typedArrayObtainStyledAttributes.getInt(1, Integer.MAX_VALUE));
            if (i3 != Integer.MAX_VALUE && TextUtils.isEmpty(this.t)) {
                Log.e("PreferenceGroup", getClass().getSimpleName().concat(" should have a key defined if it contains an expandable preference"));
            }
            this.k0 = i3;
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public final Preference G(CharSequence charSequence) {
        Preference preferenceG;
        if (charSequence == null) {
            c6.f("Key cannot be null");
            return null;
        }
        if (TextUtils.equals(this.t, charSequence)) {
            return this;
        }
        int size = this.g0.size();
        for (int i = 0; i < size; i++) {
            Preference preferenceH = H(i);
            if (TextUtils.equals(preferenceH.t, charSequence)) {
                return preferenceH;
            }
            if ((preferenceH instanceof PreferenceGroup) && (preferenceG = ((PreferenceGroup) preferenceH).G(charSequence)) != null) {
                return preferenceG;
            }
        }
        return null;
    }

    public final Preference H(int i) {
        return (Preference) this.g0.get(i);
    }

    @Override // androidx.preference.Preference
    public final void b(Bundle bundle) {
        super.b(bundle);
        int size = this.g0.size();
        for (int i = 0; i < size; i++) {
            H(i).b(bundle);
        }
    }

    @Override // androidx.preference.Preference
    public final void c(Bundle bundle) {
        super.c(bundle);
        int size = this.g0.size();
        for (int i = 0; i < size; i++) {
            H(i).c(bundle);
        }
    }

    @Override // androidx.preference.Preference
    public final void i(boolean z) {
        super.i(z);
        int size = this.g0.size();
        for (int i = 0; i < size; i++) {
            Preference preferenceH = H(i);
            if (preferenceH.N == z) {
                preferenceH.N = !z;
                preferenceH.i(preferenceH.E());
                preferenceH.h();
            }
        }
    }

    @Override // androidx.preference.Preference
    public final void j() {
        super.j();
        this.j0 = true;
        int size = this.g0.size();
        for (int i = 0; i < size; i++) {
            H(i).j();
        }
    }

    @Override // androidx.preference.Preference
    public final void p() {
        super.p();
        this.j0 = false;
        int size = this.g0.size();
        for (int i = 0; i < size; i++) {
            H(i).p();
        }
    }

    @Override // androidx.preference.Preference
    public final void s(Parcelable parcelable) {
        if (!parcelable.getClass().equals(d46.class)) {
            super.s(parcelable);
            return;
        }
        d46 d46Var = (d46) parcelable;
        this.k0 = d46Var.a;
        super.s(d46Var.getSuperState());
    }

    @Override // androidx.preference.Preference
    public final Parcelable t() {
        super.t();
        AbsSavedState absSavedState = AbsSavedState.EMPTY_STATE;
        return new d46(this.k0);
    }

    public PreferenceGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0);
    }
}
