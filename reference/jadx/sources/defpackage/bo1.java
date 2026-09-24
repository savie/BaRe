package defpackage;

import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bo1 implements au4 {
    public final /* synthetic */ int a;
    public final Object b;

    public /* synthetic */ bo1(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.au4
    public final void g(fu4 fu4Var, rt4 rt4Var) {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                io1 io1Var = (io1) obj;
                io1Var.l();
                io1Var.getLifecycle().f(this);
                return;
            default:
                new HashMap();
                wu3[] wu3VarArr = (wu3[]) obj;
                if (wu3VarArr.length > 0) {
                    wu3 wu3Var = wu3VarArr[0];
                    throw null;
                }
                if (wu3VarArr.length <= 0) {
                    return;
                }
                wu3 wu3Var2 = wu3VarArr[0];
                throw null;
        }
    }
}
