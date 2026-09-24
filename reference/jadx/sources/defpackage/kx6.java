package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class kx6 extends i5 {
    public static final Parcelable.Creator<kx6> CREATOR = new m8(17);
    public final lf7 a;
    public final String b;
    public final int c;

    public kx6(lf7 lf7Var, String str, int i) {
        ly8.h(lf7Var);
        this.a = lf7Var;
        this.b = str;
        this.c = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof kx6)) {
            return false;
        }
        kx6 kx6Var = (kx6) obj;
        return x13.m(this.a, kx6Var.a) && x13.m(this.b, kx6Var.b) && this.c == kx6Var.c;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, this.b});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.v0(parcel, 1, this.a, i);
        yc9.w0(parcel, 2, this.b);
        yc9.D0(parcel, 3, 4);
        parcel.writeInt(this.c);
        yc9.G0(parcel, iF0);
    }
}
