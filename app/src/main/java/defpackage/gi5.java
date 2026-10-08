package defpackage;

import java.io.File;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class gi5 extends gs4 implements mt3 {
    public final /* synthetic */ dv1 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gi5(dv1 dv1Var) {
        super(1);
        this.a = dv1Var;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        File file = (File) obj;
        file.getClass();
        return new fi5(this.a.a, file);
    }
}
