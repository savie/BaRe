package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rh9 extends i5 {
    public static final Parcelable.Creator<rh9> CREATOR = new f9(17);
    public final wk9 a;
    public final wk9 b;

    public rh9(wk9 wk9Var, wk9 wk9Var2) {
        this.a = wk9Var;
        this.b = wk9Var2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof rh9)) {
            return false;
        }
        rh9 rh9Var = (rh9) obj;
        return x13.m(this.a, rh9Var.a) && x13.m(this.b, rh9Var.b);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, this.b});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        wk9 wk9Var = this.a;
        yc9.o0(parcel, 1, wk9Var == null ? null : wk9Var.o());
        wk9 wk9Var2 = this.b;
        yc9.o0(parcel, 2, wk9Var2 != null ? wk9Var2.o() : null);
        yc9.G0(parcel, iF0);
    }
}
