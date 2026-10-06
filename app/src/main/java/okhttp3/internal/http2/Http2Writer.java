package okhttp3.internal.http2;

import defpackage.f6;
import defpackage.fz5;
import defpackage.nw0;
import defpackage.x50;
import defpackage.yw0;
import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal.concurrent.Lockable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class Http2Writer implements Closeable, Lockable {
    public static final Logger f = Logger.getLogger(Http2.class.getName());
    public final yw0 a;
    public final nw0 b;
    public int c;
    public boolean d;
    public final Hpack.Writer e;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Companion {
    }

    public Http2Writer(yw0 yw0Var) {
        yw0Var.getClass();
        this.a = yw0Var;
        nw0 nw0Var = new nw0();
        this.b = nw0Var;
        this.c = 16384;
        this.e = new Hpack.Writer(nw0Var);
    }

    public final void a(Settings settings) {
        settings.getClass();
        synchronized (this) {
            try {
                if (this.d) {
                    throw new IOException("closed");
                }
                int i = this.c;
                int i2 = settings.a;
                if ((i2 & 32) != 0) {
                    i = settings.b[5];
                }
                this.c = i;
                if (((i2 & 2) != 0 ? settings.b[1] : -1) != -1) {
                    Hpack.Writer writer = this.e;
                    int i3 = (i2 & 2) != 0 ? settings.b[1] : -1;
                    writer.getClass();
                    int iMin = Math.min(i3, 16384);
                    int i4 = writer.d;
                    if (i4 != iMin) {
                        if (iMin < i4) {
                            writer.b = Math.min(writer.b, iMin);
                        }
                        writer.c = true;
                        writer.d = iMin;
                        int i5 = writer.h;
                        if (iMin < i5) {
                            if (iMin == 0) {
                                Header[] headerArr = writer.e;
                                x50.m0(headerArr, 0, headerArr.length);
                                writer.f = writer.e.length - 1;
                                writer.g = 0;
                                writer.h = 0;
                            } else {
                                writer.a(i5 - iMin);
                            }
                        }
                    }
                }
                g(0, 0, 4, 1);
                this.a.flush();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(boolean z, int i, nw0 nw0Var, int i2) {
        synchronized (this) {
            if (this.d) {
                throw new IOException("closed");
            }
            g(i, i2, 0, z ? 1 : 0);
            if (i2 > 0) {
                yw0 yw0Var = this.a;
                nw0Var.getClass();
                yw0Var.f0(nw0Var, i2);
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        synchronized (this) {
            this.d = true;
            this.a.close();
        }
    }

    public final void flush() {
        synchronized (this) {
            if (this.d) {
                throw new IOException("closed");
            }
            this.a.flush();
        }
    }

    public final void g(int i, int i2, int i3, int i4) {
        if (i3 != 8) {
            Level level = Level.FINE;
            Logger logger = f;
            if (logger.isLoggable(level)) {
                logger.fine(Http2.b(false, i, i2, i3, i4));
            }
        }
        if (i2 > this.c) {
            throw new IllegalArgumentException(("FRAME_SIZE_ERROR length > " + this.c + ": " + i2).toString());
        }
        if ((Integer.MIN_VALUE & i) != 0) {
            f6.g(fz5.j(i, "reserved bit set: "));
            return;
        }
        byte[] bArr = _UtilCommonKt.a;
        yw0 yw0Var = this.a;
        yw0Var.getClass();
        yw0Var.writeByte((i2 >>> 16) & 255);
        yw0Var.writeByte((i2 >>> 8) & 255);
        yw0Var.writeByte(i2 & 255);
        yw0Var.writeByte(i3 & 255);
        yw0Var.writeByte(i4 & 255);
        yw0Var.writeInt(i & Integer.MAX_VALUE);
    }

    public final void h(int i, ErrorCode errorCode, byte[] bArr) {
        synchronized (this) {
            if (this.d) {
                throw new IOException("closed");
            }
            if (errorCode.a == -1) {
                throw new IllegalArgumentException("errorCode.httpCode == -1");
            }
            g(0, bArr.length + 8, 7, 0);
            this.a.writeInt(i);
            this.a.writeInt(errorCode.a);
            if (bArr.length != 0) {
                this.a.write(bArr);
            }
            this.a.flush();
        }
    }

    public final void j(int i, ArrayList arrayList, boolean z) {
        synchronized (this) {
            if (this.d) {
                throw new IOException("closed");
            }
            this.e.d(arrayList);
            long j = this.b.b;
            long jMin = Math.min(this.c, j);
            int i2 = j == jMin ? 4 : 0;
            if (z) {
                i2 |= 1;
            }
            g(i, (int) jMin, 1, i2);
            this.a.f0(this.b, jMin);
            if (j > jMin) {
                long j2 = j - jMin;
                while (j2 > 0) {
                    long jMin2 = Math.min(this.c, j2);
                    j2 -= jMin2;
                    g(i, (int) jMin2, 9, j2 == 0 ? 4 : 0);
                    this.a.f0(this.b, jMin2);
                }
            }
        }
    }

    public final void m(int i, int i2, boolean z) {
        synchronized (this) {
            if (this.d) {
                throw new IOException("closed");
            }
            g(0, 8, 6, z ? 1 : 0);
            this.a.writeInt(i);
            this.a.writeInt(i2);
            this.a.flush();
        }
    }

    public final void n(int i, ErrorCode errorCode) {
        synchronized (this) {
            if (this.d) {
                throw new IOException("closed");
            }
            if (errorCode.a == -1) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            g(i, 4, 3, 0);
            this.a.writeInt(errorCode.a);
            this.a.flush();
        }
    }

    public final void q(int i, long j) {
        synchronized (this) {
            try {
                if (this.d) {
                    throw new IOException("closed");
                }
                if (j == 0 || j > 2147483647L) {
                    throw new IllegalArgumentException(("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: " + j).toString());
                }
                Logger logger = f;
                if (logger.isLoggable(Level.FINE)) {
                    logger.fine(Http2.c(false, i, 4, j));
                }
                g(i, 4, 8, 0);
                this.a.writeInt((int) j);
                this.a.flush();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
