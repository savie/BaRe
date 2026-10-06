package defpackage;

import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ed {
    public static final LinearInterpolator a = new LinearInterpolator();
    public static final i53 b = new i53();
    public static final h53 c = new h53();
    public static final yu4 d = new yu4(yu4.c);
    public static final DecelerateInterpolator e = new DecelerateInterpolator();

    public static float a(float f, float f2, float f3) {
        return xs1.e(f2, f, f3, f);
    }

    public static float b(float f, float f2, float f3, float f4, float f5) {
        if (f5 <= f3) {
            return f;
        }
        return f5 >= f4 ? f2 : a(f, f2, (f5 - f3) / (f4 - f3));
    }

    public static int c(float f, int i, int i2) {
        return Math.round(f * (i2 - i)) + i;
    }
}
