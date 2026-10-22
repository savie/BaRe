package defpackage;

import android.view.View;
import android.view.WindowInsetsAnimation;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wu8 extends xu8 {
    public final WindowInsetsAnimation e;

    public wu8(WindowInsetsAnimation windowInsetsAnimation) {
        super(0, null, 0L);
        this.e = windowInsetsAnimation;
    }

    public static vc4 f(WindowInsetsAnimation.Bounds bounds) {
        return vc4.d(bounds.getUpperBound());
    }

    public static vc4 g(WindowInsetsAnimation.Bounds bounds) {
        return vc4.d(bounds.getLowerBound());
    }

    public static void h(View view, ol1 ol1Var) {
        view.setWindowInsetsAnimationCallback(new vu8(ol1Var));
    }

    @Override // defpackage.xu8
    public final float a() {
        return this.e.getAlpha();
    }

    @Override // defpackage.xu8
    public final long b() {
        return this.e.getDurationMillis();
    }

    @Override // defpackage.xu8
    public final float c() {
        return this.e.getInterpolatedFraction();
    }

    @Override // defpackage.xu8
    public final int d() {
        return this.e.getTypeMask();
    }

    @Override // defpackage.xu8
    public final void e(float f) {
        this.e.setFraction(f);
    }
}
