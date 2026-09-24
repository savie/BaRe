package defpackage;

import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class az2 {
    public final String a;
    public final long b;
    public final Map c;

    public az2(String str, long j, Map map) {
        map.getClass();
        this.a = str;
        this.b = j;
        this.c = map;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof az2)) {
            return false;
        }
        az2 az2Var = (az2) obj;
        return this.a.equals(az2Var.a) && this.b == az2Var.b && pe4.d(this.c, az2Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + xs1.f(this.b, this.a.hashCode() * 31, 31);
    }

    public final String toString() {
        return "EventMetadata(sessionId=" + this.a + ", timestamp=" + this.b + ", additionalCustomKeys=" + this.c + ')';
    }
}
