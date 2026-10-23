package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fd4 {
    public final String a;
    public final String b;
    public final ArrayList c;

    public fd4(String str, String str2, ArrayList arrayList) {
        str.getClass();
        str2.getClass();
        this.a = str;
        this.b = str2;
        this.c = arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fd4)) {
            return false;
        }
        fd4 fd4Var = (fd4) obj;
        return pe4.d(this.a, fd4Var.a) && pe4.d(this.b, fd4Var.b) && this.c.equals(fd4Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + fz5.g(this.a.hashCode() * 31, 31, this.b);
    }

    public final String toString() {
        StringBuilder sbP = u48.p("Request(installerPackage=", this.a, ", packageName=", this.b, ", apkFiles=");
        sbP.append(this.c);
        sbP.append(")");
        return sbP.toString();
    }
}
