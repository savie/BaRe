package defpackage;

import java.io.File;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ri5 extends gs4 implements mt3 {
    public final /* synthetic */ File a;
    public final /* synthetic */ r76 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ri5(File file, r76 r76Var) {
        super(1);
        this.a = file;
        this.b = r76Var;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        boolean zD = pe4.d((String) obj, this.a.getName());
        be8 be8Var = be8.a;
        if (zD) {
            r76 r76Var = this.b;
            Object objF = r76Var.f(be8Var);
            if (!(objF instanceof r41)) {
                return be8Var;
            }
            Object obj2 = ((s41) l73.B(lv2.a, new u41(r76Var, null, 0))).a;
        }
        return be8Var;
    }
}
