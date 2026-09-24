package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class c06 implements Runnable {
    public final float a;
    public final float b;
    public final long c = System.currentTimeMillis();
    public final float d;
    public final float e;
    public final /* synthetic */ e06 f;

    public c06(e06 e06Var, float f, float f2, float f3, float f4) {
        this.f = e06Var;
        this.a = f3;
        this.b = f4;
        this.d = f;
        this.e = f2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        float fCurrentTimeMillis = (System.currentTimeMillis() - this.c) * 1.0f;
        e06 e06Var = this.f;
        float interpolation = e06Var.a.getInterpolation(Math.min(1.0f, fCurrentTimeMillis / e06Var.b));
        float f = this.d;
        e06Var.O.x(xs1.e(this.e, f, interpolation, f) / e06Var.d(), this.a, this.b);
        if (interpolation < 1.0f) {
            e06Var.n.postOnAnimation(this);
        }
    }
}
