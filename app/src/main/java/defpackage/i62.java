package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class i62 {
    public final String a;
    public final List b;
    public final String c;
    public final String d;
    public final List e;

    public i62(String str, List list, String str2, String str3, List list2) {
        str.getClass();
        list.getClass();
        this.a = str;
        this.b = list;
        this.c = str2;
        this.d = str3;
        this.e = list2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i62)) {
            return false;
        }
        i62 i62Var = (i62) obj;
        return pe4.d(this.a, i62Var.a) && pe4.d(this.b, i62Var.b) && pe4.d(this.c, i62Var.c) && pe4.d(this.d, i62Var.d) && this.e.equals(i62Var.e);
    }

    public final int hashCode() {
        int i = fz5.i(this.b, this.a.hashCode() * 31, 31);
        String str = this.c;
        int iHashCode = (i + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.d;
        return this.e.hashCode() + ((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("S3EndpointResolutionIssueData(host=");
        sb.append(this.a);
        sb.append(", addresses=");
        sb.append(this.b);
        sb.append(", privateDnsMode=");
        xs1.t(sb, this.c, ", privateDnsSpecifier=", this.d, ", networkDnsServers=");
        return dj7.o(sb, this.e, ")");
    }
}
