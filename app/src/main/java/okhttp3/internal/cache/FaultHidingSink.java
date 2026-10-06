package okhttp3.internal.cache;

import defpackage.nw0;
import defpackage.zq3;
import java.io.EOFException;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class FaultHidingSink extends zq3 {
    public boolean b;

    @Override // defpackage.zq3, defpackage.nh7, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        try {
            super.close();
        } catch (IOException unused) {
            this.b = true;
            throw null;
        }
    }

    @Override // defpackage.zq3, defpackage.nh7
    public final void f0(nw0 nw0Var, long j) throws EOFException {
        if (this.b) {
            nw0Var.skip(j);
            return;
        }
        try {
            this.a.f0(nw0Var, j);
        } catch (IOException unused) {
            this.b = true;
            throw null;
        }
    }

    @Override // defpackage.zq3, defpackage.nh7, java.io.Flushable
    public final void flush() {
        if (this.b) {
            return;
        }
        try {
            super.flush();
        } catch (IOException unused) {
            this.b = true;
            throw null;
        }
    }
}
