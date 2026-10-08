package defpackage;

import java.util.Objects;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class cq9 extends cr9 {
    public static final Set g;
    public final yp9 a;
    public final xp9 b;
    public final aq9 c;
    public final zp9 d;
    public final bd9 e;
    public final d2a f;

    static {
        try {
            g = (Set) new fa9().a();
        } catch (Exception e) {
            throw new yt9(e);
        }
    }

    public cq9(yp9 yp9Var, xp9 xp9Var, aq9 aq9Var, bd9 bd9Var, zp9 zp9Var, d2a d2aVar) {
        this.a = yp9Var;
        this.b = xp9Var;
        this.c = aq9Var;
        this.e = bd9Var;
        this.d = zp9Var;
        this.f = d2aVar;
    }

    public static wp9 b() {
        wp9 wp9Var = new wp9();
        wp9Var.a = null;
        wp9Var.b = null;
        wp9Var.c = null;
        wp9Var.d = null;
        wp9Var.e = zp9.d;
        wp9Var.f = null;
        return wp9Var;
    }

    @Override // defpackage.bd9
    public final boolean a() {
        return this.d != zp9.d;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof cq9)) {
            return false;
        }
        cq9 cq9Var = (cq9) obj;
        return cq9Var.a == this.a && cq9Var.b == this.b && cq9Var.c == this.c && Objects.equals(cq9Var.e, this.e) && cq9Var.d == this.d && Objects.equals(cq9Var.f, this.f);
    }

    public final int hashCode() {
        return Objects.hash(cq9.class, this.a, this.b, this.c, this.e, this.d, this.f);
    }

    public final String toString() {
        return String.format("EciesParameters(curveType=%s, hashType=%s, pointFormat=%s, demParameters=%s, variant=%s, salt=%s)", this.a, this.b, this.c, this.e, this.d, this.f);
    }
}
