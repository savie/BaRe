package defpackage;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.util.Pair;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class l71 extends up2 {
    public float f;
    public float g;
    public float h;
    public float i;
    public float j;
    public float k;
    public int l;
    public float m;
    public boolean n;
    public float o;
    public final RectF p;
    public final Pair q;

    public l71(v71 v71Var) {
        super(v71Var);
        this.p = new RectF();
        this.q = new Pair(new tp2(), new tp2());
    }

    @Override // defpackage.up2
    public final void a(Canvas canvas, Rect rect, float f, boolean z, boolean z2) {
        float fWidth = rect.width() / k();
        float fHeight = rect.height() / k();
        v71 v71Var = (v71) this.a;
        float f2 = (v71Var.r / 2.0f) + v71Var.s;
        canvas.translate((f2 * fWidth) + rect.left, (f2 * fHeight) + rect.top);
        canvas.rotate(-90.0f);
        canvas.scale(fWidth, fHeight);
        if (v71Var.t != 0) {
            canvas.scale(1.0f, -1.0f);
            if (Build.VERSION.SDK_INT == 29) {
                canvas.rotate(0.1f);
            }
        }
        float f3 = -f2;
        canvas.clipRect(f3, f3, f2, f2);
        int i = v71Var.a;
        this.f = i * f;
        this.g = Math.min(i / 2, v71Var.a()) * f;
        this.h = v71Var.l * f;
        int i2 = v71Var.r;
        int i3 = v71Var.a;
        float f4 = (i2 - i3) / 2.0f;
        this.i = f4;
        if (z || z2) {
            float f5 = ((1.0f - f) * i3) / 2.0f;
            if ((z && v71Var.g == 2) || (z2 && v71Var.h == 1)) {
                this.i = f4 + f5;
            } else if ((z && v71Var.g == 1) || (z2 && v71Var.h == 2)) {
                this.i = f4 - f5;
            }
        }
        if (z2 && v71Var.h == 3) {
            this.o = f;
        } else {
            this.o = 1.0f;
        }
    }

    @Override // defpackage.up2
    public final void c(Canvas canvas, Paint paint, sp2 sp2Var, int i) {
        int iC = z85.c(sp2Var.c, i);
        canvas.save();
        canvas.rotate(sp2Var.g);
        this.n = sp2Var.h;
        float f = sp2Var.a;
        float f2 = sp2Var.b;
        int i2 = sp2Var.d;
        i(canvas, paint, f, f2, iC, i2, i2, sp2Var.e, sp2Var.f, true);
        canvas.restore();
    }

    @Override // defpackage.up2
    public final void d(Canvas canvas, Paint paint, float f, float f2, int i, int i2, int i3) {
        int iC = z85.c(i, i2);
        this.n = false;
        i(canvas, paint, f, f2, iC, i3, i3, 0.0f, 0.0f, false);
    }

    @Override // defpackage.up2
    public final int e() {
        return k();
    }

    @Override // defpackage.up2
    public final int f() {
        return k();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.up2
    public final void g() {
        int i;
        Path path = this.b;
        path.rewind();
        path.moveTo(1.0f, 0.0f);
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = 2;
            if (i3 >= 2) {
                break;
            }
            path.cubicTo(1.0f, 0.5522848f, 0.5522848f, 1.0f, 0.0f, 1.0f);
            path.cubicTo(-0.5522848f, 1.0f, -1.0f, 0.5522848f, -1.0f, 0.0f);
            path.cubicTo(-1.0f, -0.5522848f, -0.5522848f, -1.0f, 0.0f, -1.0f);
            path.cubicTo(0.5522848f, -1.0f, 1.0f, -0.5522848f, 1.0f, 0.0f);
            i3++;
        }
        Matrix matrix = this.e;
        matrix.reset();
        float f = this.i;
        matrix.setScale(f, f);
        path.transform(matrix);
        v71 v71Var = (v71) this.a;
        boolean zB = v71Var.b(this.n);
        PathMeasure pathMeasure = this.d;
        if (zB) {
            pathMeasure.setPath(path, false);
            float f2 = this.k;
            path.rewind();
            float length = pathMeasure.getLength();
            float f3 = 2.0f;
            int iMax = Math.max(3, (int) ((length / (this.n ? v71Var.j : v71Var.k)) / 2.0f)) * 2;
            this.j = length / iMax;
            ArrayList arrayList = new ArrayList();
            for (int i4 = 0; i4 < iMax; i4++) {
                tp2 tp2Var = new tp2();
                float f4 = i4;
                pathMeasure.getPosTan(this.j * f4, tp2Var.a, tp2Var.b);
                tp2 tp2Var2 = new tp2();
                float f5 = this.j;
                pathMeasure.getPosTan((f5 / 2.0f) + (f4 * f5), tp2Var2.a, tp2Var2.b);
                arrayList.add(tp2Var);
                tp2Var2.a(f2 * 2.0f);
                arrayList.add(tp2Var2);
            }
            arrayList.add((tp2) arrayList.get(0));
            tp2 tp2Var3 = (tp2) arrayList.get(0);
            float[] fArr = tp2Var3.a;
            char c = 1;
            path.moveTo(fArr[0], fArr[1]);
            int i5 = 1;
            while (i5 < arrayList.size()) {
                tp2 tp2Var4 = (tp2) arrayList.get(i5);
                float f6 = (this.j / f3) * 0.48f;
                float[] fArr2 = tp2Var3.a;
                float[] fArr3 = tp2Var3.b;
                float[] fArr4 = new float[i];
                float[] fArr5 = new float[i];
                System.arraycopy(fArr2, i2, fArr4, i2, i);
                System.arraycopy(fArr3, i2, fArr5, i2, i);
                new Matrix();
                float[] fArr6 = tp2Var4.a;
                float[] fArr7 = tp2Var4.b;
                float[] fArr8 = new float[i];
                float[] fArr9 = new float[i];
                System.arraycopy(fArr6, i2, fArr8, i2, i);
                System.arraycopy(fArr7, i2, fArr9, i2, i);
                new Matrix();
                char c2 = c;
                float fAtan2 = (float) Math.atan2(fArr5[c], fArr5[i2]);
                double d = fArr4[i2];
                double d2 = f6;
                int i6 = i2;
                double d3 = fAtan2;
                fArr4[i6] = (float) ((Math.cos(d3) * d2) + d);
                fArr4[c2] = (float) ((Math.sin(d3) * d2) + ((double) fArr4[c2]));
                double d4 = -f6;
                double dAtan2 = (float) Math.atan2(fArr9[c2], fArr9[i6]);
                fArr8[i6] = (float) ((Math.cos(dAtan2) * d4) + ((double) fArr8[i6]));
                float fSin = (float) ((Math.sin(dAtan2) * d4) + ((double) fArr8[c2]));
                fArr8[c2] = fSin;
                float f7 = fArr4[i6];
                float f8 = fArr4[c2];
                float f9 = fArr8[i6];
                float[] fArr10 = tp2Var4.a;
                path.cubicTo(f7, f8, f9, fSin, fArr10[i6], fArr10[c2]);
                i5++;
                tp2Var3 = tp2Var4;
                c = c2;
                i2 = i6;
                pathMeasure = pathMeasure;
                i = 2;
                f3 = 2.0f;
            }
        }
        pathMeasure.setPath(path, i2);
    }

    public final void i(Canvas canvas, Paint paint, float f, float f2, int i, int i2, int i3, float f3, float f4, boolean z) {
        float f5;
        Canvas canvas2;
        float f6 = f2 >= f ? f2 - f : (f2 + 1.0f) - f;
        float f7 = f % 1.0f;
        if (f7 < 0.0f) {
            f7 += 1.0f;
        }
        if (this.o < 1.0f) {
            float f8 = f7 + f6;
            if (f8 > 1.0f) {
                i(canvas, paint, f7, 1.0f, i, i2, 0, f3, f4, z);
                i(canvas, paint, 1.0f, f8, i, 0, i3, f3, f4, z);
                return;
            }
        }
        float degrees = (float) Math.toDegrees(this.g / this.i);
        float f9 = f6 - 0.99f;
        if (f9 >= 0.0f) {
            float f10 = ((f9 * degrees) / 180.0f) / 0.01f;
            f6 += f10;
            if (!z) {
                f7 -= f10 / 2.0f;
            }
        }
        float fL = zv1.l(1.0f - this.o, 1.0f, f7);
        float fL2 = zv1.l(0.0f, this.o, f6);
        float degrees2 = (float) Math.toDegrees(i2 / this.i);
        float degrees3 = ((fL2 * 360.0f) - degrees2) - ((float) Math.toDegrees(i3 / this.i));
        float f11 = (fL * 360.0f) + degrees2;
        if (degrees3 <= 0.0f) {
            return;
        }
        v71 v71Var = (v71) this.a;
        boolean z2 = v71Var.b(this.n) && z && f3 > 0.0f;
        paint.setAntiAlias(true);
        paint.setColor(i);
        paint.setStrokeWidth(this.f);
        float f12 = this.g * 2.0f;
        float f13 = degrees * 2.0f;
        PathMeasure pathMeasure = this.d;
        if (degrees3 < f13) {
            float f14 = degrees3 / f13;
            float f15 = (degrees * f14) + f11;
            tp2 tp2Var = new tp2();
            if (z2) {
                float length = (pathMeasure.getLength() * (f15 / 360.0f)) / 2.0f;
                float f16 = this.h * f3;
                float f17 = this.i;
                if (f17 != this.m || f16 != this.k) {
                    this.k = f16;
                    this.m = f17;
                    g();
                }
                pathMeasure.getPosTan(length, tp2Var.a, tp2Var.b);
            } else {
                tp2Var.c(f15 + 90.0f);
                tp2Var.a(-this.i);
            }
            paint.setStyle(Paint.Style.FILL);
            j(canvas, paint, tp2Var, f12, this.f, f14);
            return;
        }
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(v71Var.c() ? Paint.Cap.ROUND : Paint.Cap.BUTT);
        float f18 = f11 + degrees;
        float f19 = degrees3 - f13;
        Pair pair = this.q;
        ((tp2) pair.first).b();
        ((tp2) pair.second).b();
        if (z2) {
            float f20 = f18 / 360.0f;
            float f21 = f19 / 360.0f;
            float f22 = this.h * f3;
            int i4 = this.n ? v71Var.j : v71Var.k;
            float f23 = this.i;
            if (f23 != this.m || f22 != this.k || i4 != this.l) {
                this.k = f22;
                this.l = i4;
                this.m = f23;
                g();
            }
            Path path = this.c;
            path.rewind();
            float fC = iz1.c(f21, 0.0f, 1.0f);
            if (v71Var.b(this.n)) {
                float f24 = f4 / ((float) ((((double) this.i) * 6.283185307179586d) / ((double) this.j)));
                f20 += f24;
                f5 = 0.0f - (f24 * 360.0f);
            } else {
                f5 = 0.0f;
            }
            float f25 = f20 % 1.0f;
            float length2 = (pathMeasure.getLength() * f25) / 2.0f;
            float length3 = (pathMeasure.getLength() * (f25 + fC)) / 2.0f;
            pathMeasure.getSegment(length2, length3, path, true);
            tp2 tp2Var2 = (tp2) pair.first;
            tp2Var2.b();
            pathMeasure.getPosTan(length2, tp2Var2.a, tp2Var2.b);
            tp2 tp2Var3 = (tp2) pair.second;
            tp2Var3.b();
            pathMeasure.getPosTan(length3, tp2Var3.a, tp2Var3.b);
            Matrix matrix = this.e;
            matrix.reset();
            matrix.setRotate(f5);
            tp2Var2.c(f5);
            tp2Var3.c(f5);
            path.transform(matrix);
            canvas2 = canvas;
            canvas2.drawPath(path, paint);
        } else {
            ((tp2) pair.first).c(f18 + 90.0f);
            ((tp2) pair.first).a(-this.i);
            ((tp2) pair.second).c(f18 + f19 + 90.0f);
            ((tp2) pair.second).a(-this.i);
            float f26 = this.i;
            float f27 = -f26;
            RectF rectF = this.p;
            rectF.set(f27, f27, f26, f26);
            canvas.drawArc(rectF, f18, f19, false, paint);
            canvas2 = canvas;
        }
        if (v71Var.c() || this.g <= 0.0f) {
            return;
        }
        paint.setStyle(Paint.Style.FILL);
        j(canvas2, paint, (tp2) pair.first, f12, this.f, 1.0f);
        j(canvas, paint, (tp2) pair.second, f12, this.f, 1.0f);
    }

    public final void j(Canvas canvas, Paint paint, tp2 tp2Var, float f, float f2, float f3) {
        float fMin = Math.min(f2, this.f);
        float f4 = f / 2.0f;
        float fMin2 = Math.min(f4, (this.g * fMin) / this.f);
        RectF rectF = new RectF((-f) / 2.0f, (-fMin) / 2.0f, f4, fMin / 2.0f);
        canvas.save();
        float[] fArr = tp2Var.a;
        canvas.translate(fArr[0], fArr[1]);
        canvas.rotate(up2.h(tp2Var.b));
        canvas.scale(f3, f3);
        canvas.drawRoundRect(rectF, fMin2, fMin2, paint);
        canvas.restore();
    }

    public final int k() {
        lm0 lm0Var = this.a;
        return (((v71) lm0Var).s * 2) + ((v71) lm0Var).r;
    }

    @Override // defpackage.up2
    public final void b(int i, int i2, Canvas canvas, Paint paint) {
    }
}
