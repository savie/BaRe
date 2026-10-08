package defpackage;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nj6 implements rp2, hy5, n14, ul0, ro4 {
    public final Matrix a = new Matrix();
    public final Path b = new Path();
    public final c35 c;
    public final am0 d;
    public final String e;
    public final boolean f;
    public final xh3 g;
    public final xh3 h;
    public final k98 i;
    public iu1 j;

    public nj6(c35 c35Var, am0 am0Var, mj6 mj6Var) {
        this.c = c35Var;
        this.d = am0Var;
        this.e = mj6Var.a;
        this.f = mj6Var.e;
        yl0 yl0VarN = mj6Var.b.n();
        this.g = (xh3) yl0VarN;
        am0Var.g(yl0VarN);
        yl0VarN.a(this);
        yl0 yl0VarN2 = mj6Var.c.n();
        this.h = (xh3) yl0VarN2;
        am0Var.g(yl0VarN2);
        yl0VarN2.a(this);
        mc mcVar = mj6Var.d;
        mcVar.getClass();
        k98 k98Var = new k98(mcVar);
        this.i = k98Var;
        k98Var.a(am0Var);
        k98Var.b(this);
    }

    @Override // defpackage.hy5
    public final Path a() {
        Path pathA = this.j.a();
        Path path = this.b;
        path.reset();
        float fFloatValue = ((Float) this.g.f()).floatValue();
        float fFloatValue2 = ((Float) this.h.f()).floatValue();
        for (int i = ((int) fFloatValue) - 1; i >= 0; i--) {
            Matrix matrixF = this.i.f(i + fFloatValue2);
            Matrix matrix = this.a;
            matrix.set(matrixF);
            path.addPath(pathA, matrix);
        }
        return path;
    }

    @Override // defpackage.ul0
    public final void b() {
        this.c.invalidateSelf();
    }

    @Override // defpackage.gu1
    public final void c(List list, List list2) {
        this.j.c(list, list2);
    }

    @Override // defpackage.qo4
    public final void d(po4 po4Var, int i, ArrayList arrayList, po4 po4Var2) {
        sg5.e(po4Var, i, arrayList, po4Var2, this);
    }

    @Override // defpackage.rp2
    public final void e(RectF rectF, Matrix matrix, boolean z) {
        this.j.e(rectF, matrix, z);
    }

    @Override // defpackage.qo4
    public final void f(cd cdVar, Object obj) {
        if (this.i.c(cdVar, obj)) {
            return;
        }
        if (obj == f35.p) {
            this.g.k(cdVar);
        } else if (obj == f35.q) {
            this.h.k(cdVar);
        }
    }

    @Override // defpackage.n14
    public final void g(ListIterator listIterator) {
        if (this.j != null) {
            return;
        }
        while (listIterator.hasPrevious() && listIterator.previous() != this) {
        }
        ArrayList arrayList = new ArrayList();
        while (listIterator.hasPrevious()) {
            arrayList.add((gu1) listIterator.previous());
            listIterator.remove();
        }
        Collections.reverse(arrayList);
        this.j = new iu1(this.c, this.d, "Repeater", this.f, arrayList, null);
    }

    @Override // defpackage.gu1
    public final String getName() {
        return this.e;
    }

    @Override // defpackage.rp2
    public final void h(Canvas canvas, Matrix matrix, int i) {
        float fFloatValue = ((Float) this.g.f()).floatValue();
        float fFloatValue2 = ((Float) this.h.f()).floatValue();
        k98 k98Var = this.i;
        float fFloatValue3 = ((Float) k98Var.m.f()).floatValue() / 100.0f;
        float fFloatValue4 = ((Float) k98Var.n.f()).floatValue() / 100.0f;
        for (int i2 = ((int) fFloatValue) - 1; i2 >= 0; i2--) {
            Matrix matrix2 = this.a;
            matrix2.set(matrix);
            float f = i2;
            matrix2.preConcat(k98Var.f(f + fFloatValue2));
            this.j.h(canvas, matrix2, (int) (sg5.d(fFloatValue3, fFloatValue4, f / fFloatValue) * i));
        }
    }
}
