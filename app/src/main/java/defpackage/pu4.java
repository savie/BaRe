package defpackage;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.Pair;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pu4 extends up2 {
    public float f;
    public float g;
    public float h;
    public float i;
    public float j;
    public float k;
    public int l;
    public boolean m;
    public float n;
    public Pair o;

    @Override // defpackage.up2
    public final void a(Canvas canvas, Rect rect, float f, boolean z, boolean z2) {
        if (this.f != rect.width()) {
            this.f = rect.width();
            g();
        }
        float fE = e();
        canvas.translate((rect.width() / 2.0f) + rect.left, Math.max(0.0f, (rect.height() - fE) / 2.0f) + (rect.height() / 2.0f) + rect.top);
        zu4 zu4Var = (zu4) this.a;
        if (zu4Var.s) {
            canvas.scale(-1.0f, 1.0f);
        }
        float f2 = this.f / 2.0f;
        float f3 = fE / 2.0f;
        canvas.clipRect(-f2, -f3, f2, f3);
        int i = zu4Var.a;
        this.g = i * f;
        this.h = Math.min(i / 2, zu4Var.a()) * f;
        this.j = zu4Var.l * f;
        this.i = Math.min(zu4Var.a / 2.0f, zu4Var.e()) * f;
        if (z || z2) {
            if ((z && zu4Var.g == 2) || (z2 && zu4Var.h == 1)) {
                canvas.scale(1.0f, -1.0f);
            }
            if (z || (z2 && zu4Var.h != 3)) {
                canvas.translate(0.0f, ((1.0f - f) * zu4Var.a) / 2.0f);
            }
        }
        if (z2 && zu4Var.h == 3) {
            this.n = f;
        } else {
            this.n = 1.0f;
        }
    }

    @Override // defpackage.up2
    public final void b(int i, int i2, Canvas canvas, Paint paint) {
        int iC = z85.c(i, i2);
        this.m = false;
        zu4 zu4Var = (zu4) this.a;
        int iMin = Math.min(zu4Var.t, zu4Var.a);
        if (iMin <= 0 || iC == 0) {
            return;
        }
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(iC);
        Integer num = zu4Var.u;
        float f = iMin;
        j(canvas, paint, new tp2(new float[]{(this.f / 2.0f) - (num != null ? (zu4Var.t / 2.0f) + num.floatValue() : this.g / 2.0f), 0.0f}, new float[]{1.0f, 0.0f}), f, f, (this.h * f) / this.g, null, 0.0f, 0.0f, 0.0f, false);
    }

    @Override // defpackage.up2
    public final void c(Canvas canvas, Paint paint, sp2 sp2Var, int i) {
        int iC = z85.c(sp2Var.c, i);
        this.m = sp2Var.h;
        float f = sp2Var.a;
        float f2 = sp2Var.b;
        int i2 = sp2Var.d;
        i(canvas, paint, f, f2, iC, i2, i2, sp2Var.e, sp2Var.f, true);
    }

    @Override // defpackage.up2
    public final void d(Canvas canvas, Paint paint, float f, float f2, int i, int i2, int i3) {
        int iC = z85.c(i, i2);
        this.m = false;
        i(canvas, paint, f, f2, iC, i3, i3, 0.0f, 0.0f, false);
    }

    @Override // defpackage.up2
    public final int e() {
        lm0 lm0Var = this.a;
        return (((zu4) lm0Var).l * 2) + ((zu4) lm0Var).a;
    }

    @Override // defpackage.up2
    public final int f() {
        return -1;
    }

    @Override // defpackage.up2
    public final void g() {
        Path path = this.b;
        path.rewind();
        zu4 zu4Var = (zu4) this.a;
        if (zu4Var.b(this.m)) {
            int i = this.m ? zu4Var.j : zu4Var.k;
            float f = this.f;
            int i2 = (int) (f / i);
            this.k = f / i2;
            for (int i3 = 0; i3 <= i2; i3++) {
                int i4 = i3 * 2;
                float f2 = i4 + 1;
                path.cubicTo(i4 + 0.48f, 0.0f, f2 - 0.48f, 1.0f, f2, 1.0f);
                float f3 = f2 + 0.48f;
                float f4 = i4 + 2;
                path.cubicTo(f3, 1.0f, f4 - 0.48f, 0.0f, f4, 0.0f);
            }
            Matrix matrix = this.e;
            matrix.reset();
            matrix.setScale(this.k / 2.0f, -2.0f);
            matrix.postTranslate(0.0f, 1.0f);
            path.transform(matrix);
        } else {
            path.lineTo(this.f, 0.0f);
        }
        this.d.setPath(path, false);
    }

    public final void i(Canvas canvas, Paint paint, float f, float f2, int i, int i2, int i3, float f3, float f4, boolean z) {
        float fL;
        float fL2;
        zu4 zu4Var;
        int i4;
        float f5;
        Canvas canvas2;
        Pair pair = this.o;
        float fC = iz1.c(f, 0.0f, 1.0f);
        float fC2 = iz1.c(f2, 0.0f, 1.0f);
        float fL3 = zv1.l(1.0f - this.n, 1.0f, fC);
        float fL4 = zv1.l(1.0f - this.n, 1.0f, fC2);
        int iC = (int) ((iz1.c(fL3, 0.0f, 0.01f) * i2) / 0.01f);
        int iC2 = (int) (((1.0f - iz1.c(fL4, 0.99f, 1.0f)) * i3) / 0.01f);
        float f6 = this.f;
        int i5 = (int) ((fL3 * f6) + iC);
        int i6 = (int) ((fL4 * f6) - iC2);
        float f7 = this.h;
        float f8 = this.i;
        if (f7 != f8) {
            float fMax = Math.max(f7, f8);
            float f9 = this.f;
            float f10 = fMax / f9;
            fL = zv1.l(this.h, this.i, iz1.c(i5 / f9, 0.0f, f10) / f10);
            float f11 = this.h;
            float f12 = this.i;
            float f13 = this.f;
            fL2 = zv1.l(f11, f12, iz1.c((f13 - i6) / f13, 0.0f, f10) / f10);
        } else {
            fL = f7;
            fL2 = fL;
        }
        float f14 = (-this.f) / 2.0f;
        zu4 zu4Var2 = (zu4) this.a;
        boolean z2 = zu4Var2.b(this.m) && z && f3 > 0.0f;
        if (i5 <= i6) {
            float f15 = i5 + fL;
            float f16 = i6 - fL2;
            float f17 = fL * 2.0f;
            float f18 = fL2 * 2.0f;
            paint.setColor(i);
            paint.setAntiAlias(true);
            paint.setStrokeWidth(this.g);
            ((tp2) pair.first).b();
            ((tp2) pair.second).b();
            ((tp2) pair.first).e(f15 + f14);
            ((tp2) pair.second).e(f16 + f14);
            if (i5 == 0 && f16 + fL2 < f15 + fL) {
                tp2 tp2Var = (tp2) pair.first;
                float f19 = this.g;
                j(canvas, paint, tp2Var, f17, f19, fL, (tp2) pair.second, f18, f19, fL2, true);
                return;
            }
            if (f15 - fL > f16 - fL2) {
                tp2 tp2Var2 = (tp2) pair.second;
                float f20 = this.g;
                j(canvas, paint, tp2Var2, f18, f20, fL2, (tp2) pair.first, f17, f20, fL, false);
                return;
            }
            float f21 = fL2;
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeCap(zu4Var2.c() ? Paint.Cap.ROUND : Paint.Cap.BUTT);
            if (z2) {
                float f22 = this.f;
                float f23 = f15 / f22;
                float f24 = f16 / f22;
                if (this.m) {
                    zu4Var = zu4Var2;
                    i4 = zu4Var.j;
                } else {
                    zu4Var = zu4Var2;
                    i4 = zu4Var.k;
                }
                if (i4 != this.l) {
                    this.l = i4;
                    g();
                }
                Path path = this.c;
                path.rewind();
                float f25 = (-this.f) / 2.0f;
                boolean zB = zu4Var.b(this.m);
                if (zB) {
                    float f26 = this.f;
                    f5 = 1.0f;
                    float f27 = this.k;
                    float f28 = f26 / f27;
                    float f29 = f4 / f28;
                    float f30 = f28 / (f28 + 1.0f);
                    f23 = (f23 + f29) * f30;
                    f24 = (f24 + f29) * f30;
                    f25 -= f27 * f4;
                } else {
                    f5 = 1.0f;
                }
                PathMeasure pathMeasure = this.d;
                float length = pathMeasure.getLength() * f23;
                float length2 = pathMeasure.getLength() * f24;
                pathMeasure.getSegment(length, length2, path, true);
                tp2 tp2Var3 = (tp2) pair.first;
                tp2Var3.b();
                pathMeasure.getPosTan(length, tp2Var3.a, tp2Var3.b);
                tp2 tp2Var4 = (tp2) pair.second;
                tp2Var4.b();
                pathMeasure.getPosTan(length2, tp2Var4.a, tp2Var4.b);
                Matrix matrix = this.e;
                matrix.reset();
                matrix.setTranslate(f25, 0.0f);
                tp2Var3.e(f25);
                tp2Var4.e(f25);
                if (zB) {
                    float f31 = this.j * f3;
                    matrix.postScale(f5, f31);
                    tp2Var3.d(f31);
                    tp2Var4.d(f31);
                }
                path.transform(matrix);
                canvas2 = canvas;
                canvas2.drawPath(path, paint);
            } else {
                float[] fArr = ((tp2) pair.first).a;
                float f32 = fArr[0];
                float f33 = fArr[1];
                float[] fArr2 = ((tp2) pair.second).a;
                canvas.drawLine(f32, f33, fArr2[0], fArr2[1], paint);
                canvas2 = canvas;
                zu4Var = zu4Var2;
            }
            if (zu4Var.c()) {
                return;
            }
            if (f15 > 0.0f && fL > 0.0f) {
                j(canvas2, paint, (tp2) pair.first, f17, this.g, fL, null, 0.0f, 0.0f, 0.0f, false);
            }
            if (f16 >= this.f || f21 <= 0.0f) {
                return;
            }
            j(canvas, paint, (tp2) pair.second, f18, this.g, f21, null, 0.0f, 0.0f, 0.0f, false);
        }
    }

    public final void j(Canvas canvas, Paint paint, tp2 tp2Var, float f, float f2, float f3, tp2 tp2Var2, float f4, float f5, float f6, boolean z) {
        float f7;
        float f8;
        float fMin = Math.min(f2, this.g);
        float f9 = (-f) / 2.0f;
        float f10 = (-fMin) / 2.0f;
        float f11 = f / 2.0f;
        float f12 = fMin / 2.0f;
        RectF rectF = new RectF(f9, f10, f11, f12);
        paint.setStyle(Paint.Style.FILL);
        canvas.save();
        if (tp2Var2 != null) {
            float[] fArr = tp2Var2.b;
            float[] fArr2 = tp2Var2.a;
            float fMin2 = Math.min(f5, this.g);
            float fMin3 = Math.min(f4 / 2.0f, (f6 * fMin2) / this.g);
            RectF rectF2 = new RectF();
            if (z) {
                float f13 = (fArr2[0] - fMin3) - (tp2Var.a[0] - f3);
                if (f13 > 0.0f) {
                    tp2Var2.e((-f13) / 2.0f);
                    f8 = f4 + f13;
                } else {
                    f8 = f4;
                }
                rectF2.set(0.0f, f10, f11, f12);
            } else {
                float f14 = (fArr2[0] + fMin3) - (tp2Var.a[0] + f3);
                if (f14 < 0.0f) {
                    tp2Var2.e((-f14) / 2.0f);
                    f7 = f4 - f14;
                } else {
                    f7 = f4;
                }
                rectF2.set(f9, f10, 0.0f, f12);
                f8 = f7;
            }
            RectF rectF3 = new RectF((-f8) / 2.0f, (-fMin2) / 2.0f, f8 / 2.0f, fMin2 / 2.0f);
            canvas.translate(fArr2[0], fArr2[1]);
            canvas.rotate(up2.h(fArr));
            Path path = new Path();
            path.addRoundRect(rectF3, fMin3, fMin3, Path.Direction.CCW);
            canvas.clipPath(path);
            canvas.rotate(-up2.h(fArr));
            canvas.translate(-fArr2[0], -fArr2[1]);
            float[] fArr3 = tp2Var.a;
            canvas.translate(fArr3[0], fArr3[1]);
            canvas.rotate(up2.h(tp2Var.b));
            canvas.drawRect(rectF2, paint);
            canvas.drawRoundRect(rectF, f3, f3, paint);
        } else {
            float[] fArr4 = tp2Var.a;
            canvas.translate(fArr4[0], fArr4[1]);
            canvas.rotate(up2.h(tp2Var.b));
            canvas.drawRoundRect(rectF, f3, f3, paint);
        }
        canvas.restore();
    }
}
