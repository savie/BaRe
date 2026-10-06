package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fx2 implements ll6 {
    public final boolean a;
    public final boolean b;
    public final ll6 c;
    public final zw2 d;
    public final jo4 e;
    public int f;
    public boolean k;

    public fx2(ll6 ll6Var, boolean z, boolean z2, jo4 jo4Var, zw2 zw2Var) {
        ms8.j(ll6Var, "Argument must not be null");
        this.c = ll6Var;
        this.a = z;
        this.b = z2;
        this.e = jo4Var;
        ms8.j(zw2Var, "Argument must not be null");
        this.d = zw2Var;
    }

    public final synchronized void a() {
        if (this.k) {
            throw new IllegalStateException("Cannot acquire a recycled resource");
        }
        this.f++;
    }

    @Override // defpackage.ll6
    public final synchronized void b() {
        if (this.f > 0) {
            throw new IllegalStateException("Cannot recycle a resource while it is still acquired");
        }
        if (this.k) {
            throw new IllegalStateException("Cannot recycle a resource that has already been recycled");
        }
        this.k = true;
        if (this.b) {
            this.c.b();
        }
    }

    @Override // defpackage.ll6
    public final int c() {
        return this.c.c();
    }

    @Override // defpackage.ll6
    public final Class d() {
        return this.c.d();
    }

    public final void e() {
        boolean z;
        synchronized (this) {
            int i = this.f;
            if (i <= 0) {
                throw new IllegalStateException("Cannot release a recycled or not yet acquired resource");
            }
            z = true;
            int i2 = i - 1;
            this.f = i2;
            if (i2 != 0) {
                z = false;
            }
        }
        if (z) {
            this.d.e(this.e, this);
        }
    }

    @Override // defpackage.ll6
    public final Object get() {
        return this.c.get();
    }

    public final synchronized String toString() {
        return "EngineResource{isMemoryCacheable=" + this.a + ", listener=" + this.d + ", key=" + this.e + ", acquired=" + this.f + ", isRecycled=" + this.k + ", resource=" + this.c + '}';
    }
}
