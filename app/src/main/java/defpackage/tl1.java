package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tl1 extends xo4 {
    @Override // defpackage.yl0
    public final Object g(wo4 wo4Var, float f) {
        return Integer.valueOf(l(wo4Var, f));
    }

    public final int l(wo4 wo4Var, float f) {
        Object obj = wo4Var.b;
        if (obj == null || wo4Var.c == null) {
            l0.e("Missing values for keyframe.");
            return 0;
        }
        cd cdVar = this.e;
        if (cdVar != null) {
            wo4Var.h.getClass();
            Integer num = (Integer) wo4Var.c;
            e();
            Integer num2 = (Integer) cdVar.f((Integer) obj, num);
            if (num2 != null) {
                return num2.intValue();
            }
        }
        return bb9.t(sg5.b(f, 0.0f, 1.0f), ((Integer) obj).intValue(), ((Integer) wo4Var.c).intValue());
    }
}
