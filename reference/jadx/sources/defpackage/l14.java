package defpackage;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class l14 extends qn0 {
    public final e26 A;
    public xi8 B;
    public final String r;
    public final boolean s;
    public final v15 t;
    public final v15 u;
    public final RectF v;
    public final int w;
    public final int x;
    public final f14 y;
    public final e26 z;

    /* JADX WARN: Illegal instructions before constructor call */
    public l14(c35 c35Var, am0 am0Var, k14 k14Var) {
        int iA = dj7.A(k14Var.h);
        Paint.Cap cap = iA != 0 ? iA != 1 ? Paint.Cap.SQUARE : Paint.Cap.ROUND : Paint.Cap.BUTT;
        int iA2 = dj7.A(k14Var.i);
        super(c35Var, am0Var, cap, iA2 != 0 ? iA2 != 1 ? iA2 != 2 ? null : Paint.Join.BEVEL : Paint.Join.ROUND : Paint.Join.MITER, k14Var.j, k14Var.d, k14Var.g, k14Var.k, k14Var.l);
        this.t = new v15();
        this.u = new v15();
        this.v = new RectF();
        this.r = k14Var.a;
        this.w = k14Var.b;
        this.s = k14Var.m;
        this.x = (int) (c35Var.b.b() / 32.0f);
        yl0 yl0VarN = k14Var.c.n();
        this.y = (f14) yl0VarN;
        yl0VarN.a(this);
        am0Var.g(yl0VarN);
        yl0 yl0VarN2 = k14Var.e.n();
        this.z = (e26) yl0VarN2;
        yl0VarN2.a(this);
        am0Var.g(yl0VarN2);
        yl0 yl0VarN3 = k14Var.f.n();
        this.A = (e26) yl0VarN3;
        yl0VarN3.a(this);
        am0Var.g(yl0VarN3);
    }

    @Override // defpackage.qn0, defpackage.qo4
    public final void f(cd cdVar, Object obj) {
        super.f(cdVar, obj);
        if (obj == f35.G) {
            xi8 xi8Var = this.B;
            am0 am0Var = this.f;
            if (xi8Var != null) {
                am0Var.p(xi8Var);
            }
            xi8 xi8Var2 = new xi8(cdVar, null);
            this.B = xi8Var2;
            xi8Var2.a(this);
            am0Var.g(this.B);
        }
    }

    public final int[] g(int[] iArr) {
        xi8 xi8Var = this.B;
        if (xi8Var != null) {
            Integer[] numArr = (Integer[]) xi8Var.f();
            int i = 0;
            if (iArr.length == numArr.length) {
                while (i < iArr.length) {
                    iArr[i] = numArr[i].intValue();
                    i++;
                }
            } else {
                iArr = new int[numArr.length];
                while (i < numArr.length) {
                    iArr[i] = numArr[i].intValue();
                    i++;
                }
            }
        }
        return iArr;
    }

    @Override // defpackage.gu1
    public final String getName() {
        return this.r;
    }

    @Override // defpackage.qn0, defpackage.rp2
    public final void h(Canvas canvas, Matrix matrix, int i) {
        Shader shader;
        Shader radialGradient;
        if (this.s) {
            return;
        }
        e(this.v, matrix, false);
        int i2 = this.w;
        f14 f14Var = this.y;
        e26 e26Var = this.A;
        e26 e26Var2 = this.z;
        if (i2 == 1) {
            long jI = i();
            v15 v15Var = this.t;
            shader = (LinearGradient) v15Var.b(jI);
            if (shader == null) {
                PointF pointF = (PointF) e26Var2.f();
                PointF pointF2 = (PointF) e26Var.f();
                e14 e14Var = (e14) f14Var.f();
                radialGradient = new LinearGradient(pointF.x, pointF.y, pointF2.x, pointF2.y, g(e14Var.b), e14Var.a, Shader.TileMode.CLAMP);
                v15Var.e(radialGradient, jI);
                shader = radialGradient;
            }
        } else {
            long jI2 = i();
            v15 v15Var2 = this.u;
            shader = (RadialGradient) v15Var2.b(jI2);
            if (shader == null) {
                PointF pointF3 = (PointF) e26Var2.f();
                PointF pointF4 = (PointF) e26Var.f();
                e14 e14Var2 = (e14) f14Var.f();
                int[] iArrG = g(e14Var2.b);
                float[] fArr = e14Var2.a;
                float f = pointF3.x;
                float f2 = pointF3.y;
                radialGradient = new RadialGradient(f, f2, (float) Math.hypot(pointF4.x - f, pointF4.y - f2), iArrG, fArr, Shader.TileMode.CLAMP);
                v15Var2.e(radialGradient, jI2);
                shader = radialGradient;
            }
        }
        shader.setLocalMatrix(matrix);
        this.i.setShader(shader);
        super.h(canvas, matrix, i);
    }

    public final int i() {
        float f = this.z.d;
        float f2 = this.x;
        int iRound = Math.round(f * f2);
        int iRound2 = Math.round(this.A.d * f2);
        int iRound3 = Math.round(this.y.d * f2);
        int i = iRound != 0 ? 527 * iRound : 17;
        if (iRound2 != 0) {
            i = i * 31 * iRound2;
        }
        return iRound3 != 0 ? i * 31 * iRound3 : i;
    }
}
