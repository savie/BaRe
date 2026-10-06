package defpackage;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class i82 implements b0, cb4 {
    public final z1 a;

    public i82(z1 z1Var) {
        this.a = z1Var;
    }

    public static h82 a(z1 z1Var) throws i0 {
        try {
            h92 h92Var = new h92(z1Var.c());
            h92Var.c = -1;
            return new h82(h92Var);
        } catch (IllegalArgumentException e) {
            throw new i0(e, e.getMessage());
        }
    }

    @Override // defpackage.b0
    public final q1 d() {
        try {
            return a(this.a);
        } catch (IOException e) {
            throw new p1("unable to get DER object", e);
        } catch (IllegalArgumentException e2) {
            throw new p1("unable to get DER object", e2);
        }
    }

    @Override // defpackage.cb4
    public final q1 g() {
        return a(this.a);
    }
}
