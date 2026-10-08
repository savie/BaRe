package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class h69 extends i5 {
    public static final Parcelable.Creator<h69> CREATOR = new gk(6);
    public final wk9 a;
    public final wk9 b;
    public final wk9 c;
    public final int d;

    public h69(wk9 wk9Var, wk9 wk9Var2, wk9 wk9Var3, int i) {
        this.a = wk9Var;
        this.b = wk9Var2;
        this.c = wk9Var3;
        this.d = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof h69)) {
            return false;
        }
        h69 h69Var = (h69) obj;
        return x13.m(this.a, h69Var.a) && x13.m(this.b, h69Var.b) && x13.m(this.c, h69Var.c) && this.d == h69Var.d;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, this.b, this.c, Integer.valueOf(this.d)});
    }

    public final String toString() {
        wk9 wk9Var = this.a;
        String strT = cy0.t(wk9Var == null ? null : wk9Var.o());
        wk9 wk9Var2 = this.b;
        String strT2 = cy0.t(wk9Var2 == null ? null : wk9Var2.o());
        wk9 wk9Var3 = this.c;
        String strT3 = cy0.t(wk9Var3 != null ? wk9Var3.o() : null);
        StringBuilder sbP = u48.p("HmacSecretExtension{coseKeyAgreement=", strT, ", saltEnc=", strT2, ", saltAuth=");
        sbP.append(strT3);
        sbP.append(", getPinUvAuthProtocol=");
        return xs1.m(sbP, this.d, "}");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        wk9 wk9Var = this.a;
        yc9.o0(parcel, 1, wk9Var == null ? null : wk9Var.o());
        wk9 wk9Var2 = this.b;
        yc9.o0(parcel, 2, wk9Var2 == null ? null : wk9Var2.o());
        wk9 wk9Var3 = this.c;
        yc9.o0(parcel, 3, wk9Var3 != null ? wk9Var3.o() : null);
        yc9.D0(parcel, 4, 4);
        parcel.writeInt(this.d);
        yc9.G0(parcel, iF0);
    }
}
