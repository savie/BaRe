package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rn9 extends cm9 {
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
        if (un9.g) {
            un9.c(obj, j, z ? (byte) 1 : (byte) 0);
        } else {
            un9.d(obj, j, z ? (byte) 1 : (byte) 0);
        }
    }

    @Override // defpackage.cm9
    public final void d(Object obj, long j, byte b) {
        if (un9.g) {
            un9.c(obj, j, b);
        } else {
            un9.d(obj, j, b);
        }
    }

    @Override // defpackage.cm9
    public final void f(Object obj, long j, double d) {
        this.a.putLong(obj, j, Double.doubleToLongBits(d));
    }

    @Override // defpackage.cm9
    public final void h(Object obj, long j, float f) {
        this.a.putInt(obj, j, Float.floatToIntBits(f));
    }

    @Override // defpackage.cm9
    public final boolean j(Object obj, long j) {
        return un9.g ? un9.m(obj, j) : un9.n(obj, j);
    }
}
