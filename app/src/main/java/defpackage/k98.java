package defpackage;

import android.graphics.Matrix;
import android.graphics.PointF;
import java.util.Collections;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class k98 {
    public final Matrix a = new Matrix();
    public final Matrix b;
    public final Matrix c;
    public final Matrix d;
    public final float[] e;
    public yl0 f;
    public yl0 g;
    public yl0 h;
    public yl0 i;
    public yl0 j;
    public xh3 k;
    public xh3 l;
    public yl0 m;
    public yl0 n;

    public k98(mc mcVar) {
        zq8 zq8Var = mcVar.a;
        this.f = zq8Var == null ? null : zq8Var.n();
        oc ocVar = mcVar.b;
        this.g = ocVar == null ? null : ocVar.n();
        gc gcVar = mcVar.c;
        this.h = gcVar == null ? null : gcVar.n();
        bc bcVar = mcVar.d;
        this.i = bcVar == null ? null : bcVar.n();
        bc bcVar2 = mcVar.f;
        xh3 xh3Var = bcVar2 == null ? null : (xh3) bcVar2.n();
        this.k = xh3Var;
        if (xh3Var != null) {
            this.b = new Matrix();
            this.c = new Matrix();
            this.d = new Matrix();
            this.e = new float[9];
        } else {
            this.b = null;
            this.c = null;
            this.d = null;
            this.e = null;
        }
        bc bcVar3 = mcVar.g;
        this.l = bcVar3 == null ? null : (xh3) bcVar3.n();
        dc dcVar = mcVar.e;
        if (dcVar != null) {
            this.j = dcVar.n();
        }
        bc bcVar4 = mcVar.h;
        if (bcVar4 != null) {
            this.m = bcVar4.n();
        } else {
            this.m = null;
        }
        bc bcVar5 = mcVar.i;
        if (bcVar5 != null) {
            this.n = bcVar5.n();
        } else {
            this.n = null;
        }
    }

    public final void a(am0 am0Var) {
        am0Var.g(this.j);
        am0Var.g(this.m);
        am0Var.g(this.n);
        am0Var.g(this.f);
        am0Var.g(this.g);
        am0Var.g(this.h);
        am0Var.g(this.i);
        am0Var.g(this.k);
        am0Var.g(this.l);
    }

    public final void b(ul0 ul0Var) {
        yl0 yl0Var = this.j;
        if (yl0Var != null) {
            yl0Var.a(ul0Var);
        }
        yl0 yl0Var2 = this.m;
        if (yl0Var2 != null) {
            yl0Var2.a(ul0Var);
        }
        yl0 yl0Var3 = this.n;
        if (yl0Var3 != null) {
            yl0Var3.a(ul0Var);
        }
        yl0 yl0Var4 = this.f;
        if (yl0Var4 != null) {
            yl0Var4.a(ul0Var);
        }
        yl0 yl0Var5 = this.g;
        if (yl0Var5 != null) {
            yl0Var5.a(ul0Var);
        }
        yl0 yl0Var6 = this.h;
        if (yl0Var6 != null) {
            yl0Var6.a(ul0Var);
        }
        yl0 yl0Var7 = this.i;
        if (yl0Var7 != null) {
            yl0Var7.a(ul0Var);
        }
        xh3 xh3Var = this.k;
        if (xh3Var != null) {
            xh3Var.a(ul0Var);
        }
        xh3 xh3Var2 = this.l;
        if (xh3Var2 != null) {
            xh3Var2.a(ul0Var);
        }
    }

    public final boolean c(cd cdVar, Object obj) {
        Float fValueOf = Float.valueOf(100.0f);
        Float fValueOf2 = Float.valueOf(0.0f);
        if (obj == f35.a) {
            yl0 yl0Var = this.f;
            if (yl0Var == null) {
                this.f = new xi8(cdVar, new PointF());
                return true;
            }
            yl0Var.k(cdVar);
            return true;
        }
        if (obj == f35.b) {
            yl0 yl0Var2 = this.g;
            if (yl0Var2 == null) {
                this.g = new xi8(cdVar, new PointF());
                return true;
            }
            yl0Var2.k(cdVar);
            return true;
        }
        if (obj == f35.c) {
            yl0 yl0Var3 = this.g;
            if (yl0Var3 instanceof ck7) {
                ((ck7) yl0Var3).m = cdVar;
                return true;
            }
        }
        if (obj == f35.d) {
            yl0 yl0Var4 = this.g;
            if (yl0Var4 instanceof ck7) {
                ((ck7) yl0Var4).n = cdVar;
                return true;
            }
        }
        if (obj == f35.j) {
            yl0 yl0Var5 = this.h;
            if (yl0Var5 == null) {
                this.h = new xi8(cdVar, new p27());
                return true;
            }
            yl0Var5.k(cdVar);
            return true;
        }
        if (obj == f35.k) {
            yl0 yl0Var6 = this.i;
            if (yl0Var6 == null) {
                this.i = new xi8(cdVar, fValueOf2);
                return true;
            }
            yl0Var6.k(cdVar);
            return true;
        }
        if (obj == 3) {
            yl0 yl0Var7 = this.j;
            if (yl0Var7 == null) {
                this.j = new xi8(cdVar, 100);
                return true;
            }
            yl0Var7.k(cdVar);
            return true;
        }
        if (obj == f35.x) {
            yl0 yl0Var8 = this.m;
            if (yl0Var8 == null) {
                this.m = new xi8(cdVar, fValueOf);
                return true;
            }
            yl0Var8.k(cdVar);
            return true;
        }
        if (obj == f35.y) {
            yl0 yl0Var9 = this.n;
            if (yl0Var9 == null) {
                this.n = new xi8(cdVar, fValueOf);
                return true;
            }
            yl0Var9.k(cdVar);
            return true;
        }
        if (obj == f35.l) {
            if (this.k == null) {
                this.k = new xh3(Collections.singletonList(new wo4(fValueOf2)));
            }
            this.k.k(cdVar);
            return true;
        }
        if (obj != f35.m) {
            return false;
        }
        if (this.l == null) {
            this.l = new xh3(Collections.singletonList(new wo4(fValueOf2)));
        }
        this.l.k(cdVar);
        return true;
    }

    public final void d() {
        for (int i = 0; i < 9; i++) {
            this.e[i] = 0.0f;
        }
    }

    public final Matrix e() {
        PointF pointF;
        Matrix matrix = this.a;
        matrix.reset();
        yl0 yl0Var = this.g;
        if (yl0Var != null && (pointF = (PointF) yl0Var.f()) != null) {
            float f = pointF.x;
            if (f != 0.0f || pointF.y != 0.0f) {
                matrix.preTranslate(f, pointF.y);
            }
        }
        yl0 yl0Var2 = this.i;
        if (yl0Var2 != null) {
            float fFloatValue = yl0Var2 instanceof xi8 ? ((Float) yl0Var2.f()).floatValue() : ((xh3) yl0Var2).l();
            if (fFloatValue != 0.0f) {
                matrix.preRotate(fFloatValue);
            }
        }
        xh3 xh3Var = this.k;
        if (xh3Var != null) {
            xh3 xh3Var2 = this.l;
            float fCos = xh3Var2 == null ? 0.0f : (float) Math.cos(Math.toRadians((-xh3Var2.l()) + 90.0f));
            xh3 xh3Var3 = this.l;
            float fSin = xh3Var3 == null ? 1.0f : (float) Math.sin(Math.toRadians((-xh3Var3.l()) + 90.0f));
            float fTan = (float) Math.tan(Math.toRadians(xh3Var.l()));
            d();
            float[] fArr = this.e;
            fArr[0] = fCos;
            fArr[1] = fSin;
            float f2 = -fSin;
            fArr[3] = f2;
            fArr[4] = fCos;
            fArr[8] = 1.0f;
            Matrix matrix2 = this.b;
            matrix2.setValues(fArr);
            d();
            fArr[0] = 1.0f;
            fArr[3] = fTan;
            fArr[4] = 1.0f;
            fArr[8] = 1.0f;
            Matrix matrix3 = this.c;
            matrix3.setValues(fArr);
            d();
            fArr[0] = fCos;
            fArr[1] = f2;
            fArr[3] = fSin;
            fArr[4] = fCos;
            fArr[8] = 1.0f;
            Matrix matrix4 = this.d;
            matrix4.setValues(fArr);
            matrix3.preConcat(matrix2);
            matrix4.preConcat(matrix3);
            matrix.preConcat(matrix4);
        }
        yl0 yl0Var3 = this.h;
        if (yl0Var3 != null) {
            p27 p27Var = (p27) yl0Var3.f();
            float f3 = p27Var.a;
            if (f3 != 1.0f || p27Var.b != 1.0f) {
                matrix.preScale(f3, p27Var.b);
            }
        }
        yl0 yl0Var4 = this.f;
        if (yl0Var4 != null) {
            PointF pointF2 = (PointF) yl0Var4.f();
            float f4 = pointF2.x;
            if (f4 != 0.0f || pointF2.y != 0.0f) {
                matrix.preTranslate(-f4, -pointF2.y);
            }
        }
        return matrix;
    }

    public final Matrix f(float f) {
        yl0 yl0Var = this.g;
        PointF pointF = yl0Var == null ? null : (PointF) yl0Var.f();
        yl0 yl0Var2 = this.h;
        p27 p27Var = yl0Var2 == null ? null : (p27) yl0Var2.f();
        Matrix matrix = this.a;
        matrix.reset();
        if (pointF != null) {
            matrix.preTranslate(pointF.x * f, pointF.y * f);
        }
        if (p27Var != null) {
            double d = f;
            matrix.preScale((float) Math.pow(p27Var.a, d), (float) Math.pow(p27Var.b, d));
        }
        yl0 yl0Var3 = this.i;
        if (yl0Var3 != null) {
            float fFloatValue = ((Float) yl0Var3.f()).floatValue();
            yl0 yl0Var4 = this.f;
            PointF pointF2 = yl0Var4 != null ? (PointF) yl0Var4.f() : null;
            matrix.preRotate(fFloatValue * f, pointF2 == null ? 0.0f : pointF2.x, pointF2 != null ? pointF2.y : 0.0f);
        }
        return matrix;
    }
}
