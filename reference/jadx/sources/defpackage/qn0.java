package defpackage;

import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class qn0 implements ul0, ro4, rp2 {
    public final c35 e;
    public final am0 f;
    public final float[] h;
    public final vp4 i;
    public final xh3 j;
    public final qd4 k;
    public final ArrayList l;
    public final xh3 m;
    public xi8 n;
    public yl0 o;
    public float p;
    public final hq2 q;
    public final PathMeasure a = new PathMeasure();
    public final Path b = new Path();
    public final Path c = new Path();
    public final RectF d = new RectF();
    public final ArrayList g = new ArrayList();

    public qn0(c35 c35Var, am0 am0Var, Paint.Cap cap, Paint.Join join, float f, dc dcVar, bc bcVar, ArrayList arrayList, bc bcVar2) {
        vp4 vp4Var = new vp4(1, 0);
        this.i = vp4Var;
        this.p = 0.0f;
        this.e = c35Var;
        this.f = am0Var;
        vp4Var.setStyle(Paint.Style.STROKE);
        vp4Var.setStrokeCap(cap);
        vp4Var.setStrokeJoin(join);
        vp4Var.setStrokeMiter(f);
        this.k = (qd4) dcVar.n();
        this.j = (xh3) bcVar.n();
        if (bcVar2 == null) {
            this.m = null;
        } else {
            this.m = (xh3) bcVar2.n();
        }
        this.l = new ArrayList(arrayList.size());
        this.h = new float[arrayList.size()];
        for (int i = 0; i < arrayList.size(); i++) {
            this.l.add(((bc) arrayList.get(i)).n());
        }
        am0Var.g(this.k);
        am0Var.g(this.j);
        for (int i2 = 0; i2 < this.l.size(); i2++) {
            am0Var.g((yl0) this.l.get(i2));
        }
        xh3 xh3Var = this.m;
        if (xh3Var != null) {
            am0Var.g(xh3Var);
        }
        this.k.a(this);
        this.j.a(this);
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            ((yl0) this.l.get(i3)).a(this);
        }
        xh3 xh3Var2 = this.m;
        if (xh3Var2 != null) {
            xh3Var2.a(this);
        }
        if (am0Var.l() != null) {
            yl0 yl0VarN = ((bc) am0Var.l().b).n();
            this.o = yl0VarN;
            yl0VarN.a(this);
            am0Var.g(this.o);
        }
        if (am0Var.m() != null) {
            this.q = new hq2(this, am0Var, am0Var.m());
        }
    }

    @Override // defpackage.ul0
    public final void b() {
        this.e.invalidateSelf();
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0050  */
    /* JADX WARN: Code duplicated, block: B:25:0x0054 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:26:0x0056  */
    /* JADX WARN: Code duplicated, block: B:39:0x0062 A[SYNTHETIC] */
    @Override // defpackage.gu1
    public final void c(List list, List list2) {
        ArrayList arrayList;
        ArrayList arrayList2 = (ArrayList) list;
        pn0 pn0Var = null;
        nb8 nb8Var = null;
        for (int size = arrayList2.size() - 1; size >= 0; size--) {
            gu1 gu1Var = (gu1) arrayList2.get(size);
            if (gu1Var instanceof nb8) {
                nb8 nb8Var2 = (nb8) gu1Var;
                if (nb8Var2.c == 2) {
                    nb8Var = nb8Var2;
                }
            }
        }
        if (nb8Var != null) {
            nb8Var.d(this);
        }
        int size2 = list2.size();
        while (true) {
            size2--;
            arrayList = this.g;
            if (size2 < 0) {
                break;
            }
            gu1 gu1Var2 = (gu1) list2.get(size2);
            if (gu1Var2 instanceof nb8) {
                nb8 nb8Var3 = (nb8) gu1Var2;
                if (nb8Var3.c == 2) {
                    if (pn0Var != null) {
                        arrayList.add(pn0Var);
                    }
                    pn0 pn0Var2 = new pn0(nb8Var3);
                    nb8Var3.d(this);
                    pn0Var = pn0Var2;
                } else if (!(gu1Var2 instanceof hy5)) {
                    if (pn0Var == null) {
                        pn0Var = new pn0(nb8Var);
                    }
                    pn0Var.a.add((hy5) gu1Var2);
                }
            } else if (!(gu1Var2 instanceof hy5)) {
                if (pn0Var == null) {
                    pn0Var = new pn0(nb8Var);
                }
                pn0Var.a.add((hy5) gu1Var2);
            }
        }
        if (pn0Var != null) {
            arrayList.add(pn0Var);
        }
    }

    @Override // defpackage.qo4
    public final void d(po4 po4Var, int i, ArrayList arrayList, po4 po4Var2) {
        sg5.e(po4Var, i, arrayList, po4Var2, this);
    }

    @Override // defpackage.rp2
    public final void e(RectF rectF, Matrix matrix, boolean z) {
        Path path = this.b;
        path.reset();
        int i = 0;
        while (true) {
            ArrayList arrayList = this.g;
            if (i >= arrayList.size()) {
                RectF rectF2 = this.d;
                path.computeBounds(rectF2, false);
                float fL = this.j.l() / 2.0f;
                rectF2.set(rectF2.left - fL, rectF2.top - fL, rectF2.right + fL, rectF2.bottom + fL);
                rectF.set(rectF2);
                rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
                zv1.d();
                return;
            }
            pn0 pn0Var = (pn0) arrayList.get(i);
            for (int i2 = 0; i2 < pn0Var.a.size(); i2++) {
                path.addPath(((hy5) pn0Var.a.get(i2)).a(), matrix);
            }
            i++;
        }
    }

    public void f(cd cdVar, Object obj) {
        PointF pointF = f35.a;
        if (obj == 4) {
            this.k.k(cdVar);
            return;
        }
        if (obj == f35.n) {
            this.j.k(cdVar);
            return;
        }
        ColorFilter colorFilter = f35.F;
        am0 am0Var = this.f;
        if (obj == colorFilter) {
            xi8 xi8Var = this.n;
            if (xi8Var != null) {
                am0Var.p(xi8Var);
            }
            xi8 xi8Var2 = new xi8(cdVar, null);
            this.n = xi8Var2;
            xi8Var2.a(this);
            am0Var.g(this.n);
            return;
        }
        if (obj == f35.e) {
            yl0 yl0Var = this.o;
            if (yl0Var != null) {
                yl0Var.k(cdVar);
                return;
            }
            xi8 xi8Var3 = new xi8(cdVar, null);
            this.o = xi8Var3;
            xi8Var3.a(this);
            am0Var.g(this.o);
            return;
        }
        hq2 hq2Var = this.q;
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

    /* JADX WARN: Code duplicated, block: B:75:0x01f3  */
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
    public void h(Canvas canvas, Matrix matrix, int i) {
        float[] fArr;
        int i2;
        float f;
        BlurMaskFilter blurMaskFilter;
        qn0 qn0Var = this;
        float[] fArr2 = (float[]) mi8.d.get();
        boolean z = false;
        fArr2[0] = 0.0f;
        int i3 = 1;
        fArr2[1] = 0.0f;
        fArr2[2] = 37394.73f;
        fArr2[3] = 39575.234f;
        matrix.mapPoints(fArr2);
        if (fArr2[0] == fArr2[2] || fArr2[1] == fArr2[3]) {
            zv1.d();
            return;
        }
        qd4 qd4Var = qn0Var.k;
        float fL = (i / 255.0f) * qd4Var.l(qd4Var.b(), qd4Var.d());
        float f2 = 100.0f;
        PointF pointF = sg5.a;
        int iMax = Math.max(0, Math.min(255, (int) ((fL / 100.0f) * 255.0f)));
        vp4 vp4Var = qn0Var.i;
        vp4Var.setAlpha(iMax);
        vp4Var.setStrokeWidth(mi8.d(matrix) * qn0Var.j.l());
        if (vp4Var.getStrokeWidth() <= 0.0f) {
            zv1.d();
            return;
        }
        ArrayList arrayList = qn0Var.l;
        if (arrayList.isEmpty()) {
            zv1.d();
        } else {
            float fD = mi8.d(matrix);
            int i4 = 0;
            while (true) {
                int size = arrayList.size();
                fArr = qn0Var.h;
                if (i4 >= size) {
                    break;
                }
                float fFloatValue = ((Float) ((yl0) arrayList.get(i4)).f()).floatValue();
                fArr[i4] = fFloatValue;
                if (i4 % 2 == 0) {
                    if (fFloatValue < 1.0f) {
                        fArr[i4] = 1.0f;
                    }
                } else if (fFloatValue < 0.1f) {
                    fArr[i4] = 0.1f;
                }
                fArr[i4] = fArr[i4] * fD;
                i4++;
            }
            xh3 xh3Var = qn0Var.m;
            vp4Var.setPathEffect(new DashPathEffect(fArr, xh3Var == null ? 0.0f : ((Float) xh3Var.f()).floatValue() * fD));
            zv1.d();
        }
        xi8 xi8Var = qn0Var.n;
        if (xi8Var != null) {
            vp4Var.setColorFilter((ColorFilter) xi8Var.f());
        }
        yl0 yl0Var = qn0Var.o;
        if (yl0Var != null) {
            float fFloatValue2 = ((Float) yl0Var.f()).floatValue();
            if (fFloatValue2 == 0.0f) {
                vp4Var.setMaskFilter(null);
            } else if (fFloatValue2 != qn0Var.p) {
                am0 am0Var = qn0Var.f;
                if (am0Var.y == fFloatValue2) {
                    blurMaskFilter = am0Var.z;
                } else {
                    BlurMaskFilter blurMaskFilter2 = new BlurMaskFilter(fFloatValue2 / 2.0f, BlurMaskFilter.Blur.NORMAL);
                    am0Var.z = blurMaskFilter2;
                    am0Var.y = fFloatValue2;
                    blurMaskFilter = blurMaskFilter2;
                }
                vp4Var.setMaskFilter(blurMaskFilter);
            }
            qn0Var.p = fFloatValue2;
        }
        hq2 hq2Var = qn0Var.q;
        if (hq2Var != null) {
            hq2Var.a(vp4Var);
        }
        int i5 = 0;
        while (true) {
            ArrayList arrayList2 = qn0Var.g;
            if (i5 >= arrayList2.size()) {
                zv1.d();
                return;
            }
            pn0 pn0Var = (pn0) arrayList2.get(i5);
            nb8 nb8Var = pn0Var.b;
            ArrayList arrayList3 = pn0Var.a;
            Path path = qn0Var.b;
            if (nb8Var != null) {
                path.reset();
                for (int size2 = arrayList3.size() - i3; size2 >= 0; size2--) {
                    path.addPath(((hy5) arrayList3.get(size2)).a(), matrix);
                }
                PathMeasure pathMeasure = qn0Var.a;
                pathMeasure.setPath(path, z);
                float length = pathMeasure.getLength();
                while (pathMeasure.nextContour()) {
                    length += pathMeasure.getLength();
                }
                float fFloatValue3 = (((Float) nb8Var.f.f()).floatValue() * length) / 360.0f;
                float fFloatValue4 = ((((Float) nb8Var.d.f()).floatValue() / f2) * length) + fFloatValue3;
                float fFloatValue5 = ((((Float) nb8Var.e.f()).floatValue() / f2) * length) + fFloatValue3;
                int size3 = arrayList3.size() - i3;
                float f3 = 0.0f;
                while (size3 >= 0) {
                    int i6 = i3;
                    Path pathA = ((hy5) arrayList3.get(size3)).a();
                    Path path2 = qn0Var.c;
                    path2.set(pathA);
                    path2.transform(matrix);
                    pathMeasure.setPath(path2, z);
                    float length2 = pathMeasure.getLength();
                    if (fFloatValue5 > length) {
                        float f4 = fFloatValue5 - length;
                        if (f4 >= f3 + length2 || f3 >= f4) {
                            f = f3 + length2;
                            if (f < fFloatValue4 && f3 <= fFloatValue5) {
                                if (f > fFloatValue5 || fFloatValue4 >= f3) {
                                    mi8.a(path2, fFloatValue4 < f3 ? 0.0f : (fFloatValue4 - f3) / length2, fFloatValue5 > f ? 1.0f : (fFloatValue5 - f3) / length2, 0.0f);
                                    canvas.drawPath(path2, vp4Var);
                                } else {
                                    canvas.drawPath(path2, vp4Var);
                                }
                            }
                        } else {
                            mi8.a(path2, fFloatValue4 > length ? (fFloatValue4 - length) / length2 : 0.0f, Math.min(f4 / length2, 1.0f), 0.0f);
                            canvas.drawPath(path2, vp4Var);
                        }
                    } else {
                        f = f3 + length2;
                        if (f < fFloatValue4) {
                        }
                    }
                    f3 += length2;
                    size3--;
                    qn0Var = this;
                    i3 = i6;
                    z = false;
                }
                i2 = i3;
                zv1.d();
            } else {
                i2 = i3;
                path.reset();
                for (int size4 = arrayList3.size() - 1; size4 >= 0; size4--) {
                    path.addPath(((hy5) arrayList3.get(size4)).a(), matrix);
                }
                zv1.d();
                canvas.drawPath(path, vp4Var);
                zv1.d();
            }
            i5++;
            qn0Var = this;
            i3 = i2;
            z = false;
            f2 = 100.0f;
        }
    }
}
