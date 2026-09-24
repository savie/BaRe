package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class h75 extends us2 {
    public final float k;

    public h75(float f) {
        super(0);
        this.k = f - 0.001f;
    }

    @Override // defpackage.us2
    public final void A(float f, float f2, float f3, mc7 mc7Var) {
        double d = this.k;
        float fSqrt = (float) ((Math.sqrt(2.0d) * d) / 2.0d);
        float fSqrt2 = (float) Math.sqrt(Math.pow(d, 2.0d) - Math.pow(fSqrt, 2.0d));
        mc7Var.d(f2 - fSqrt, ((float) (-((Math.sqrt(2.0d) * d) - d))) + fSqrt2, 270.0f, 0.0f);
        mc7Var.c(f2, (float) (-((Math.sqrt(2.0d) * d) - d)));
        mc7Var.c(f2 + fSqrt, ((float) (-((Math.sqrt(2.0d) * d) - d))) + fSqrt2);
    }
}
