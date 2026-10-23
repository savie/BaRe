package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vx3 implements ra2 {
    public final /* synthetic */ int a;
    public final Object b;

    public /* synthetic */ vx3(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.ra2
    public final Class a() {
        switch (this.a) {
            case 0:
                return sx3.class;
            case 1:
                return oy3.class;
            default:
                return this.b.getClass();
        }
    }

    @Override // defpackage.ra2
    public final void c() {
        int i = this.a;
    }

    @Override // defpackage.ra2
    public final void cancel() {
        int i = this.a;
    }

    @Override // defpackage.ra2
    public final void d(e66 e66Var, qa2 qa2Var) {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                e66Var.getClass();
                qa2Var.f((sx3) obj);
                break;
            case 1:
                e66Var.getClass();
                qa2Var.f((oy3) obj);
                break;
            default:
                qa2Var.f(obj);
                break;
        }
    }

    @Override // defpackage.ra2
    public final int e() {
        switch (this.a) {
            case 0:
                return 5;
            case 1:
                return 5;
            default:
                return 1;
        }
    }

    private final void b() {
    }

    private final void f() {
    }

    private final void g() {
    }

    private final void h() {
    }

    private final void i() {
    }

    private final void j() {
    }
}
