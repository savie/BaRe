package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class b1 extends ol1 {
    public final /* synthetic */ int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ b1(int i, Class cls) {
        super(cls, 3);
        this.e = i;
    }

    @Override // defpackage.ol1
    public q1 m(v1 v1Var) {
        switch (this.e) {
            case 1:
                return v1Var.I();
            default:
                return super.m(v1Var);
        }
    }

    @Override // defpackage.ol1
    public q1 o(p82 p82Var) {
        switch (this.e) {
            case 0:
                return f1.B(p82Var.a, false);
            default:
                return super.o(p82Var);
        }
    }
}
