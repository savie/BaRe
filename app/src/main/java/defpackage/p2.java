package defpackage;

import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class p2 extends ol1 {
    @Override // defpackage.ol1
    public final void D(z0 z0Var, n1 n1Var) throws IOException {
        r2 r2Var = (r2) z0Var;
        if (r2Var.c == null) {
            H(r2Var);
        }
        n1Var.write(r2Var.c);
    }

    @Override // defpackage.ol1
    public final int E(z0 z0Var) throws IOException {
        r2 r2Var = (r2) z0Var;
        if (r2Var.c == null) {
            H(r2Var);
        }
        return r2Var.c.length;
    }

    public final void H(r2 r2Var) throws IOException {
        z0 z0Var = r2Var.b;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        nh4 nh4Var = (nh4) this.b;
        n1 n1Var = new n1(nh4Var, byteArrayOutputStream);
        try {
            if (r2Var.e) {
                n1Var.a(z0Var);
            } else {
                z0Var.a.d(nh4Var).D(z0Var, n1Var);
            }
            r2Var.c = byteArrayOutputStream.toByteArray();
            n1Var.close();
        } catch (Throwable th) {
            try {
                n1Var.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }
}
