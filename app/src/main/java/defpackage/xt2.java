package defpackage;

import android.content.Context;
import android.graphics.Color;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xt2 {
    public static final int f = (int) Math.round(5.1000000000000005d);
    public final boolean a;
    public final int b;
    public final int c;
    public final int d;
    public final float e;

    public xt2(Context context) {
        boolean zQ = jm1.Q(context, R.attr.elevationOverlayEnabled, false);
        Integer numN = z85.n(context, R.attr.elevationOverlayColor);
        int iIntValue = numN != null ? numN.intValue() : 0;
        Integer numN2 = z85.n(context, R.attr.elevationOverlayAccentColor);
        int iIntValue2 = numN2 != null ? numN2.intValue() : 0;
        Integer numN3 = z85.n(context, R.attr.colorSurface);
        int iIntValue3 = numN3 != null ? numN3.intValue() : 0;
        float f2 = context.getResources().getDisplayMetrics().density;
        this.a = zQ;
        this.b = iIntValue;
        this.c = iIntValue2;
        this.d = iIntValue3;
        this.e = f2;
    }

    public final int a(int i, float f2) {
        int i2;
        float f3 = this.e;
        float fMin = (f3 <= 0.0f || f2 <= 0.0f) ? 0.0f : Math.min(((((float) Math.log1p(f2 / f3)) * 4.5f) + 2.0f) / 100.0f, 1.0f);
        int iAlpha = Color.alpha(i);
        int iX = z85.x(fMin, xl1.g(i, 255), this.b);
        if (fMin > 0.0f && (i2 = this.c) != 0) {
            iX = xl1.e(xl1.g(i2, f), iX);
        }
        return xl1.g(iX, iAlpha);
    }
}
