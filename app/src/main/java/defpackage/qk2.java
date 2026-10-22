package defpackage;

import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.provider.Settings;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qk2 extends gp2 {
    public static final pk2 P = new pk2();
    public final gk7 G;
    public final sp2 H;
    public float I;
    public boolean J;
    public final ValueAnimator K;
    public ValueAnimator L;
    public TimeInterpolator M;
    public TimeInterpolator N;
    public TimeInterpolator O;
    public final up2 y;

    public qk2(Context context, final lm0 lm0Var, up2 up2Var) {
        super(context, lm0Var);
        this.J = false;
        this.y = up2Var;
        sp2 sp2Var = new sp2();
        this.H = sp2Var;
        sp2Var.h = true;
        gk7 gk7Var = new gk7(this, P);
        this.G = gk7Var;
        hk7 hk7Var = new hk7();
        hk7Var.a(1.0f);
        hk7Var.b(50.0f);
        gk7Var.m = hk7Var;
        ValueAnimator valueAnimator = new ValueAnimator();
        this.K = valueAnimator;
        valueAnimator.setDuration(1000L);
        valueAnimator.setFloatValues(0.0f, 1.0f);
        valueAnimator.setRepeatCount(-1);
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: ok2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                lm0 lm0Var2 = lm0Var;
                if (!lm0Var2.b(true) || lm0Var2.m == 0) {
                    return;
                }
                qk2 qk2Var = this.a;
                if (qk2Var.isVisible()) {
                    qk2Var.invalidateSelf();
                }
            }
        });
        if (lm0Var.b(true) && lm0Var.m != 0) {
            valueAnimator.start();
        }
        if (this.p != 1.0f) {
            this.p = 1.0f;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        if (!getBounds().isEmpty() && isVisible() && canvas.getClipBounds(this.t)) {
            canvas.save();
            Rect bounds = getBounds();
            float fB = b();
            ObjectAnimator objectAnimator = this.d;
            boolean z = objectAnimator != null && objectAnimator.isRunning();
            ObjectAnimator objectAnimator2 = this.e;
            boolean z2 = objectAnimator2 != null && objectAnimator2.isRunning();
            up2 up2Var = this.y;
            up2Var.a.d();
            up2Var.a(canvas, bounds, fB, z, z2);
            float fC = c();
            sp2 sp2Var = this.H;
            sp2Var.f = fC;
            Paint.Style style = Paint.Style.FILL;
            Paint paint = this.q;
            paint.setStyle(style);
            paint.setAntiAlias(true);
            lm0 lm0Var = this.b;
            sp2Var.c = lm0Var.e[0];
            int iC = lm0Var.i;
            up2 up2Var2 = this.y;
            if (iC > 0) {
                if (!(up2Var2 instanceof pu4)) {
                    iC = (int) ((iz1.c(sp2Var.b, 0.0f, 0.01f) * iC) / 0.01f);
                }
                this.y.d(canvas, paint, sp2Var.b, 1.0f, lm0Var.f, this.r, iC);
            } else {
                up2Var2.d(canvas, paint, 0.0f, 1.0f, lm0Var.f, this.r, 0);
            }
            int i = this.r;
            up2 up2Var3 = this.y;
            up2Var3.c(canvas, paint, sp2Var, i);
            up2Var3.b(lm0Var.e[0], this.r, canvas, paint);
            canvas.restore();
        }
    }

    @Override // defpackage.gp2
    public final boolean e(boolean z, boolean z2, boolean z3) {
        boolean zE = super.e(z, z2, z3);
        fd fdVar = this.c;
        ContentResolver contentResolver = this.a.getContentResolver();
        fdVar.getClass();
        float f = Settings.Global.getFloat(contentResolver, "animator_duration_scale", 1.0f);
        if (f == 0.0f) {
            this.J = true;
            return zE;
        }
        this.J = false;
        this.G.m.b(50.0f / f);
        return zE;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.y.e();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.y.f();
    }

    @Override // android.graphics.drawable.Drawable
    public final void jumpToCurrentState() {
        this.G.e();
        this.H.b = getLevel() / 10000.0f;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLevelChange(int i) {
        float f = i;
        lm0 lm0Var = this.b;
        float f2 = (f < lm0Var.o * 10000.0f || f > lm0Var.p * 10000.0f) ? 0.0f : 1.0f;
        boolean z = this.J;
        sp2 sp2Var = this.H;
        gk7 gk7Var = this.G;
        if (z) {
            gk7Var.e();
            sp2Var.b = f / 10000.0f;
            invalidateSelf();
            sp2Var.e = f2;
            invalidateSelf();
        } else {
            int iWidth = getBounds().width();
            int iHeight = getBounds().height();
            if (iWidth > 0 && iHeight > 0) {
                if (this.y instanceof pu4) {
                    gk7Var.c(10000.0f / iWidth);
                } else {
                    gk7Var.c((float) (10000.0d / (((double) Math.min(iHeight, iWidth)) * 3.141592653589793d)));
                }
            }
            gk7Var.b = sp2Var.b * 10000.0f;
            gk7Var.c = true;
            gk7Var.a(f);
        }
        return true;
    }
}
