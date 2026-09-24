package androidx.preference;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.AbsSavedState;
import defpackage.de6;
import defpackage.hi5;
import defpackage.x13;
import java.util.HashSet;
import java.util.Set;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class MultiSelectListPreference extends DialogPreference {
    public final CharSequence[] l0;
    public final CharSequence[] m0;
    public final HashSet n0;

    /* JADX WARN: Illegal instructions before constructor call */
    public MultiSelectListPreference(Context context, AttributeSet attributeSet) {
        int iQ = x13.q(context, R.attr.dialogPreferenceStyle, android.R.attr.dialogPreferenceStyle);
        super(context, attributeSet, iQ, 0);
        this.n0 = new HashSet();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, de6.f, iQ, 0);
        CharSequence[] textArray = typedArrayObtainStyledAttributes.getTextArray(2);
        this.l0 = textArray == null ? typedArrayObtainStyledAttributes.getTextArray(0) : textArray;
        CharSequence[] textArray2 = typedArrayObtainStyledAttributes.getTextArray(3);
        this.m0 = textArray2 == null ? typedArrayObtainStyledAttributes.getTextArray(1) : textArray2;
        typedArrayObtainStyledAttributes.recycle();
    }

    public final void G(Set set) {
        HashSet hashSet = this.n0;
        hashSet.clear();
        hashSet.addAll(set);
        if (F()) {
            boolean zF = F();
            String str = this.t;
            if (!set.equals(zF ? this.b.b().getStringSet(str, null) : null)) {
                SharedPreferences.Editor editorA = this.b.a();
                editorA.putStringSet(str, set);
                if (!this.b.e) {
                    editorA.apply();
                }
            }
        }
        h();
    }

    @Override // androidx.preference.Preference
    public final Object r(TypedArray typedArray, int i) {
        CharSequence[] textArray = typedArray.getTextArray(i);
        HashSet hashSet = new HashSet();
        for (CharSequence charSequence : textArray) {
            hashSet.add(charSequence.toString());
        }
        return hashSet;
    }

    @Override // androidx.preference.Preference
    public final void s(Parcelable parcelable) {
        if (!parcelable.getClass().equals(hi5.class)) {
            super.s(parcelable);
            return;
        }
        hi5 hi5Var = (hi5) parcelable;
        super.s(hi5Var.getSuperState());
        G(hi5Var.a);
    }

    @Override // androidx.preference.Preference
    public final Parcelable t() {
        super.t();
        AbsSavedState absSavedState = AbsSavedState.EMPTY_STATE;
        if (this.J) {
            return absSavedState;
        }
        hi5 hi5Var = new hi5();
        hi5Var.a = this.n0;
        return hi5Var;
    }

    @Override // androidx.preference.Preference
    public final void u(Object obj) {
        Set<String> stringSet = (Set) obj;
        if (F()) {
            stringSet = this.b.b().getStringSet(this.t, stringSet);
        }
        G(stringSet);
    }
}
