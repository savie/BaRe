package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import com.bumptech.glide.a;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class pr0 implements l98 {
    @Override // defpackage.l98
    public final ll6 a(Context context, ll6 ll6Var, int i, int i2) {
        if (!xh8.u(i, i2)) {
            c6.f(dj7.j("Cannot apply transformation on width: ", i, " or height: ", " less than or equal to zero and not Target.SIZE_ORIGINAL", i2));
            return null;
        }
        nr0 nr0Var = a.a(context).a;
        Bitmap bitmap = (Bitmap) ll6Var.get();
        if (i == Integer.MIN_VALUE) {
            i = bitmap.getWidth();
        }
        if (i2 == Integer.MIN_VALUE) {
            i2 = bitmap.getHeight();
        }
        Bitmap bitmapC = c(nr0Var, bitmap, i, i2);
        return bitmap.equals(bitmapC) ? ll6Var : or0.e(nr0Var, bitmapC);
    }

    public abstract Bitmap c(nr0 nr0Var, Bitmap bitmap, int i, int i2);
}
