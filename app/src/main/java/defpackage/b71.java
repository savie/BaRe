package defpackage;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import java.security.MessageDigest;
import java.util.concurrent.locks.Lock;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class b71 extends pr0 {
    public static final byte[] b = "com.bumptech.glide.load.resource.bitmap.CircleCrop.1".getBytes(jo4.a);

    @Override // defpackage.jo4
    public final void b(MessageDigest messageDigest) {
        messageDigest.update(b);
    }

    @Override // defpackage.pr0
    public final Bitmap c(nr0 nr0Var, Bitmap bitmap, int i, int i2) {
        Bitmap bitmapK;
        Lock lock = n98.d;
        int iMin = Math.min(i, i2);
        float f = iMin;
        float f2 = f / 2.0f;
        float width = bitmap.getWidth();
        float height = bitmap.getHeight();
        float fMax = Math.max(f / width, f / height);
        float f3 = width * fMax;
        float f4 = fMax * height;
        float f5 = (f - f3) / 2.0f;
        float f6 = (f - f4) / 2.0f;
        RectF rectF = new RectF(f5, f6, f3 + f5, f4 + f6);
        Bitmap.Config config = Bitmap.Config.RGBA_F16;
        Bitmap.Config config2 = config.equals(bitmap.getConfig()) ? config : Bitmap.Config.ARGB_8888;
        if (config2.equals(bitmap.getConfig())) {
            bitmapK = bitmap;
        } else {
            bitmapK = nr0Var.k(bitmap.getWidth(), bitmap.getHeight(), config2);
            new Canvas(bitmapK).drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        }
        if (!config.equals(bitmap.getConfig())) {
            config = Bitmap.Config.ARGB_8888;
        }
        Bitmap bitmapK2 = nr0Var.k(iMin, iMin, config);
        bitmapK2.setHasAlpha(true);
        lock.lock();
        try {
            Canvas canvas = new Canvas(bitmapK2);
            canvas.drawCircle(f2, f2, f2, n98.b);
            canvas.drawBitmap(bitmapK, (Rect) null, rectF, n98.c);
            canvas.setBitmap(null);
            lock.unlock();
            if (!bitmapK.equals(bitmap)) {
                nr0Var.f(bitmapK);
            }
            return bitmapK2;
        } catch (Throwable th) {
            lock.unlock();
            throw th;
        }
    }

    @Override // defpackage.jo4
    public final boolean equals(Object obj) {
        return obj instanceof b71;
    }

    @Override // defpackage.jo4
    public final int hashCode() {
        return 1101716364;
    }
}
