package defpackage;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.animation.LinearInterpolator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class u71 extends Drawable implements Animatable {
    public static final LinearInterpolator k = new LinearInterpolator();
    public static final i53 n = new i53();
    public static final int[] p = {-16777216};
    public final t71 a;
    public float b;
    public final Resources c;
    public final ValueAnimator d;
    public float e;
    public boolean f;

    public u71(Context context) {
        context.getClass();
        this.c = context.getResources();
        t71 t71Var = new t71();
        this.a = t71Var;
        t71Var.i = p;
        t71Var.a(0);
        t71Var.h = 2.5f;
        t71Var.b.setStrokeWidth(2.5f);
        invalidateSelf();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new r71(this, t71Var));
        valueAnimatorOfFloat.setRepeatCount(-1);
        valueAnimatorOfFloat.setRepeatMode(1);
        valueAnimatorOfFloat.setInterpolator(k);
        valueAnimatorOfFloat.addListener(new s71(this, t71Var));
        this.d = valueAnimatorOfFloat;
    }

    public static void d(float f, t71 t71Var) {
        if (f <= 0.75f) {
            t71Var.u = t71Var.i[t71Var.j];
            return;
        }
        float f2 = (f - 0.75f) / 0.25f;
        int[] iArr = t71Var.i;
        int i = t71Var.j;
        int i2 = iArr[i];
        int i3 = iArr[(i + 1) % iArr.length];
        int i4 = (i2 >> 24) & 255;
        int i5 = (i2 >> 16) & 255;
        int i6 = (i2 >> 8) & 255;
        int i7 = i2 & 255;
        t71Var.u = ((i4 + ((int) ((((i3 >> 24) & 255) - i4) * f2))) << 24) | ((i5 + ((int) ((((i3 >> 16) & 255) - i5) * f2))) << 16) | ((i6 + ((int) ((((i3 >> 8) & 255) - i6) * f2))) << 8) | (i7 + ((int) (f2 * ((i3 & 255) - i7))));
    }

    public final void a(float f, t71 t71Var, boolean z) {
        float interpolation;
        if (this.f) {
            d(f, t71Var);
            float fFloor = (float) (Math.floor(t71Var.m / 0.8f) + 1.0d);
            float f2 = t71Var.k;
            float f3 = t71Var.l;
            t71Var.e = (((f3 - 0.01f) - f2) * f) + f2;
            t71Var.f = f3;
            float f4 = t71Var.m;
            t71Var.g = xs1.e(fFloor, f4, f, f4);
            return;
        }
        if (f != 1.0f || z) {
            float f5 = t71Var.m;
            float interpolation2 = t71Var.k;
            i53 i53Var = n;
            if (f < 0.5f) {
                interpolation = (i53Var.getInterpolation(f / 0.5f) * 0.79f) + 0.01f + interpolation2;
            } else {
                float f6 = interpolation2 + 0.79f;
                interpolation2 = f6 - (((1.0f - i53Var.getInterpolation((f - 0.5f) / 0.5f)) * 0.79f) + 0.01f);
                interpolation = f6;
            }
            float f7 = (0.20999998f * f) + f5;
            float f8 = (f + this.e) * 216.0f;
            t71Var.e = interpolation2;
            t71Var.f = interpolation;
            t71Var.g = f7;
            this.b = f8;
        }
    }

    public final void b(float f, float f2, float f3, float f4) {
        float f5 = this.c.getDisplayMetrics().density;
        float f6 = f2 * f5;
        t71 t71Var = this.a;
        t71Var.h = f6;
        t71Var.b.setStrokeWidth(f6);
        t71Var.q = f * f5;
        t71Var.a(0);
        t71Var.r = (int) (f3 * f5);
        t71Var.s = (int) (f4 * f5);
    }

    public final void c(int i) {
        if (i == 0) {
            b(11.0f, 3.0f, 12.0f, 6.0f);
        } else {
            b(7.5f, 2.5f, 10.0f, 5.0f);
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Rect bounds = getBounds();
        canvas.save();
        canvas.rotate(this.b, bounds.exactCenterX(), bounds.exactCenterY());
        t71 t71Var = this.a;
        Paint paint = t71Var.b;
        RectF rectF = t71Var.a;
        float f = t71Var.q;
        float fMin = (t71Var.h / 2.0f) + f;
        if (f <= 0.0f) {
            fMin = (Math.min(bounds.width(), bounds.height()) / 2.0f) - Math.max((t71Var.r * t71Var.p) / 2.0f, t71Var.h / 2.0f);
        }
        rectF.set(bounds.centerX() - fMin, bounds.centerY() - fMin, bounds.centerX() + fMin, bounds.centerY() + fMin);
        float f2 = t71Var.e;
        float f3 = t71Var.g;
        float f4 = (f2 + f3) * 360.0f;
        float f5 = ((t71Var.f + f3) * 360.0f) - f4;
        paint.setColor(t71Var.u);
        paint.setAlpha(t71Var.t);
        float f6 = t71Var.h / 2.0f;
        rectF.inset(f6, f6);
        canvas.drawCircle(rectF.centerX(), rectF.centerY(), rectF.width() / 2.0f, t71Var.d);
        float f7 = -f6;
        rectF.inset(f7, f7);
        canvas.drawArc(rectF, f4, f5, false, paint);
        Paint paint2 = t71Var.c;
        if (t71Var.n) {
            Path path = t71Var.o;
            if (path == null) {
                Path path2 = new Path();
                t71Var.o = path2;
                path2.setFillType(Path.FillType.EVEN_ODD);
            } else {
                path.reset();
            }
            float fMin2 = Math.min(rectF.width(), rectF.height()) / 2.0f;
            float f8 = (t71Var.r * t71Var.p) / 2.0f;
            t71Var.o.moveTo(0.0f, 0.0f);
            t71Var.o.lineTo(t71Var.r * t71Var.p, 0.0f);
            Path path3 = t71Var.o;
            float f9 = t71Var.r;
            float f10 = t71Var.p;
            path3.lineTo((f9 * f10) / 2.0f, t71Var.s * f10);
            t71Var.o.offset((rectF.centerX() + fMin2) - f8, (t71Var.h / 2.0f) + rectF.centerY());
            t71Var.o.close();
            paint2.setColor(t71Var.u);
            paint2.setAlpha(t71Var.t);
            canvas.save();
            canvas.rotate(f4 + f5, rectF.centerX(), rectF.centerY());
            canvas.drawPath(t71Var.o, paint2);
            canvas.restore();
        }
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.a.t;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        return this.d.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.a.t = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.a.b.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        ValueAnimator valueAnimator = this.d;
        valueAnimator.cancel();
        t71 t71Var = this.a;
        float f = t71Var.e;
        t71Var.k = f;
        float f2 = t71Var.f;
        t71Var.l = f2;
        t71Var.m = t71Var.g;
        if (f2 != f) {
            this.f = true;
            valueAnimator.setDuration(666L);
            valueAnimator.start();
            return;
        }
        t71Var.a(0);
        t71Var.k = 0.0f;
        t71Var.l = 0.0f;
        t71Var.m = 0.0f;
        t71Var.e = 0.0f;
        t71Var.f = 0.0f;
        t71Var.g = 0.0f;
        valueAnimator.setDuration(1332L);
        valueAnimator.start();
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        this.d.cancel();
        this.b = 0.0f;
        t71 t71Var = this.a;
        if (t71Var.n) {
            t71Var.n = false;
        }
        t71Var.a(0);
        t71Var.k = 0.0f;
        t71Var.l = 0.0f;
        t71Var.m = 0.0f;
        t71Var.e = 0.0f;
        t71Var.f = 0.0f;
        t71Var.g = 0.0f;
        invalidateSelf();
    }
}
