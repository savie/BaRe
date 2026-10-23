package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wl9 extends cm9 {
    @Override // defpackage.cm9
    public final double a(Object obj, long j) {
        return Double.longBitsToDouble(this.a.getLong(obj, j));
    }

    @Override // defpackage.cm9
    public final float b(Object obj, long j) {
        return Float.intBitsToFloat(this.a.getInt(obj, j));
    }

    @Override // defpackage.cm9
    public final void c(Object obj, long j, boolean z) {
        if (fm9.f) {
            fm9.f(obj, j, z);
        } else {
            fm9.g(obj, j, z);
        }
    }

    @Override // defpackage.cm9
    public final void e(Object obj, long j, double d) {
        this.a.putLong(obj, j, Double.doubleToLongBits(d));
    }

    @Override // defpackage.cm9
    public final void g(Object obj, long j, float f) {
        this.a.putInt(obj, j, Float.floatToIntBits(f));
    }

    @Override // defpackage.cm9
    public final boolean i(Object obj, long j) {
        return fm9.f ? fm9.k(obj, j) : fm9.l(obj, j);
    }
}
