package defpackage;

import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class i14 implements rp2, ul0, ro4 {
    public final String a;
    public final boolean b;
    public final am0 c;
    public final v15 d = new v15();
    public final v15 e = new v15();
    public final Path f;
    public final vp4 g;
    public final RectF h;
    public final ArrayList i;
    public final int j;
    public final f14 k;
    public final qd4 l;
    public final e26 m;
    public final e26 n;
    public xi8 o;
    public xi8 p;
    public final c35 q;
    public final int r;
    public yl0 s;
    public float t;
    public final hq2 u;

    public i14(c35 c35Var, am0 am0Var, h14 h14Var) {
        Path path = new Path();
        this.f = path;
        this.g = new vp4(1, 0);
        this.h = new RectF();
        this.i = new ArrayList();
        this.t = 0.0f;
        this.c = am0Var;
        this.a = h14Var.g;
        this.b = h14Var.h;
        this.q = c35Var;
        this.j = h14Var.a;
        path.setFillType(h14Var.b);
        this.r = (int) (c35Var.b.b() / 32.0f);
        yl0 yl0VarN = h14Var.c.n();
        this.k = (f14) yl0VarN;
        yl0VarN.a(this);
        am0Var.g(yl0VarN);
        yl0 yl0VarN2 = h14Var.d.n();
        this.l = (qd4) yl0VarN2;
        yl0VarN2.a(this);
        am0Var.g(yl0VarN2);
        yl0 yl0VarN3 = h14Var.e.n();
        this.m = (e26) yl0VarN3;
        yl0VarN3.a(this);
        am0Var.g(yl0VarN3);
        yl0 yl0VarN4 = h14Var.f.n();
        this.n = (e26) yl0VarN4;
        yl0VarN4.a(this);
        am0Var.g(yl0VarN4);
        if (am0Var.l() != null) {
            yl0 yl0VarN5 = ((bc) am0Var.l().b).n();
            this.s = yl0VarN5;
            yl0VarN5.a(this);
            am0Var.g(this.s);
        }
        if (am0Var.m() != null) {
            this.u = new hq2(this, am0Var, am0Var.m());
        }
    }

    @Override // defpackage.ul0
    public final void b() {
        this.q.invalidateSelf();
    }

    @Override // defpackage.gu1
    public final void c(List list, List list2) {
        for (int i = 0; i < list2.size(); i++) {
            gu1 gu1Var = (gu1) list2.get(i);
            if (gu1Var instanceof hy5) {
                this.i.add((hy5) gu1Var);
            }
        }
    }

    @Override // defpackage.qo4
    public final void d(po4 po4Var, int i, ArrayList arrayList, po4 po4Var2) {
        sg5.e(po4Var, i, arrayList, po4Var2, this);
    }

    @Override // defpackage.rp2
    public final void e(RectF rectF, Matrix matrix, boolean z) {
        Path path = this.f;
        path.reset();
        int i = 0;
        while (true) {
            ArrayList arrayList = this.i;
            if (i >= arrayList.size()) {
                path.computeBounds(rectF, false);
                rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
                return;
            } else {
                path.addPath(((hy5) arrayList.get(i)).a(), matrix);
                i++;
            }
        }
    }

    @Override // defpackage.qo4
    public final void f(cd cdVar, Object obj) {
        PointF pointF = f35.a;
        if (obj == 4) {
            this.l.k(cdVar);
            return;
        }
        ColorFilter colorFilter = f35.F;
        am0 am0Var = this.c;
        if (obj == colorFilter) {
            xi8 xi8Var = this.o;
            if (xi8Var != null) {
                am0Var.p(xi8Var);
            }
            xi8 xi8Var2 = new xi8(cdVar, null);
            this.o = xi8Var2;
            xi8Var2.a(this);
            am0Var.g(this.o);
            return;
        }
        if (obj == f35.G) {
            xi8 xi8Var3 = this.p;
            if (xi8Var3 != null) {
                am0Var.p(xi8Var3);
            }
            this.d.a();
            this.e.a();
            xi8 xi8Var4 = new xi8(cdVar, null);
            this.p = xi8Var4;
            xi8Var4.a(this);
            am0Var.g(this.p);
            return;
        }
        if (obj == f35.e) {
            yl0 yl0Var = this.s;
            if (yl0Var != null) {
                yl0Var.k(cdVar);
                return;
            }
            xi8 xi8Var5 = new xi8(cdVar, null);
            this.s = xi8Var5;
            xi8Var5.a(this);
            am0Var.g(this.s);
            return;
        }
        hq2 hq2Var = this.u;
        if (obj == 5 && hq2Var != null) {
            hq2Var.b.k(cdVar);
            return;
        }
        if (obj == f35.B && hq2Var != null) {
            hq2Var.c(cdVar);
            return;
        }
        if (obj == f35.C && hq2Var != null) {
            hq2Var.d.k(cdVar);
            return;
        }
        if (obj == f35.D && hq2Var != null) {
            hq2Var.e.k(cdVar);
        } else {
            if (obj != f35.E || hq2Var == null) {
                return;
            }
            hq2Var.f.k(cdVar);
        }
    }

    public final int[] g(int[] iArr) {
        xi8 xi8Var = this.p;
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
        return this.a;
    }

    @Override // defpackage.rp2
    public final void h(Canvas canvas, Matrix matrix, int i) {
        Shader shader;
        Shader radialGradient;
        if (this.b) {
            return;
        }
        Path path = this.f;
        path.reset();
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.i;
            if (i2 >= arrayList.size()) {
                break;
            }
            path.addPath(((hy5) arrayList.get(i2)).a(), matrix);
            i2++;
        }
        path.computeBounds(this.h, false);
        int i3 = this.j;
        f14 f14Var = this.k;
        e26 e26Var = this.n;
        e26 e26Var2 = this.m;
        if (i3 == 1) {
            long jI = i();
            v15 v15Var = this.d;
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
            v15 v15Var2 = this.e;
            shader = (RadialGradient) v15Var2.b(jI2);
            if (shader == null) {
                PointF pointF3 = (PointF) e26Var2.f();
                PointF pointF4 = (PointF) e26Var.f();
                e14 e14Var2 = (e14) f14Var.f();
                int[] iArrG = g(e14Var2.b);
                float[] fArr = e14Var2.a;
                float f = pointF3.x;
                float f2 = pointF3.y;
                float fHypot = (float) Math.hypot(pointF4.x - f, pointF4.y - f2);
                if (fHypot <= 0.0f) {
                    fHypot = 0.001f;
                }
                radialGradient = new RadialGradient(f, f2, fHypot, iArrG, fArr, Shader.TileMode.CLAMP);
                v15Var2.e(radialGradient, jI2);
                shader = radialGradient;
            }
        }
        shader.setLocalMatrix(matrix);
        vp4 vp4Var = this.g;
        vp4Var.setShader(shader);
        xi8 xi8Var = this.o;
        if (xi8Var != null) {
            vp4Var.setColorFilter((ColorFilter) xi8Var.f());
        }
        yl0 yl0Var = this.s;
        if (yl0Var != null) {
            float fFloatValue = ((Float) yl0Var.f()).floatValue();
            if (fFloatValue == 0.0f) {
                vp4Var.setMaskFilter(null);
            } else if (fFloatValue != this.t) {
                vp4Var.setMaskFilter(new BlurMaskFilter(fFloatValue, BlurMaskFilter.Blur.NORMAL));
            }
            this.t = fFloatValue;
        }
        hq2 hq2Var = this.u;
        if (hq2Var != null) {
            hq2Var.a(vp4Var);
        }
        int iIntValue = (int) ((((i / 255.0f) * ((Integer) this.l.f()).intValue()) / 100.0f) * 255.0f);
        PointF pointF5 = sg5.a;
        vp4Var.setAlpha(Math.max(0, Math.min(255, iIntValue)));
        canvas.drawPath(path, vp4Var);
        zv1.d();
    }

    public final int i() {
        float f = this.m.d;
        float f2 = this.r;
        int iRound = Math.round(f * f2);
        int iRound2 = Math.round(this.n.d * f2);
        int iRound3 = Math.round(this.k.d * f2);
        int i = iRound != 0 ? 527 * iRound : 17;
        if (iRound2 != 0) {
            i = i * 31 * iRound2;
        }
        return iRound3 != 0 ? i * 31 * iRound3 : i;
    }
}
