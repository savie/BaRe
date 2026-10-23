package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dh7 extends ws7 implements qt3 {
    public final /* synthetic */ int a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ dh7(int i, jv1 jv1Var, int i2) {
        super(i, jv1Var);
        this.a = i2;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        switch (this.a) {
            case 0:
                return new dh7(2, jv1Var, 0);
            default:
                return new dh7(2, jv1Var, 1);
        }
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.a;
        be8 be8Var = be8.a;
        switch (i) {
            case 0:
                ((dh7) create((li3) obj, (jv1) obj2)).invokeSuspend(be8Var);
                break;
            default:
                ((dh7) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8Var);
                break;
        }
        return be8Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        int i = this.a;
        be8 be8Var = be8.a;
        switch (i) {
            case 0:
                lg7.H(obj);
                break;
            default:
                lg7.H(obj);
                io4.j("SwiftBackupApkSaver", null, true, new qm(18), 10);
                break;
        }
        return be8Var;
    }
}
