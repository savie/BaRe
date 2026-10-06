package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qd7 {
    public final ArrayList a;
    public final boolean b;
    public final String c;
    public final String d;
    public final boolean e;
    public final long f;
    public final mt3 g;

    public qd7(ArrayList arrayList, boolean z, String str, String str2, long j, ev evVar, int i) {
        mp6 mp6Var = mp6.a;
        boolean zG = mp6.g();
        j = (i & 32) != 0 ? 0L : j;
        mt3 dqVar = (i & 64) != 0 ? new dq(12) : evVar;
        str.getClass();
        this.a = arrayList;
        this.b = z;
        this.c = str;
        this.d = str2;
        this.e = zG;
        this.f = j;
        this.g = dqVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof qd7)) {
            return false;
        }
        qd7 qd7Var = (qd7) obj;
        return pe4.d(this.a, qd7Var.a) && this.b == qd7Var.b && pe4.d(this.c, qd7Var.c) && pe4.d(this.d, qd7Var.d) && this.e == qd7Var.e && this.f == qd7Var.f && pe4.d(this.g, qd7Var.g);
    }

    public final int hashCode() {
        int iG = fz5.g(fz5.h(this.a.hashCode() * 31, 31, this.b), 31, this.c);
        String str = this.d;
        return this.g.hashCode() + xs1.f(this.f, fz5.h((iG + (str == null ? 0 : str.hashCode())) * 31, 31, this.e), 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Request(installFiles=");
        sb.append(this.a);
        sb.append(", grantPermissions=");
        sb.append(this.b);
        sb.append(", user=");
        xs1.t(sb, this.c, ", installerPackage=", this.d, ", copyToShizukuAccessibleDir=");
        sb.append(this.e);
        sb.append(", commitWeightBytes=");
        sb.append(this.f);
        sb.append(", progressListener=");
        sb.append(this.g);
        sb.append(")");
        return sb.toString();
    }
}
