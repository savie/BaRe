package defpackage;

import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class e24 implements ij7 {
    public byte a;
    public final tf6 b;
    public final Inflater c;
    public final cc4 d;
    public final CRC32 e;

    public e24(zw0 zw0Var) {
        zw0Var.getClass();
        tf6 tf6Var = new tf6(zw0Var);
        this.b = tf6Var;
        Inflater inflater = new Inflater(true);
        this.c = inflater;
        this.d = new cc4(tf6Var, inflater);
        this.e = new CRC32();
    }

    public static void a(int i, int i2, String str) throws IOException {
        if (i2 == i) {
            return;
        }
        StringBuilder sbN = fz5.n(str, ": actual 0x");
        sbN.append(nq7.o0(8, k55.G(i2)));
        sbN.append(" != expected 0x");
        sbN.append(nq7.o0(8, k55.G(i)));
        throw new IOException(sbN.toString());
    }

    @Override // defpackage.ij7
    public final long H(nw0 nw0Var, long j) throws IOException {
        e24 e24Var = this;
        nw0Var.getClass();
        if (j < 0) {
            f6.g(u48.l(j, "byteCount < 0: "));
            return 0L;
        }
        if (j == 0) {
            return 0L;
        }
        byte b = e24Var.a;
        CRC32 crc32 = e24Var.e;
        tf6 tf6Var = e24Var.b;
        if (b == 0) {
            tf6Var.j0(10L);
            nw0 nw0Var2 = tf6Var.b;
            byte bH = nw0Var2.h(3L);
            boolean z = ((bH >> 1) & 1) == 1;
            if (z) {
                e24Var.b(nw0Var2, 0L, 10L);
            }
            a(8075, tf6Var.readShort(), "ID1ID2");
            tf6Var.skip(8L);
            if (((bH >> 2) & 1) == 1) {
                tf6Var.j0(2L);
                if (z) {
                    b(nw0Var2, 0L, 2L);
                }
                long jR = nw0Var2.r() & 65535;
                tf6Var.j0(jR);
                if (z) {
                    b(nw0Var2, 0L, jR);
                }
                tf6Var.skip(jR);
            }
            if (((bH >> 3) & 1) == 1) {
                long jA = tf6Var.a((byte) 0, 0L, Long.MAX_VALUE);
                if (jA == -1) {
                    d6.d();
                    return 0L;
                }
                if (z) {
                    b(nw0Var2, 0L, jA + 1);
                }
                tf6Var.skip(jA + 1);
            }
            if (((bH >> 4) & 1) == 1) {
                long jA2 = tf6Var.a((byte) 0, 0L, Long.MAX_VALUE);
                if (jA2 == -1) {
                    d6.d();
                    return 0L;
                }
                if (z) {
                    e24Var = this;
                    e24Var.b(nw0Var2, 0L, jA2 + 1);
                } else {
                    e24Var = this;
                }
                tf6Var.skip(jA2 + 1);
            } else {
                e24Var = this;
            }
            if (z) {
                a(tf6Var.h(), (short) crc32.getValue(), "FHCRC");
                crc32.reset();
            }
            e24Var.a = (byte) 1;
        }
        if (e24Var.a == 1) {
            long j2 = nw0Var.b;
            long jH = e24Var.d.H(nw0Var, j);
            if (jH != -1) {
                e24Var.b(nw0Var, j2, jH);
                return jH;
            }
            e24Var.a = (byte) 2;
        }
        if (e24Var.a == 2) {
            a(tf6Var.b(), (int) crc32.getValue(), "CRC");
            a(tf6Var.b(), (int) e24Var.c.getBytesWritten(), "ISIZE");
            e24Var.a = (byte) 3;
            if (!tf6Var.x()) {
                y5.m("gzip finished without exhausting source");
                return 0L;
            }
        }
        return -1L;
    }

    public final void b(nw0 nw0Var, long j, long j2) {
        m67 m67Var = nw0Var.a;
        m67Var.getClass();
        while (true) {
            int i = m67Var.c;
            int i2 = m67Var.b;
            if (j < i - i2) {
                break;
            }
            j -= (long) (i - i2);
            m67Var = m67Var.f;
            m67Var.getClass();
        }
        while (j2 > 0) {
            int i3 = (int) (((long) m67Var.b) + j);
            int iMin = (int) Math.min(m67Var.c - i3, j2);
            this.e.update(m67Var.a, i3, iMin);
            j2 -= (long) iMin;
            m67Var = m67Var.f;
            m67Var.getClass();
            j = 0;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.d.close();
    }

    @Override // defpackage.ij7
    public final f48 d() {
        return this.b.a.d();
    }
}
