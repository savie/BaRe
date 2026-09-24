package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pq6 extends zv1 {
    @Override // defpackage.zv1
    public final void g(mc7 mc7Var, float f, float f2) {
        float f3 = f2 * f;
        mc7Var.d(0.0f, f3, 180.0f, 90.0f);
        float f4 = f3 * 2.0f;
        ic7 ic7Var = new ic7(0.0f, 0.0f, f4, f4);
        ic7Var.f = 180.0f;
        ic7Var.g = 90.0f;
        mc7Var.g.add(ic7Var);
        gc7 gc7Var = new gc7(ic7Var);
        mc7Var.a(180.0f);
        mc7Var.h.add(gc7Var);
        mc7Var.e = 270.0f;
        float f5 = (0.0f + f4) * 0.5f;
        float f6 = (f4 - 0.0f) / 2.0f;
        mc7Var.c = (((float) Math.cos(Math.toRadians(270.0d))) * f6) + f5;
        mc7Var.d = (f6 * ((float) Math.sin(Math.toRadians(270.0d)))) + f5;
    }
}
