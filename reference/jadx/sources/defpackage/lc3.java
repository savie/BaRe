package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class lc3 {
    public final List a;
    public final long b;

    public lc3(ww4 ww4Var, long j) {
        ww4Var.getClass();
        this.a = ww4Var;
        this.b = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof lc3)) {
            return false;
        }
        lc3 lc3Var = (lc3) obj;
        return pe4.d(this.a, lc3Var.a) && this.b == lc3Var.b;
    }

    public final int hashCode() {
        return Long.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "CachedDirectory(items=" + this.a + ", loadedAtMillis=" + this.b + ")";
    }
}
