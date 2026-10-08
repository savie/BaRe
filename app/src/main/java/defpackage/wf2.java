package defpackage;

import java.io.IOException;
import java.io.InputStream;
import java.net.Socket;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wf2 implements ij7 {
    public final InputStream a;
    public final xi7 b;
    public final /* synthetic */ l40 c;

    public wf2(l40 l40Var) {
        this.c = l40Var;
        Socket socket = (Socket) l40Var.b;
        this.a = socket.getInputStream();
        this.b = new xi7(socket);
    }

    @Override // defpackage.ij7
    public final long H(nw0 nw0Var, long j) throws IOException {
        nw0Var.getClass();
        if (j == 0) {
            return 0L;
        }
        if (j < 0) {
            f6.g(u48.l(j, "byteCount < 0: "));
            return 0L;
        }
        xi7 xi7Var = this.b;
        xi7Var.f();
        m67 m67VarA = nw0Var.A(1);
        int iMin = (int) Math.min(j, 8192 - m67VarA.c);
        try {
            xi7Var.h();
            try {
                try {
                    int i = this.a.read(m67VarA.a, m67VarA.c, iMin);
                    if (xi7Var.i()) {
                        throw xi7Var.j(null);
                    }
                    if (i != -1) {
                        m67VarA.c += i;
                        long j2 = i;
                        nw0Var.b += j2;
                        return j2;
                    }
                    if (m67VarA.b != m67VarA.c) {
                        return -1L;
                    }
                    nw0Var.a = m67VarA.a();
                    o67.a(m67VarA);
                    return -1L;
                } catch (IOException e) {
                    if (xi7Var.i()) {
                        throw xi7Var.j(e);
                    }
                    throw e;
                }
            } catch (Throwable th) {
                xi7Var.i();
                throw th;
            }
        } catch (AssertionError e2) {
            if (tz8.a(e2)) {
                throw new IOException(e2);
            }
            throw e2;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        int i;
        l40 l40Var = this.c;
        xi7 xi7Var = this.b;
        xi7Var.h();
        try {
            try {
                AtomicInteger atomicInteger = (AtomicInteger) l40Var.c;
                Socket socket = (Socket) l40Var.b;
                atomicInteger.getClass();
                while (true) {
                    int i2 = atomicInteger.get();
                    if ((i2 & 2) != 0) {
                        i = 0;
                        break;
                    }
                    int i3 = i2 | 2;
                    if (atomicInteger.compareAndSet(i2, i3)) {
                        i = i3;
                        break;
                    }
                }
                if (i == 0) {
                    xi7Var.i();
                    return;
                }
                if (i == 3) {
                    socket.close();
                } else if (socket.isClosed() || socket.isInputShutdown()) {
                    xi7Var.i();
                    return;
                } else {
                    try {
                        socket.shutdownInput();
                    } catch (UnsupportedOperationException unused) {
                        this.a.close();
                    }
                }
                if (xi7Var.i()) {
                    throw xi7Var.j(null);
                }
            } catch (IOException e) {
                if (!xi7Var.i()) {
                    throw e;
                }
                throw xi7Var.j(e);
            }
        } catch (Throwable th) {
            xi7Var.i();
            throw th;
        }
    }

    @Override // defpackage.ij7
    public final f48 d() {
        return this.b;
    }

    public final String toString() {
        return "source(" + ((Socket) this.c.b) + ')';
    }
}
