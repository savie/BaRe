package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class z94 extends am0 {
    public final vp4 A;
    public final Rect B;
    public final Rect C;
    public xi8 D;
    public xi8 E;

    public z94(c35 c35Var, js4 js4Var) {
        super(c35Var, js4Var);
        this.A = new vp4(3, 0);
        this.B = new Rect();
        this.C = new Rect();
    }

    @Override // defpackage.am0, defpackage.rp2
    public final void e(RectF rectF, Matrix matrix, boolean z) {
        super.e(rectF, matrix, z);
        Bitmap bitmapT = t();
        if (bitmapT != null) {
            rectF.set(0.0f, 0.0f, mi8.c() * bitmapT.getWidth(), mi8.c() * bitmapT.getHeight());
            this.l.mapRect(rectF);
        }
    }

    @Override // defpackage.am0, defpackage.qo4
    public final void f(cd cdVar, Object obj) {
        super.f(cdVar, obj);
        if (obj == f35.F) {
            this.D = new xi8(cdVar, null);
        } else if (obj == f35.I) {
            this.E = new xi8(cdVar, null);
        }
    }

    @Override // defpackage.am0
    public final void k(Canvas canvas, Matrix matrix, int i) {
        Bitmap bitmapT = t();
        if (bitmapT == null || bitmapT.isRecycled()) {
            return;
        }
        float fC = mi8.c();
        vp4 vp4Var = this.A;
        vp4Var.setAlpha(i);
        xi8 xi8Var = this.D;
        if (xi8Var != null) {
            vp4Var.setColorFilter((ColorFilter) xi8Var.f());
        }
        canvas.save();
        canvas.concat(matrix);
        int width = bitmapT.getWidth();
        int height = bitmapT.getHeight();
        Rect rect = this.B;
        rect.set(0, 0, width, height);
        int width2 = (int) (bitmapT.getWidth() * fC);
        int height2 = (int) (bitmapT.getHeight() * fC);
        Rect rect2 = this.C;
        rect2.set(0, 0, width2, height2);
        canvas.drawBitmap(bitmapT, rect, rect2, vp4Var);
        canvas.restore();
    }

    public final Bitmap t() {
        u94 u94Var;
        Bitmap bitmap;
        xi8 xi8Var = this.E;
        if (xi8Var != null && (bitmap = (Bitmap) xi8Var.f()) != null) {
            return bitmap;
        }
        String str = this.n.g;
        c35 c35Var = this.m;
        if (c35Var.getCallback() == null) {
            u94Var = null;
        } else {
            u94 u94Var2 = c35Var.p;
            if (u94Var2 != null) {
                Drawable.Callback callback = c35Var.getCallback();
                Context context = (callback != null && (callback instanceof View)) ? ((View) callback).getContext() : null;
                Context context2 = (Context) u94Var2.a;
                if ((context != null || context2 != null) && !context2.equals(context)) {
                    c35Var.p = null;
                }
            }
            if (c35Var.p == null) {
                c35Var.p = new u94(c35Var.getCallback(), c35Var.q, c35Var.b.d);
            }
            u94Var = c35Var.p;
        }
        if (u94Var != null) {
            String str2 = (String) u94Var.b;
            d35 d35Var = (d35) ((Map) u94Var.c).get(str);
            if (d35Var != null) {
                Bitmap bitmap2 = d35Var.d;
                if (bitmap2 != null) {
                    return bitmap2;
                }
                String str3 = d35Var.c;
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inScaled = true;
                options.inDensity = 160;
                if (!str3.startsWith("data:") || str3.indexOf("base64,") <= 0) {
                    try {
                        if (TextUtils.isEmpty(str2)) {
                            throw new IllegalStateException("You must set an images folder before loading an image. Set it with LottieComposition#setImagesFolder or LottieDrawable#setImagesFolder");
                        }
                        try {
                            Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(((Context) u94Var.a).getAssets().open(str2 + str3), null, options);
                            int i = d35Var.a;
                            int i2 = d35Var.b;
                            di8 di8Var = mi8.a;
                            if (bitmapDecodeStream.getWidth() != i || bitmapDecodeStream.getHeight() != i2) {
                                Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapDecodeStream, i, i2, true);
                                bitmapDecodeStream.recycle();
                                bitmapDecodeStream = bitmapCreateScaledBitmap;
                            }
                            synchronized (u94.d) {
                                ((d35) ((Map) u94Var.c).get(str)).d = bitmapDecodeStream;
                            }
                            return bitmapDecodeStream;
                        } catch (IllegalArgumentException e) {
                            m15.c("Unable to decode image.", e);
                        }
                    } catch (IOException e2) {
                        m15.c("Unable to open asset.", e2);
                    }
                } else {
                    try {
                        byte[] bArrDecode = Base64.decode(str3.substring(str3.indexOf(44) + 1), 0);
                        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length, options);
                        synchronized (u94.d) {
                            ((d35) ((Map) u94Var.c).get(str)).d = bitmapDecodeByteArray;
                        }
                        return bitmapDecodeByteArray;
                    } catch (IllegalArgumentException e3) {
                        m15.c("data URL did not have correct base64 format.", e3);
                    }
                }
            }
        } else {
            e25 e25Var = c35Var.b;
            d35 d35Var2 = e25Var == null ? null : (d35) e25Var.d.get(str);
            if (d35Var2 != null) {
                return d35Var2.d;
            }
        }
        return null;
    }
}
