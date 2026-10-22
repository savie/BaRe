package defpackage;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jf7 extends i5 {
    public static final Parcelable.Creator<jf7> CREATOR = new b90(9);
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final Uri e;
    public final String f;
    public final String k;
    public final String n;
    public final na6 p;

    public jf7(String str, String str2, String str3, String str4, Uri uri, String str5, String str6, String str7, na6 na6Var) {
        ly8.h(str);
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = uri;
        this.f = str5;
        this.k = str6;
        this.n = str7;
        this.p = na6Var;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof jf7)) {
            return false;
        }
        jf7 jf7Var = (jf7) obj;
        return x13.m(this.a, jf7Var.a) && x13.m(this.b, jf7Var.b) && x13.m(this.c, jf7Var.c) && x13.m(this.d, jf7Var.d) && x13.m(this.e, jf7Var.e) && x13.m(this.f, jf7Var.f) && x13.m(this.k, jf7Var.k) && x13.m(this.n, jf7Var.n) && x13.m(this.p, jf7Var.p);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, this.b, this.c, this.d, this.e, this.f, this.k, this.n, this.p});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.w0(parcel, 1, this.a);
        yc9.w0(parcel, 2, this.b);
        yc9.w0(parcel, 3, this.c);
        yc9.w0(parcel, 4, this.d);
        yc9.v0(parcel, 5, this.e, i);
        yc9.w0(parcel, 6, this.f);
        yc9.w0(parcel, 7, this.k);
        yc9.w0(parcel, 8, this.n);
        yc9.v0(parcel, 9, this.p, i);
        yc9.G0(parcel, iF0);
    }
}
