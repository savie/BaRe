package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xh3 extends xo4 {
    @Override // defpackage.yl0
    public final Object g(wo4 wo4Var, float f) {
        return Float.valueOf(m(wo4Var, f));
    }

    public final float l() {
        return m(b(), d());
    }

    public final float m(wo4 wo4Var, float f) {
        Object obj = wo4Var.b;
        if (obj == null || wo4Var.c == null) {
            l0.e("Missing values for keyframe.");
            return 0.0f;
        }
        cd cdVar = this.e;
        if (cdVar != null) {
            wo4Var.h.getClass();
            Float f2 = (Float) wo4Var.c;
            e();
            Float f3 = (Float) cdVar.f((Float) obj, f2);
            if (f3 != null) {
                return f3.floatValue();
            }
        }
        if (wo4Var.i == -3987645.8f) {
            wo4Var.i = ((Float) obj).floatValue();
        }
        float f4 = wo4Var.i;
        if (wo4Var.j == -3987645.8f) {
            wo4Var.j = ((Float) wo4Var.c).floatValue();
        }
        return sg5.d(f4, wo4Var.j, f);
    }
}
