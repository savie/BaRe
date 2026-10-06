package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class o89 extends p89 {
    @Override // defpackage.p89
    public final double a(Object obj, long j) {
        return Double.longBitsToDouble(k(obj, j));
    }

    @Override // defpackage.p89
    public final void b(Object obj, long j, byte b) {
        if (q89.f) {
            q89.i(obj, j, b);
        } else {
            q89.k(obj, j, b);
        }
    }

    @Override // defpackage.p89
    public final void c(Object obj, long j, double d) {
        f(obj, j, Double.doubleToLongBits(d));
    }

    @Override // defpackage.p89
    public final void d(Object obj, long j, float f) {
        e(obj, j, Float.floatToIntBits(f));
    }

    @Override // defpackage.p89
    public final void g(Object obj, long j, boolean z) {
        if (q89.f) {
            q89.i(obj, j, z ? (byte) 1 : (byte) 0);
        } else {
            q89.k(obj, j, z ? (byte) 1 : (byte) 0);
        }
    }

    @Override // defpackage.p89
    public final float h(Object obj, long j) {
        return Float.intBitsToFloat(j(obj, j));
    }

    @Override // defpackage.p89
    public final boolean i(Object obj, long j) {
        if (q89.f) {
            return ((byte) (q89.c.j(obj, (-4) & j) >>> ((int) (((~j) & 3) << 3)))) != 0;
        }
        return ((byte) (q89.c.j(obj, (-4) & j) >>> ((int) ((j & 3) << 3)))) != 0;
    }
}
