package defpackage;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ar3 implements ij7 {
    public final ij7 a;

    public ar3(ij7 ij7Var) {
        ij7Var.getClass();
        this.a = ij7Var;
    }

    @Override // defpackage.ij7
    public long H(nw0 nw0Var, long j) {
        nw0Var.getClass();
        return this.a.H(nw0Var, j);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.a.close();
    }

    @Override // defpackage.ij7
    public final f48 d() {
        return this.a.d();
    }

    public final String toString() {
        return getClass().getSimpleName() + '(' + this.a + ')';
    }
}
