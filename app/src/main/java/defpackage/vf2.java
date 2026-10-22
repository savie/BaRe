package defpackage;

import java.io.IOException;
import java.io.OutputStream;
import java.net.Socket;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vf2 implements nh7 {
    public final OutputStream a;
    public final xi7 b;
    public final /* synthetic */ l40 c;

    public vf2(l40 l40Var) {
        this.c = l40Var;
        Socket socket = (Socket) l40Var.b;
        this.a = socket.getOutputStream();
        this.b = new xi7(socket);
    }

    @Override // defpackage.nh7, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        int i;
        OutputStream outputStream = this.a;
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
                    if ((i2 & 1) != 0) {
                        i = 0;
                        break;
                    }
                    int i3 = i2 | 1;
                    if (atomicInteger.compareAndSet(i2, i3)) {
                        i = i3;
                        break;
                    }
                }
                if (i == 0) {
                    xi7Var.i();
                    return;
                }
                if (i != 3) {
                    if (!socket.isClosed() && !socket.isOutputShutdown()) {
                        outputStream.flush();
                        try {
                            socket.shutdownOutput();
                        } catch (UnsupportedOperationException unused) {
                            outputStream.close();
                        }
                    }
                    xi7Var.i();
                    return;
                }
                socket.close();
                if (xi7Var.i()) {
                    throw xi7Var.j(null);
                }
            } catch (Throwable th) {
                xi7Var.i();
                throw th;
            }
        } catch (IOException e) {
            if (!xi7Var.i()) {
                throw e;
            }
            throw xi7Var.j(e);
        }
    }

    @Override // defpackage.nh7
    public final f48 d() {
        return this.b;
    }

    @Override // defpackage.nh7
    public final void f0(nw0 nw0Var, long j) throws IOException {
        k55.c(nw0Var.b, 0L, j);
        while (j > 0) {
            xi7 xi7Var = this.b;
            xi7Var.f();
            m67 m67Var = nw0Var.a;
            m67Var.getClass();
            int iMin = (int) Math.min(j, m67Var.c - m67Var.b);
            xi7Var.h();
            try {
                try {
                    this.a.write(m67Var.a, m67Var.b, iMin);
                    if (xi7Var.i()) {
                        throw xi7Var.j(null);
                    }
                    int i = m67Var.b + iMin;
                    m67Var.b = i;
                    long j2 = iMin;
                    j -= j2;
                    nw0Var.b -= j2;
                    if (i == m67Var.c) {
                        nw0Var.a = m67Var.a();
                        o67.a(m67Var);
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
    }

    @Override // defpackage.nh7, java.io.Flushable
    public final void flush() throws IOException {
        xi7 xi7Var = this.b;
        xi7Var.h();
        try {
            try {
                this.a.flush();
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

    public final String toString() {
        return "sink(" + ((Socket) this.c.b) + ')';
    }
}
