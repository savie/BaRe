package defpackage;

import java.io.File;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pm2 {
    public final qm2 a;
    public final boolean[] b;
    public boolean c;
    public final /* synthetic */ rm2 d;

    public pm2(rm2 rm2Var, qm2 qm2Var) {
        this.d = rm2Var;
        this.a = qm2Var;
        this.b = qm2Var.e ? null : new boolean[rm2Var.k];
    }

    public final void a() {
        rm2.a(this.d, this, false);
    }

    public final File b() {
        File file;
        synchronized (this.d) {
            try {
                qm2 qm2Var = this.a;
                if (qm2Var.f != this) {
                    throw new IllegalStateException();
                }
                if (!qm2Var.e) {
                    this.b[0] = true;
                }
                file = qm2Var.d[0];
                this.d.a.mkdirs();
            } catch (Throwable th) {
                throw th;
            }
        }
        return file;
    }
}
