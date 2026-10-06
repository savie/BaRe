package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class z05 implements ll6, d33 {
    public static final l22 e = tu0.z(20, new lv1(17));
    public final rm7 a = new rm7();
    public ll6 b;
    public boolean c;
    public boolean d;

    @Override // defpackage.d33
    public final rm7 a() {
        return this.a;
    }

    @Override // defpackage.ll6
    public final synchronized void b() {
        this.a.a();
        this.d = true;
        if (!this.c) {
            this.b.b();
            this.b = null;
            e.c(this);
        }
    }

    @Override // defpackage.ll6
    public final int c() {
        return this.b.c();
    }

    @Override // defpackage.ll6
    public final Class d() {
        return this.b.d();
    }

    public final synchronized void e() {
        this.a.a();
        if (!this.c) {
            throw new IllegalStateException("Already unlocked");
        }
        this.c = false;
        if (this.d) {
            b();
        }
    }

    @Override // defpackage.ll6
    public final Object get() {
        return this.b.get();
    }
}
