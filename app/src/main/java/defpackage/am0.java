package defpackage;

import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.os.Build;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class am0 implements rp2, ul0, qo4 {
    public final Path a = new Path();
    public final Matrix b = new Matrix();
    public final vp4 c = new vp4(1, 0);
    public final vp4 d;
    public final vp4 e;
    public final vp4 f;
    public final vp4 g;
    public final RectF h;
    public final RectF i;
    public final RectF j;
    public final RectF k;
    public final Matrix l;
    public final c35 m;
    public final js4 n;
    public final vq o;
    public final xh3 p;
    public am0 q;
    public am0 r;
    public List s;
    public final ArrayList t;
    public final k98 u;
    public boolean v;
    public boolean w;
    public vp4 x;
    public float y;
    public BlurMaskFilter z;

    public am0(c35 c35Var, js4 js4Var) {
        PorterDuff.Mode mode = PorterDuff.Mode.DST_IN;
        this.d = new vp4(mode);
        PorterDuff.Mode mode2 = PorterDuff.Mode.DST_OUT;
        this.e = new vp4(mode2);
        vp4 vp4Var = new vp4(1, 0);
        this.f = vp4Var;
        PorterDuff.Mode mode3 = PorterDuff.Mode.CLEAR;
        vp4 vp4Var2 = new vp4();
        vp4Var2.setXfermode(new PorterDuffXfermode(mode3));
        this.g = vp4Var2;
        this.h = new RectF();
        this.i = new RectF();
        this.j = new RectF();
        this.k = new RectF();
        this.l = new Matrix();
        this.t = new ArrayList();
        this.v = true;
        this.y = 0.0f;
        this.m = c35Var;
        this.n = js4Var;
        String str = js4Var.c;
        List list = js4Var.h;
        str.concat("#draw");
        if (js4Var.u == 3) {
            vp4Var.setXfermode(new PorterDuffXfermode(mode2));
        } else {
            vp4Var.setXfermode(new PorterDuffXfermode(mode));
        }
        mc mcVar = js4Var.i;
        mcVar.getClass();
        k98 k98Var = new k98(mcVar);
        this.u = k98Var;
        k98Var.b(this);
        if (list != null && !list.isEmpty()) {
            vq vqVar = new vq(list);
            this.o = vqVar;
            Iterator it = ((ArrayList) vqVar.b).iterator();
            while (it.hasNext()) {
                ((yl0) it.next()).a(this);
            }
            for (yl0 yl0Var : (ArrayList) this.o.c) {
                g(yl0Var);
                yl0Var.a(this);
            }
        }
        js4 js4Var2 = this.n;
        if (js4Var2.t.isEmpty()) {
            if (true != this.v) {
                this.v = true;
                this.m.invalidateSelf();
                return;
            }
            return;
        }
        xh3 xh3Var = new xh3(js4Var2.t);
        this.p = xh3Var;
        xh3Var.b = true;
        xh3Var.a(new ul0() { // from class: zl0
            @Override // defpackage.ul0
            public final void b() {
                am0 am0Var = this.a;
                boolean z = am0Var.p.l() == 1.0f;
                if (z != am0Var.v) {
                    am0Var.v = z;
                    am0Var.m.invalidateSelf();
                }
            }
        });
        boolean z = ((Float) this.p.f()).floatValue() == 1.0f;
        if (z != this.v) {
            this.v = z;
            this.m.invalidateSelf();
        }
        g(this.p);
    }

    @Override // defpackage.ul0
    public final void b() {
        this.m.invalidateSelf();
    }

    @Override // defpackage.qo4
    public final void d(po4 po4Var, int i, ArrayList arrayList, po4 po4Var2) {
        am0 am0Var = this.q;
        js4 js4Var = this.n;
        if (am0Var != null) {
            String str = am0Var.n.c;
            po4 po4Var3 = new po4(po4Var2);
            po4Var3.a.add(str);
            if (po4Var.a(i, this.q.n.c)) {
                am0 am0Var2 = this.q;
                po4 po4Var4 = new po4(po4Var3);
                po4Var4.b = am0Var2;
                arrayList.add(po4Var4);
            }
            if (po4Var.d(i, js4Var.c)) {
                this.q.q(po4Var, po4Var.b(i, this.q.n.c) + i, arrayList, po4Var3);
            }
        }
        String str2 = js4Var.c;
        String str3 = js4Var.c;
        if (po4Var.c(i, str2)) {
            if (!"__container".equals(str3)) {
                po4 po4Var5 = new po4(po4Var2);
                po4Var5.a.add(str3);
                if (po4Var.a(i, str3)) {
                    po4 po4Var6 = new po4(po4Var5);
                    po4Var6.b = this;
                    arrayList.add(po4Var6);
                }
                po4Var2 = po4Var5;
            }
            if (po4Var.d(i, str3)) {
                q(po4Var, po4Var.b(i, str3) + i, arrayList, po4Var2);
            }
        }
    }

    @Override // defpackage.rp2
    public void e(RectF rectF, Matrix matrix, boolean z) {
        this.h.set(0.0f, 0.0f, 0.0f, 0.0f);
        i();
        Matrix matrix2 = this.l;
        matrix2.set(matrix);
        if (z) {
            List list = this.s;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    matrix2.preConcat(((am0) this.s.get(size)).u.e());
                }
            } else {
                am0 am0Var = this.r;
                if (am0Var != null) {
                    matrix2.preConcat(am0Var.u.e());
                }
            }
        }
        matrix2.preConcat(this.u.e());
    }

    @Override // defpackage.qo4
    public void f(cd cdVar, Object obj) {
        this.u.c(cdVar, obj);
    }

    public final void g(yl0 yl0Var) {
        if (yl0Var == null) {
            return;
        }
        this.t.add(yl0Var);
    }

    /* JADX WARN: Code duplicated, block: B:50:0x0108  */
    /* JADX WARN: Code duplicated, block: B:51:0x010c  */
    @Override // defpackage.rp2
    public final void h(Canvas canvas, Matrix matrix, int i) {
        float f;
        RectF rectF;
        vp4 vp4Var;
        if (this.v) {
            js4 js4Var = this.n;
            if (!js4Var.v) {
                i();
                Matrix matrix2 = this.b;
                matrix2.reset();
                matrix2.set(matrix);
                int i2 = 1;
                for (int size = this.s.size() - 1; size >= 0; size--) {
                    matrix2.preConcat(((am0) this.s.get(size)).u.e());
                }
                zv1.d();
                k98 k98Var = this.u;
                yl0 yl0Var = k98Var.j;
                int iIntValue = (int) ((((i / 255.0f) * (yl0Var == null ? 100 : ((Integer) yl0Var.f()).intValue())) / 100.0f) * 255.0f);
                if (this.q == null && !n()) {
                    matrix2.preConcat(k98Var.e());
                    k(canvas, matrix2, iIntValue);
                    zv1.d();
                    zv1.d();
                    o();
                    return;
                }
                RectF rectF2 = this.h;
                e(rectF2, matrix2, false);
                int i3 = 3;
                if (this.q != null && js4Var.u != 3) {
                    RectF rectF3 = this.j;
                    rectF3.set(0.0f, 0.0f, 0.0f, 0.0f);
                    this.q.e(rectF3, matrix, true);
                    if (!rectF2.intersect(rectF3)) {
                        rectF2.set(0.0f, 0.0f, 0.0f, 0.0f);
                    }
                }
                matrix2.preConcat(k98Var.e());
                RectF rectF4 = this.i;
                rectF4.set(0.0f, 0.0f, 0.0f, 0.0f);
                boolean zN = n();
                int i4 = 2;
                vq vqVar = this.o;
                Path path = this.a;
                if (zN) {
                    int size2 = ((List) vqVar.d).size();
                    int i5 = 0;
                    while (true) {
                        if (i5 < size2) {
                            q75 q75Var = (q75) ((List) vqVar.d).get(i5);
                            Path path2 = (Path) ((yl0) ((ArrayList) vqVar.b).get(i5)).f();
                            if (path2 != null) {
                                path.set(path2);
                                path.transform(matrix2);
                                int iA = dj7.A(q75Var.a);
                                if (iA != 0) {
                                    if (iA != i2) {
                                        if (iA != i4) {
                                            if (iA == i3) {
                                            }
                                            rectF = this.k;
                                            path.computeBounds(rectF, false);
                                            if (i5 == 0) {
                                                rectF4.set(rectF);
                                            } else {
                                                rectF4.set(Math.min(rectF4.left, rectF.left), Math.min(rectF4.top, rectF.top), Math.max(rectF4.right, rectF.right), Math.max(rectF4.bottom, rectF.bottom));
                                            }
                                        }
                                    }
                                }
                                if (q75Var.d) {
                                }
                                rectF = this.k;
                                path.computeBounds(rectF, false);
                                if (i5 == 0) {
                                    rectF4.set(rectF);
                                } else {
                                    rectF4.set(Math.min(rectF4.left, rectF.left), Math.min(rectF4.top, rectF.top), Math.max(rectF4.right, rectF.right), Math.max(rectF4.bottom, rectF.bottom));
                                }
                            }
                            i5++;
                            i2 = 1;
                            i4 = 2;
                            i3 = 3;
                        } else if (!rectF2.intersect(rectF4)) {
                            f = 0.0f;
                            rectF2.set(0.0f, 0.0f, 0.0f, 0.0f);
                            break;
                        }
                        f = 0.0f;
                        break;
                    }
                } else {
                    f = 0.0f;
                }
                if (!rectF2.intersect(f, f, canvas.getWidth(), canvas.getHeight())) {
                    rectF2.set(f, f, f, f);
                }
                zv1.d();
                if (rectF2.width() >= 1.0f && rectF2.height() >= 1.0f) {
                    vp4 vp4Var2 = this.c;
                    vp4Var2.setAlpha(255);
                    di8 di8Var = mi8.a;
                    canvas.saveLayer(rectF2, vp4Var2);
                    zv1.d();
                    zv1.d();
                    j(canvas);
                    k(canvas, matrix2, iIntValue);
                    zv1.d();
                    if (n()) {
                        vp4 vp4Var3 = this.d;
                        canvas.saveLayer(rectF2, vp4Var3);
                        zv1.d();
                        if (Build.VERSION.SDK_INT < 28) {
                            j(canvas);
                        }
                        zv1.d();
                        int i6 = 0;
                        while (true) {
                            List list = (List) vqVar.d;
                            ArrayList arrayList = (ArrayList) vqVar.b;
                            if (i6 >= list.size()) {
                                break;
                            }
                            q75 q75Var2 = (q75) list.get(i6);
                            yl0 yl0Var2 = (yl0) arrayList.get(i6);
                            yl0 yl0Var3 = (yl0) ((ArrayList) vqVar.c).get(i6);
                            int i7 = q75Var2.a;
                            boolean z = q75Var2.d;
                            int iA2 = dj7.A(i7);
                            int i8 = i6;
                            vp4 vp4Var4 = this.e;
                            if (iA2 != 0) {
                                if (iA2 == 1) {
                                    if (i8 == 0) {
                                        vp4Var2.setColor(-16777216);
                                        vp4Var2.setAlpha(255);
                                        canvas.drawRect(rectF2, vp4Var2);
                                    }
                                    if (z) {
                                        canvas.saveLayer(rectF2, vp4Var4);
                                        zv1.d();
                                        canvas.drawRect(rectF2, vp4Var2);
                                        vp4Var4.setAlpha((int) (((Integer) yl0Var3.f()).intValue() * 2.55f));
                                        path.set((Path) yl0Var2.f());
                                        path.transform(matrix2);
                                        canvas.drawPath(path, vp4Var4);
                                        canvas.restore();
                                    } else {
                                        path.set((Path) yl0Var2.f());
                                        path.transform(matrix2);
                                        canvas.drawPath(path, vp4Var4);
                                    }
                                } else if (iA2 != 2) {
                                    if (iA2 == 3 && !arrayList.isEmpty()) {
                                        int i9 = 0;
                                        while (true) {
                                            if (i9 >= list.size()) {
                                                vp4Var2.setAlpha(255);
                                                canvas.drawRect(rectF2, vp4Var2);
                                                break;
                                            } else if (((q75) list.get(i9)).a != 4) {
                                                break;
                                            } else {
                                                i9++;
                                            }
                                        }
                                    }
                                } else if (z) {
                                    canvas.saveLayer(rectF2, vp4Var3);
                                    zv1.d();
                                    canvas.drawRect(rectF2, vp4Var2);
                                    vp4Var4.setAlpha((int) (((Integer) yl0Var3.f()).intValue() * 2.55f));
                                    path.set((Path) yl0Var2.f());
                                    path.transform(matrix2);
                                    canvas.drawPath(path, vp4Var4);
                                    canvas.restore();
                                } else {
                                    canvas.saveLayer(rectF2, vp4Var3);
                                    zv1.d();
                                    path.set((Path) yl0Var2.f());
                                    path.transform(matrix2);
                                    vp4Var2.setAlpha((int) (((Integer) yl0Var3.f()).intValue() * 2.55f));
                                    canvas.drawPath(path, vp4Var2);
                                    canvas.restore();
                                }
                            } else if (z) {
                                canvas.saveLayer(rectF2, vp4Var2);
                                zv1.d();
                                canvas.drawRect(rectF2, vp4Var2);
                                path.set((Path) yl0Var2.f());
                                path.transform(matrix2);
                                vp4Var2.setAlpha((int) (((Integer) yl0Var3.f()).intValue() * 2.55f));
                                canvas.drawPath(path, vp4Var4);
                                canvas.restore();
                            } else {
                                path.set((Path) yl0Var2.f());
                                path.transform(matrix2);
                                vp4Var2.setAlpha((int) (((Integer) yl0Var3.f()).intValue() * 2.55f));
                                canvas.drawPath(path, vp4Var2);
                            }
                            i6 = i8 + 1;
                        }
                        canvas.restore();
                        zv1.d();
                    }
                    if (this.q != null) {
                        canvas.saveLayer(rectF2, this.f);
                        zv1.d();
                        zv1.d();
                        j(canvas);
                        this.q.h(canvas, matrix, iIntValue);
                        canvas.restore();
                        zv1.d();
                        zv1.d();
                    }
                    canvas.restore();
                    zv1.d();
                }
                if (this.w && (vp4Var = this.x) != null) {
                    vp4Var.setStyle(Paint.Style.STROKE);
                    this.x.setColor(-251901);
                    this.x.setStrokeWidth(4.0f);
                    canvas.drawRect(rectF2, this.x);
                    this.x.setStyle(Paint.Style.FILL);
                    this.x.setColor(1357638635);
                    canvas.drawRect(rectF2, this.x);
                }
                zv1.d();
                o();
                return;
            }
        }
        zv1.d();
    }

    public final void i() {
        if (this.s != null) {
            return;
        }
        if (this.r == null) {
            this.s = Collections.EMPTY_LIST;
            return;
        }
        this.s = new ArrayList();
        for (am0 am0Var = this.r; am0Var != null; am0Var = am0Var.r) {
            this.s.add(am0Var);
        }
    }

    public final void j(Canvas canvas) {
        RectF rectF = this.h;
        canvas.drawRect(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f, this.g);
        zv1.d();
    }

    public abstract void k(Canvas canvas, Matrix matrix, int i);

    public z28 l() {
        return this.n.w;
    }

    public nz4 m() {
        return this.n.x;
    }

    public final boolean n() {
        vq vqVar = this.o;
        return (vqVar == null || ((ArrayList) vqVar.b).isEmpty()) ? false : true;
    }

    public final void o() {
        az5 az5Var = this.m.b.a;
        String str = this.n.c;
        HashMap map = az5Var.c;
        if (az5Var.a) {
            p95 p95Var = (p95) map.get(str);
            if (p95Var == null) {
                p95Var = new p95();
                map.put(str, p95Var);
            }
            int i = p95Var.a + 1;
            p95Var.a = i;
            if (i == Integer.MAX_VALUE) {
                p95Var.a = i / 2;
            }
            if (str.equals("__container")) {
                p50 p50Var = az5Var.b;
                p50Var.getClass();
                o50 o50Var = new o50(p50Var);
                if (o50Var.hasNext()) {
                    o50Var.next().getClass();
                    e6.d();
                }
            }
        }
    }

    public final void p(yl0 yl0Var) {
        this.t.remove(yl0Var);
    }

    public void r(boolean z) {
        if (z && this.x == null) {
            this.x = new vp4();
        }
        this.w = z;
    }

    public void s(float f) {
        k98 k98Var = this.u;
        yl0 yl0Var = k98Var.j;
        if (yl0Var != null) {
            yl0Var.j(f);
        }
        yl0 yl0Var2 = k98Var.m;
        if (yl0Var2 != null) {
            yl0Var2.j(f);
        }
        yl0 yl0Var3 = k98Var.n;
        if (yl0Var3 != null) {
            yl0Var3.j(f);
        }
        yl0 yl0Var4 = k98Var.f;
        if (yl0Var4 != null) {
            yl0Var4.j(f);
        }
        yl0 yl0Var5 = k98Var.g;
        if (yl0Var5 != null) {
            yl0Var5.j(f);
        }
        yl0 yl0Var6 = k98Var.h;
        if (yl0Var6 != null) {
            yl0Var6.j(f);
        }
        yl0 yl0Var7 = k98Var.i;
        if (yl0Var7 != null) {
            yl0Var7.j(f);
        }
        xh3 xh3Var = k98Var.k;
        if (xh3Var != null) {
            xh3Var.j(f);
        }
        xh3 xh3Var2 = k98Var.l;
        if (xh3Var2 != null) {
            xh3Var2.j(f);
        }
        int i = 0;
        vq vqVar = this.o;
        if (vqVar != null) {
            ArrayList arrayList = (ArrayList) vqVar.b;
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                ((yl0) arrayList.get(i2)).j(f);
            }
        }
        xh3 xh3Var3 = this.p;
        if (xh3Var3 != null) {
            xh3Var3.j(f);
        }
        am0 am0Var = this.q;
        if (am0Var != null) {
            am0Var.s(f);
        }
        while (true) {
            ArrayList arrayList2 = this.t;
            if (i >= arrayList2.size()) {
                return;
            }
            ((yl0) arrayList2.get(i)).j(f);
            i++;
        }
    }

    @Override // defpackage.gu1
    public final void c(List list, List list2) {
    }

    public void q(po4 po4Var, int i, ArrayList arrayList, po4 po4Var2) {
    }
}
