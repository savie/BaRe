package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lj7 {
    public final String a;
    public final String b;
    public final String c;
    public final List d;
    public final ArrayList e;
    public final long f;
    public final mt3 g;

    public lj7(String str, String str2, String str3, List list, ArrayList arrayList, long j, mt3 mt3Var) {
        str.getClass();
        str3.getClass();
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = list;
        this.e = arrayList;
        this.f = j;
        this.g = mt3Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof lj7)) {
            return false;
        }
        lj7 lj7Var = (lj7) obj;
        return pe4.d(this.a, lj7Var.a) && pe4.d(this.b, lj7Var.b) && pe4.d(this.c, lj7Var.c) && pe4.d(this.d, lj7Var.d) && pe4.d(this.e, lj7Var.e) && this.f == lj7Var.f && pe4.d(this.g, lj7Var.g);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        return this.g.hashCode() + xs1.f(this.f, (this.e.hashCode() + fz5.i(this.d, fz5.g((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.c), 31)) * 31, 31);
    }

    public final String toString() {
        StringBuilder sbP = u48.p("Request(packageName=", this.a, ", installerPackage=", this.b, ", user=");
        sbP.append(this.c);
        sbP.append(", apkFiles=");
        sbP.append(this.d);
        sbP.append(", installFiles=");
        sbP.append(this.e);
        sbP.append(", commitWeightBytes=");
        sbP.append(this.f);
        sbP.append(", progressListener=");
        sbP.append(this.g);
        sbP.append(")");
        return sbP.toString();
    }
}
