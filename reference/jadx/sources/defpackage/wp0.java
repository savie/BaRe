package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wp0 extends i5 {
    public static final Parcelable.Creator<wp0> CREATOR = new f9(7);
    public final vp0 a;
    public final sp0 b;
    public final String c;
    public final boolean d;
    public final int e;
    public final up0 f;
    public final tp0 k;
    public final boolean n;

    public wp0(vp0 vp0Var, sp0 sp0Var, String str, boolean z, int i, up0 up0Var, tp0 tp0Var, boolean z2) {
        ly8.h(vp0Var);
        this.a = vp0Var;
        ly8.h(sp0Var);
        this.b = sp0Var;
        this.c = str;
        this.d = z;
        this.e = i;
        this.f = up0Var == null ? new up0(false, null, null) : up0Var;
        this.k = tp0Var == null ? new tp0(null, false) : tp0Var;
        this.n = z2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof wp0)) {
            return false;
        }
        wp0 wp0Var = (wp0) obj;
        return x13.m(this.a, wp0Var.a) && x13.m(this.b, wp0Var.b) && x13.m(this.f, wp0Var.f) && x13.m(this.k, wp0Var.k) && x13.m(this.c, wp0Var.c) && this.d == wp0Var.d && this.e == wp0Var.e && this.n == wp0Var.n;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, this.b, this.f, this.k, this.c, Boolean.valueOf(this.d), Integer.valueOf(this.e), Boolean.valueOf(this.n)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.v0(parcel, 1, this.a, i);
        yc9.v0(parcel, 2, this.b, i);
        yc9.w0(parcel, 3, this.c);
        yc9.D0(parcel, 4, 4);
        parcel.writeInt(this.d ? 1 : 0);
        yc9.D0(parcel, 5, 4);
        parcel.writeInt(this.e);
        yc9.v0(parcel, 6, this.f, i);
        yc9.v0(parcel, 7, this.k, i);
        yc9.D0(parcel, 8, 4);
        parcel.writeInt(this.n ? 1 : 0);
        yc9.G0(parcel, iF0);
    }
}
