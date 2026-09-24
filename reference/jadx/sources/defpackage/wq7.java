package defpackage;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PointF;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wq7 extends qn0 {
    public final am0 r;
    public final String s;
    public final boolean t;
    public final tl1 u;
    public xi8 v;

    /* JADX WARN: Illegal instructions before constructor call */
    public wq7(c35 c35Var, am0 am0Var, pc7 pc7Var) {
        int iA = dj7.A(pc7Var.g);
        Paint.Cap cap = iA != 0 ? iA != 1 ? Paint.Cap.SQUARE : Paint.Cap.ROUND : Paint.Cap.BUTT;
        int iA2 = dj7.A(pc7Var.h);
        super(c35Var, am0Var, cap, iA2 != 0 ? iA2 != 1 ? iA2 != 2 ? null : Paint.Join.BEVEL : Paint.Join.ROUND : Paint.Join.MITER, pc7Var.i, pc7Var.e, pc7Var.f, pc7Var.c, pc7Var.b);
        this.r = am0Var;
        this.s = pc7Var.a;
        this.t = pc7Var.j;
        yl0 yl0VarN = pc7Var.d.n();
        this.u = (tl1) yl0VarN;
        yl0VarN.a(this);
        am0Var.g(yl0VarN);
    }

    @Override // defpackage.qn0, defpackage.qo4
    public final void f(cd cdVar, Object obj) {
        super.f(cdVar, obj);
        PointF pointF = f35.a;
        tl1 tl1Var = this.u;
        if (obj == 2) {
            tl1Var.k(cdVar);
            return;
        }
        if (obj == f35.F) {
            xi8 xi8Var = this.v;
            am0 am0Var = this.r;
            if (xi8Var != null) {
                am0Var.p(xi8Var);
            }
            xi8 xi8Var2 = new xi8(cdVar, null);
            this.v = xi8Var2;
            xi8Var2.a(this);
            am0Var.g(tl1Var);
        }
    }

    @Override // defpackage.gu1
    public final String getName() {
        return this.s;
    }

    @Override // defpackage.qn0, defpackage.rp2
    public final void h(Canvas canvas, Matrix matrix, int i) {
        if (this.t) {
            return;
        }
        tl1 tl1Var = this.u;
        int iL = tl1Var.l(tl1Var.b(), tl1Var.d());
        vp4 vp4Var = this.i;
        vp4Var.setColor(iL);
        xi8 xi8Var = this.v;
        if (xi8Var != null) {
            vp4Var.setColorFilter((ColorFilter) xi8Var.f());
        }
        super.h(canvas, matrix, i);
    }
}
