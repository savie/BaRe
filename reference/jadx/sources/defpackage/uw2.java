package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class uw2 extends vw2 {
    @Override // defpackage.vw2
    public final long a(ow0 ow0Var) throws iw0 {
        ow0Var.getClass();
        byte[] bArr = new byte[8];
        ow0Var.o(bArr, 8);
        long j = 0;
        for (int i = 7; i >= 0; i--) {
            j = (j << 8) | ((long) (bArr[i] & 255));
        }
        return j;
    }

    @Override // defpackage.vw2
    public final String c(zu6 zu6Var) {
        return vw2.b(zu6Var, h51.c);
    }

    @Override // defpackage.vw2
    public final int d(ow0 ow0Var) throws iw0 {
        ow0Var.getClass();
        byte[] bArr = new byte[2];
        ow0Var.o(bArr, 2);
        return (bArr[0] & 255) | ((bArr[1] << 8) & 65280);
    }

    @Override // defpackage.vw2
    public final long e(ow0 ow0Var) throws iw0 {
        ow0Var.getClass();
        byte[] bArr = new byte[4];
        ow0Var.o(bArr, 4);
        return (((long) bArr[0]) & 255) | (((long) (bArr[1] << 8)) & 65280) | (((long) (bArr[2] << 16)) & 16711680) | (((long) (bArr[3] << 24)) & 4278190080L);
    }

    @Override // defpackage.vw2
    public final long f(ow0 ow0Var) throws iw0 {
        long jE = (e(ow0Var) & 4294967295L) + (e(ow0Var) << 32);
        if (jE >= 0) {
            return jE;
        }
        throw new iw0("Cannot handle values > 9223372036854775807");
    }

    @Override // defpackage.vw2
    public final String g(ow0 ow0Var, int i) {
        return vw2.h(ow0Var, i, h51.c);
    }

    @Override // defpackage.vw2
    public final void i(ow0 ow0Var, long j) {
        ow0Var.i(new byte[]{(byte) j, (byte) (j >> 8), (byte) (j >> 16), (byte) (j >> 24), (byte) (j >> 32), (byte) (j >> 40), (byte) (j >> 48), (byte) (j >> 56)}, 8);
    }

    @Override // defpackage.vw2
    public final void j(ow0 ow0Var, int i) {
        if (i < 0 || i > 65535) {
            c6.f(fz5.j(i, "Invalid uint16 value: "));
        } else {
            ow0Var.i(new byte[]{(byte) i, (byte) (i >> 8)}, 2);
        }
    }

    @Override // defpackage.vw2
    public final void k(ow0 ow0Var, long j) {
        if (j < 0 || j > 4294967295L) {
            c6.f(u48.l(j, "Invalid uint32 value: "));
        } else {
            ow0Var.i(new byte[]{(byte) j, (byte) (j >> 8), (byte) (j >> 16), (byte) (j >> 24)}, 4);
        }
    }

    @Override // defpackage.vw2
    public final void l(ow0 ow0Var, long j) {
        if (j >= 0) {
            i(ow0Var, j);
        } else {
            c6.f(u48.l(j, "Invalid uint64 value: "));
        }
    }

    @Override // defpackage.vw2
    public final void m(ow0 ow0Var, String str) {
        byte[] bytes = str.getBytes(h51.c);
        ow0Var.getClass();
        ow0Var.i(bytes, bytes.length);
    }

    public final String toString() {
        return "little endian";
    }
}
