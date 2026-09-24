package defpackage;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
import java.util.zip.CRC32;
import java.util.zip.CheckedInputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class c61 extends ka6 {
    public static final /* synthetic */ int f = 0;
    public long c;
    public final long d;
    public final long e;

    /* JADX WARN: Illegal instructions before constructor call */
    public c61(b61 b61Var) {
        y4 y4Var = b61Var.k;
        if (y4Var == null) {
            l0.e("origin == null");
            throw null;
        }
        InputStream inputStream = (InputStream) y4Var.k;
        CRC32 crc32 = b61Var.t;
        Objects.requireNonNull(crc32, "builder.checksum");
        super(new CheckedInputStream(inputStream, crc32), b61Var);
        this.e = b61Var.x;
        this.d = b61Var.y;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x002a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:26:0x002c A[Catch: all -> 0x0025, TryCatch #0 {, blocks: (B:3:0x0001, B:10:0x0011, B:11:0x0012, B:13:0x001a, B:15:0x001d, B:16:0x001e, B:26:0x002c, B:29:0x003f, B:30:0x0046, B:24:0x0029, B:34:0x004a, B:14:0x001b, B:6:0x0005, B:9:0x000e), top: B:37:0x0001, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:28:0x003e  */
    /* JADX WARN: Code duplicated, block: B:29:0x003f A[Catch: all -> 0x0025, TryCatch #0 {, blocks: (B:3:0x0001, B:10:0x0011, B:11:0x0012, B:13:0x001a, B:15:0x001d, B:16:0x001e, B:26:0x002c, B:29:0x003f, B:30:0x0046, B:24:0x0029, B:34:0x004a, B:14:0x001b, B:6:0x0005, B:9:0x000e), top: B:37:0x0001, inners: #1, #2 }] */
    @Override // defpackage.ka6
    public final synchronized void a(int i) {
        synchronized (this) {
            if (i != -1) {
                try {
                    this.c += (long) i;
                    super.a(i);
                } catch (Throwable th) {
                    throw th;
                }
            } else {
                super.a(i);
            }
            throw th;
        }
        if (this.e > 0) {
            synchronized (this) {
                long j = this.c;
                if (j < this.e) {
                    if (i == -1) {
                        if (this.d != ((CheckedInputStream) ((FilterInputStream) this).in).getChecksum().getValue()) {
                            throw new IOException("Checksum verification failed.");
                        }
                    }
                } else if (this.d != ((CheckedInputStream) ((FilterInputStream) this).in).getChecksum().getValue()) {
                    throw new IOException("Checksum verification failed.");
                }
            }
        } else if (i == -1) {
            if (this.d != ((CheckedInputStream) ((FilterInputStream) this).in).getChecksum().getValue()) {
                throw new IOException("Checksum verification failed.");
            }
        }
    }

    @Override // defpackage.ka6, java.io.FilterInputStream, java.io.InputStream
    public final synchronized long skip(long j) {
        long jSkip;
        jSkip = ((FilterInputStream) this).in.skip(j);
        this.c += jSkip;
        return jSkip;
    }
}
