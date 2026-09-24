package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class o27 extends xo4 {
    public final p27 i;

    public o27(List list) {
        super(list);
        this.i = new p27();
    }

    @Override // defpackage.yl0
    public final Object g(wo4 wo4Var, float f) {
        Object obj;
        Object obj2 = wo4Var.b;
        if (obj2 == null || (obj = wo4Var.c) == null) {
            l0.e("Missing values for keyframe.");
            return null;
        }
        p27 p27Var = (p27) obj2;
        p27 p27Var2 = (p27) obj;
        cd cdVar = this.e;
        if (cdVar != null) {
            wo4Var.h.getClass();
            e();
            p27 p27Var3 = (p27) cdVar.f(p27Var, p27Var2);
            if (p27Var3 != null) {
                return p27Var3;
            }
        }
        float fD = sg5.d(p27Var.a, p27Var2.a, f);
        float fD2 = sg5.d(p27Var.b, p27Var2.b, f);
        p27 p27Var4 = this.i;
        p27Var4.a = fD;
        p27Var4.b = fD2;
        return p27Var4;
    }
}
