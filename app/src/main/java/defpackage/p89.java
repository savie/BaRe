package defpackage;

import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class p89 {
    public final Unsafe a;

    public p89(Unsafe unsafe) {
        this.a = unsafe;
    }

    public abstract double a(Object obj, long j);

    public abstract void b(Object obj, long j, byte b);

    public abstract void c(Object obj, long j, double d);

    public abstract void d(Object obj, long j, float f);

    public final void e(Object obj, long j, int i) {
        this.a.putInt(obj, j, i);
    }

    public final void f(Object obj, long j, long j2) {
        this.a.putLong(obj, j, j2);
    }

    public abstract void g(Object obj, long j, boolean z);

    public abstract float h(Object obj, long j);

    public abstract boolean i(Object obj, long j);

    public final int j(Object obj, long j) {
        return this.a.getInt(obj, j);
    }

    public final long k(Object obj, long j) {
        return this.a.getLong(obj, j);
    }
}
