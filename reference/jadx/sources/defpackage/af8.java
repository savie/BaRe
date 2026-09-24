package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class af8 extends df8 {
    @Override // defpackage.df8
    public final boolean c(Object obj, long j) {
        return ef8.g ? ef8.b(obj, j) : ef8.c(obj, j);
    }

    @Override // defpackage.df8
    public final double d(Object obj, long j) {
        return Double.longBitsToDouble(g(obj, j));
    }

    @Override // defpackage.df8
    public final float e(Object obj, long j) {
        return Float.intBitsToFloat(f(obj, j));
    }

    @Override // defpackage.df8
    public final void j(Object obj, long j, boolean z) {
        if (ef8.g) {
            ef8.k(obj, j, z ? (byte) 1 : (byte) 0);
        } else {
            ef8.l(obj, j, z ? (byte) 1 : (byte) 0);
        }
    }

    @Override // defpackage.df8
    public final void k(Object obj, long j, byte b) {
        if (ef8.g) {
            ef8.k(obj, j, b);
        } else {
            ef8.l(obj, j, b);
        }
    }

    @Override // defpackage.df8
    public final void l(Object obj, long j, double d) {
        o(obj, j, Double.doubleToLongBits(d));
    }

    @Override // defpackage.df8
    public final void m(Object obj, long j, float f) {
        n(obj, j, Float.floatToIntBits(f));
    }

    @Override // defpackage.df8
    public final boolean r() {
        return false;
    }
}
