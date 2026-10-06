package defpackage;

import android.view.animation.Interpolator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class w15 implements Interpolator {
    public final float[] a;
    public final float b;

    public w15(float[] fArr) {
        this.a = fArr;
        this.b = 1.0f / (fArr.length - 1);
    }

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f) {
        if (f >= 1.0f) {
            return 1.0f;
        }
        if (f <= 0.0f) {
            return 0.0f;
        }
        float[] fArr = this.a;
        int iMin = Math.min((int) ((fArr.length - 1) * f), fArr.length - 2);
        float f2 = this.b;
        float f3 = (f - (iMin * f2)) / f2;
        float f4 = fArr[iMin];
        return xs1.e(fArr[iMin + 1], f4, f3, f4);
    }
}
