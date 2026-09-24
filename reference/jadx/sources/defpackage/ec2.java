package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ec2 extends gs4 implements mt3 {
    public final /* synthetic */ ic2 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ec2(ic2 ic2Var) {
        super(1);
        this.a = ic2Var;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        Throwable th = (Throwable) obj;
        ic2 ic2Var = this.a;
        gv7 gv7Var = ic2Var.j;
        if (th != null) {
            ic2Var.h.f(new ne3(th));
        }
        if (gv7Var.a()) {
            ((aa3) gv7Var.getValue()).close();
        }
        return be8.a;
    }
}
