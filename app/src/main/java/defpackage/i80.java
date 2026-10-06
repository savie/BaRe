package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class i80 extends i5 {
    public static final Parcelable.Creator<i80> CREATOR = new mk(16);
    public final d63 a;
    public final uu9 b;
    public final ih8 c;
    public final x1a d;
    public final y39 e;
    public final q49 f;
    public final vw9 k;
    public final s59 n;
    public final d14 p;
    public final a79 q;
    public final c99 r;
    public final h69 t;

    public i80(d63 d63Var, uu9 uu9Var, ih8 ih8Var, x1a x1aVar, y39 y39Var, q49 q49Var, vw9 vw9Var, s59 s59Var, d14 d14Var, a79 a79Var, c99 c99Var, h69 h69Var) {
        this.a = d63Var;
        this.c = ih8Var;
        this.b = uu9Var;
        this.d = x1aVar;
        this.e = y39Var;
        this.f = q49Var;
        this.k = vw9Var;
        this.n = s59Var;
        this.p = d14Var;
        this.q = a79Var;
        this.r = c99Var;
        this.t = h69Var;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof i80)) {
            return false;
        }
        i80 i80Var = (i80) obj;
        return x13.m(this.a, i80Var.a) && x13.m(this.b, i80Var.b) && x13.m(this.c, i80Var.c) && x13.m(this.d, i80Var.d) && x13.m(this.e, i80Var.e) && x13.m(this.f, i80Var.f) && x13.m(this.k, i80Var.k) && x13.m(this.n, i80Var.n) && x13.m(this.p, i80Var.p) && x13.m(this.q, i80Var.q) && x13.m(this.r, i80Var.r) && x13.m(this.t, i80Var.t);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, this.b, this.c, this.d, this.e, this.f, this.k, this.n, this.p, this.q, this.r, this.t});
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.a);
        String strValueOf2 = String.valueOf(this.b);
        String strValueOf3 = String.valueOf(this.c);
        String strValueOf4 = String.valueOf(this.d);
        String strValueOf5 = String.valueOf(this.e);
        String strValueOf6 = String.valueOf(this.f);
        String strValueOf7 = String.valueOf(this.k);
        String strValueOf8 = String.valueOf(this.n);
        String strValueOf9 = String.valueOf(this.p);
        String strValueOf10 = String.valueOf(this.q);
        String strValueOf11 = String.valueOf(this.r);
        StringBuilder sbP = u48.p("AuthenticationExtensions{\n fidoAppIdExtension=", strValueOf, ", \n cableAuthenticationExtension=", strValueOf2, ", \n userVerificationMethodExtension=");
        xs1.t(sbP, strValueOf3, ", \n googleMultiAssertionExtension=", strValueOf4, ", \n googleSessionIdExtension=");
        xs1.t(sbP, strValueOf5, ", \n googleSilentVerificationExtension=", strValueOf6, ", \n devicePublicKeyExtension=");
        xs1.t(sbP, strValueOf7, ", \n googleTunnelServerIdExtension=", strValueOf8, ", \n googleThirdPartyPaymentExtension=");
        xs1.t(sbP, strValueOf9, ", \n prfExtension=", strValueOf10, ", \n simpleTransactionAuthorizationExtension=");
        return dj7.n(sbP, strValueOf11, "}");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iF0 = yc9.F0(parcel, 20293);
        yc9.v0(parcel, 2, this.a, i);
        yc9.v0(parcel, 3, this.b, i);
        yc9.v0(parcel, 4, this.c, i);
        yc9.v0(parcel, 5, this.d, i);
        yc9.v0(parcel, 6, this.e, i);
        yc9.v0(parcel, 7, this.f, i);
        yc9.v0(parcel, 8, this.k, i);
        yc9.v0(parcel, 9, this.n, i);
        yc9.v0(parcel, 10, this.p, i);
        yc9.v0(parcel, 11, this.q, i);
        yc9.v0(parcel, 12, this.r, i);
        yc9.v0(parcel, 13, this.t, i);
        yc9.G0(parcel, iF0);
    }
}
