package defpackage;

import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class e70 extends ol1 implements s74 {
    public final s74 e;
    public final ExecutorService f;

    /* JADX WARN: Multi-variable type inference failed */
    public e70(s74 s74Var) {
        super((yr7) ((ol1) s74Var).b, 5);
        this.e = s74Var;
        this.f = (ExecutorService) ((yr7) ((ol1) s74Var).b).c.c("bus.handlers.async-executor");
    }

    @Override // defpackage.s74
    public final void b(Object obj, Object obj2, rd5 rd5Var) {
        this.f.execute(new d70(this, obj, obj2, rd5Var));
    }
}
