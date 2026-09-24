package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ab5 {
    public final List a;
    public final long b;
    public final String c;

    public ab5(List list, long j, String str) {
        this.a = list;
        this.b = j;
        this.c = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ab5)) {
            return false;
        }
        ab5 ab5Var = (ab5) obj;
        return this.a.equals(ab5Var.a) && this.b == ab5Var.b && this.c.equals(ab5Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + xs1.f(this.b, this.a.hashCode() * 31, 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("DownloadUrlResponse(urls=");
        sb.append(this.a);
        sb.append(", size=");
        sb.append(this.b);
        return eq3.n(sb, ", encryptedAttributes=", this.c, ")");
    }
}
