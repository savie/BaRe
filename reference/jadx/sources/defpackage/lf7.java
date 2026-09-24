package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lf7 extends i5 {
    public static final Parcelable.Creator<lf7> CREATOR = new m10(9);
    public final String a;
    public final String b;

    public lf7(String str, String str2) {
        ly8.i(str, "Account identifier cannot be null");
        String strTrim = str.trim();
        ly8.f(strTrim, "Account identifier cannot be empty");
        this.a = strTrim;
        ly8.e(str2);
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof lf7)) {
            return false;
        }
        lf7 lf7Var = (lf7) obj;
        return x13.m(this.a, lf7Var.a) && x13.m(this.b, lf7Var.b);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, this.b});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.w0(parcel, 1, this.a);
        yc9.w0(parcel, 2, this.b);
        yc9.G0(parcel, iF0);
    }
}
