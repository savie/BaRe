package defpackage;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class tc4 implements Closeable {
    public final InputStream a;
    public final bt3 b;
    public final boolean c;

    public /* synthetic */ tc4(InputStream inputStream, bt3 bt3Var, int i) {
        this(inputStream, (i & 2) != 0 ? null : bt3Var, (i & 4) != 0);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        IOException th = null;
        Object objInvoke = null;
        bt3 bt3Var = this.b;
        boolean z = this.c;
        InputStream inputStream = this.a;
        if (z) {
            f13.a(inputStream);
            if (bt3Var != null) {
                try {
                    objInvoke = bt3Var.invoke();
                } catch (Exception unused) {
                }
                return;
            }
            return;
        }
        try {
            inputStream.close();
        } catch (Throwable th2) {
            th = th2;
        }
        if (bt3Var != null) {
            try {
                bt3Var.invoke();
            } catch (Throwable th3) {
                if (th == null) {
                    th = th3;
                } else {
                    yc9.a(th, th3);
                }
            }
        }
        if (th != null) {
            if (!(th instanceof IOException)) {
                throw new IOException(th);
            }
        }
    }

    public tc4(InputStream inputStream, bt3 bt3Var, boolean z) {
        inputStream.getClass();
        this.a = inputStream;
        this.b = bt3Var;
        this.c = z;
    }
}
