package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.AbsSavedState;
import defpackage.de6;
import defpackage.ly4;
import defpackage.q34;
import defpackage.v36;
import defpackage.x13;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ListPreference extends DialogPreference {
    public final CharSequence[] l0;
    public final CharSequence[] m0;
    public String n0;
    public String o0;
    public boolean p0;

    public ListPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, 0);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, de6.e, i, 0);
        CharSequence[] textArray = typedArrayObtainStyledAttributes.getTextArray(2);
        this.l0 = textArray == null ? typedArrayObtainStyledAttributes.getTextArray(0) : textArray;
        CharSequence[] textArray2 = typedArrayObtainStyledAttributes.getTextArray(3);
        this.m0 = textArray2 == null ? typedArrayObtainStyledAttributes.getTextArray(1) : textArray2;
        if (typedArrayObtainStyledAttributes.getBoolean(4, typedArrayObtainStyledAttributes.getBoolean(4, false))) {
            if (q34.k == null) {
                q34.k = new q34(9);
            }
            this.d0 = q34.k;
            h();
        }
        typedArrayObtainStyledAttributes.recycle();
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, de6.g, i, 0);
        String string = typedArrayObtainStyledAttributes2.getString(33);
        this.o0 = string == null ? typedArrayObtainStyledAttributes2.getString(7) : string;
        typedArrayObtainStyledAttributes2.recycle();
    }

    @Override // androidx.preference.Preference
    public final void B(CharSequence charSequence) {
        super.B(charSequence);
        if (charSequence == null) {
            this.o0 = null;
        } else {
            this.o0 = ((String) charSequence).toString();
        }
    }

    public final int G(String str) {
        CharSequence[] charSequenceArr;
        if (str == null || (charSequenceArr = this.m0) == null) {
            return -1;
        }
        for (int length = charSequenceArr.length - 1; length >= 0; length--) {
            if (TextUtils.equals(charSequenceArr[length].toString(), str)) {
                return length;
            }
        }
        return -1;
    }

    public final void H(String str) {
        boolean zEquals = TextUtils.equals(this.n0, str);
        if (zEquals && this.p0) {
            return;
        }
        this.n0 = str;
        this.p0 = true;
        x(str);
        if (zEquals) {
            return;
        }
        h();
    }

    @Override // androidx.preference.Preference
    public final CharSequence f() {
        CharSequence[] charSequenceArr;
        v36 v36Var = this.d0;
        if (v36Var != null) {
            return v36Var.j(this);
        }
        int iG = G(this.n0);
        CharSequence charSequence = (iG < 0 || (charSequenceArr = this.l0) == null) ? null : charSequenceArr[iG];
        CharSequence charSequenceF = super.f();
        String str = this.o0;
        if (str != null) {
            if (charSequence == null) {
                charSequence = "";
            }
            String str2 = String.format(str, charSequence);
            if (!TextUtils.equals(str2, charSequenceF)) {
                Log.w("ListPreference", "Setting a summary with a String formatting marker is no longer supported. You should use a SummaryProvider instead.");
                return str2;
            }
        }
        return charSequenceF;
    }

    @Override // androidx.preference.Preference
    public final Object r(TypedArray typedArray, int i) {
        return typedArray.getString(i);
    }

    @Override // androidx.preference.Preference
    public final void s(Parcelable parcelable) {
        if (!parcelable.getClass().equals(ly4.class)) {
            super.s(parcelable);
            return;
        }
        ly4 ly4Var = (ly4) parcelable;
        super.s(ly4Var.getSuperState());
        H(ly4Var.a);
    }

    @Override // androidx.preference.Preference
    public final Parcelable t() {
        super.t();
        AbsSavedState absSavedState = AbsSavedState.EMPTY_STATE;
        if (this.J) {
            return absSavedState;
        }
        ly4 ly4Var = new ly4();
        ly4Var.a = this.n0;
        return ly4Var;
    }

    @Override // androidx.preference.Preference
    public final void u(Object obj) {
        H(e((String) obj));
    }

    public ListPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, x13.q(context, R.attr.dialogPreferenceStyle, android.R.attr.dialogPreferenceStyle), 0);
    }
}
