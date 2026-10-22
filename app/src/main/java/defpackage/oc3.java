package defpackage;

import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class oc3 implements rp2, ul0, ro4 {
    public final Path a;
    public final vp4 b;
    public final am0 c;
    public final String d;
    public final boolean e;
    public final ArrayList f;
    public final tl1 g;
    public final qd4 h;
    public xi8 i;
    public final c35 j;
    public yl0 k;
    public float l;
    public final hq2 m;

    public oc3(c35 c35Var, am0 am0Var, zb7 zb7Var) {
        Path path = new Path();
        this.a = path;
        this.b = new vp4(1, 0);
        this.f = new ArrayList();
        this.c = am0Var;
        String str = zb7Var.c;
        dc dcVar = zb7Var.e;
        ac acVar = zb7Var.d;
        this.d = str;
        this.e = zb7Var.f;
        this.j = c35Var;
        if (am0Var.l() != null) {
            yl0 yl0VarN = ((bc) am0Var.l().b).n();
            this.k = yl0VarN;
            yl0VarN.a(this);
            am0Var.g(this.k);
        }
        if (am0Var.m() != null) {
            this.m = new hq2(this, am0Var, am0Var.m());
        }
        if (acVar == null) {
            this.g = null;
            this.h = null;
            return;
        }
        path.setFillType(zb7Var.b);
        yl0 yl0VarN2 = acVar.n();
        this.g = (tl1) yl0VarN2;
        yl0VarN2.a(this);
        am0Var.g(yl0VarN2);
        yl0 yl0VarN3 = dcVar.n();
        this.h = (qd4) yl0VarN3;
        yl0VarN3.a(this);
        am0Var.g(yl0VarN3);
    }

    @Override // defpackage.ul0
    public final void b() {
        this.j.invalidateSelf();
    }

    @Override // defpackage.gu1
    public final void c(List list, List list2) {
        for (int i = 0; i < list2.size(); i++) {
            gu1 gu1Var = (gu1) list2.get(i);
            if (gu1Var instanceof hy5) {
                this.f.add((hy5) gu1Var);
            }
        }
    }

    @Override // defpackage.qo4
    public final void d(po4 po4Var, int i, ArrayList arrayList, po4 po4Var2) {
        sg5.e(po4Var, i, arrayList, po4Var2, this);
    }

    @Override // defpackage.rp2
    public final void e(RectF rectF, Matrix matrix, boolean z) {
        Path path = this.a;
        path.reset();
        int i = 0;
        while (true) {
            ArrayList arrayList = this.f;
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
        if (obj == 1) {
            this.g.k(cdVar);
            return;
        }
        if (obj == 4) {
            this.h.k(cdVar);
            return;
        }
        ColorFilter colorFilter = f35.F;
        am0 am0Var = this.c;
        if (obj == colorFilter) {
            xi8 xi8Var = this.i;
            if (xi8Var != null) {
                am0Var.p(xi8Var);
            }
            xi8 xi8Var2 = new xi8(cdVar, null);
            this.i = xi8Var2;
            xi8Var2.a(this);
            am0Var.g(this.i);
            return;
        }
        if (obj == f35.e) {
            yl0 yl0Var = this.k;
            if (yl0Var != null) {
                yl0Var.k(cdVar);
                return;
            }
            xi8 xi8Var3 = new xi8(cdVar, null);
            this.k = xi8Var3;
            xi8Var3.a(this);
            am0Var.g(this.k);
            return;
        }
        hq2 hq2Var = this.m;
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

    @Override // defpackage.gu1
    public final String getName() {
        return this.d;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // defpackage.rp2
    public final void h(Canvas canvas, Matrix matrix, int i) {
        BlurMaskFilter blurMaskFilter;
        if (this.e) {
            return;
        }
        tl1 tl1Var = this.g;
        int iL = tl1Var.l(tl1Var.b(), tl1Var.d());
        int iIntValue = (int) ((((i / 255.0f) * ((Integer) this.h.f()).intValue()) / 100.0f) * 255.0f);
        PointF pointF = sg5.a;
        int i2 = 0;
        int iMax = (Math.max(0, Math.min(255, iIntValue)) << 24) | (iL & 16777215);
        vp4 vp4Var = this.b;
        vp4Var.setColor(iMax);
        xi8 xi8Var = this.i;
        if (xi8Var != null) {
            vp4Var.setColorFilter((ColorFilter) xi8Var.f());
        }
        yl0 yl0Var = this.k;
        if (yl0Var != null) {
            float fFloatValue = ((Float) yl0Var.f()).floatValue();
            if (fFloatValue == 0.0f) {
                vp4Var.setMaskFilter(null);
            } else if (fFloatValue != this.l) {
                am0 am0Var = this.c;
                if (am0Var.y == fFloatValue) {
                    blurMaskFilter = am0Var.z;
                } else {
                    BlurMaskFilter blurMaskFilter2 = new BlurMaskFilter(fFloatValue / 2.0f, BlurMaskFilter.Blur.NORMAL);
                    am0Var.z = blurMaskFilter2;
                    am0Var.y = fFloatValue;
                    blurMaskFilter = blurMaskFilter2;
                }
                vp4Var.setMaskFilter(blurMaskFilter);
            }
            this.l = fFloatValue;
        }
        hq2 hq2Var = this.m;
        if (hq2Var != null) {
            hq2Var.a(vp4Var);
        }
        Path path = this.a;
        path.reset();
        while (true) {
            ArrayList arrayList = this.f;
            if (i2 >= arrayList.size()) {
                canvas.drawPath(path, vp4Var);
                zv1.d();
                return;
            } else {
                path.addPath(((hy5) arrayList.get(i2)).a(), matrix);
                i2++;
            }
        }
    }
}
