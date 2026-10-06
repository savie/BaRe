package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mc0 extends yz1 {
    public final long a;
    public final String b;
    public final sz1 c;
    public final tz1 d;
    public final uz1 e;
    public final xz1 f;

    public mc0(long j, String str, sz1 sz1Var, tz1 tz1Var, uz1 uz1Var, xz1 xz1Var) {
        this.a = j;
        this.b = str;
        this.c = sz1Var;
        this.d = tz1Var;
        this.e = uz1Var;
        this.f = xz1Var;
    }

    public final lc0 a() {
        lc0 lc0Var = new lc0();
        lc0Var.a = this.a;
        lc0Var.b = this.b;
        lc0Var.c = this.c;
        lc0Var.d = this.d;
        lc0Var.e = this.e;
        lc0Var.f = this.f;
        lc0Var.g = (byte) 1;
        return lc0Var;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof yz1) {
            mc0 mc0Var = (mc0) ((yz1) obj);
            if (this.a == mc0Var.a && this.b.equals(mc0Var.b) && this.c.equals(mc0Var.c) && this.d.equals(mc0Var.d)) {
                uz1 uz1Var = mc0Var.e;
                uz1 uz1Var2 = this.e;
                if (uz1Var2 != null ? uz1Var2.equals(uz1Var) : uz1Var == null) {
                    xz1 xz1Var = mc0Var.f;
                    xz1 xz1Var2 = this.f;
                    if (xz1Var2 != null ? xz1Var2.equals(xz1Var) : xz1Var == null) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.a;
        int iHashCode = (((((((((int) ((j >>> 32) ^ j)) ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003) ^ this.c.hashCode()) * 1000003) ^ this.d.hashCode()) * 1000003;
        uz1 uz1Var = this.e;
        int iHashCode2 = (iHashCode ^ (uz1Var == null ? 0 : uz1Var.hashCode())) * 1000003;
        xz1 xz1Var = this.f;
        return iHashCode2 ^ (xz1Var != null ? xz1Var.hashCode() : 0);
    }

    public final String toString() {
        return "Event{timestamp=" + this.a + ", type=" + this.b + ", app=" + this.c + ", device=" + this.d + ", log=" + this.e + ", rollouts=" + this.f + "}";
    }
}
