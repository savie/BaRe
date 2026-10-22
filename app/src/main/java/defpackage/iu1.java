package defpackage;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class iu1 implements rp2, hy5, ul0, qo4 {
    public final vp4 a;
    public final RectF b;
    public final Matrix c;
    public final Path d;
    public final RectF e;
    public final String f;
    public final boolean g;
    public final ArrayList h;
    public final c35 i;
    public ArrayList j;
    public final k98 k;

    public iu1(c35 c35Var, am0 am0Var, String str, boolean z, ArrayList arrayList, mc mcVar) {
        this.a = new vp4();
        this.b = new RectF();
        this.c = new Matrix();
        this.d = new Path();
        this.e = new RectF();
        this.f = str;
        this.i = c35Var;
        this.g = z;
        this.h = arrayList;
        if (mcVar != null) {
            k98 k98Var = new k98(mcVar);
            this.k = k98Var;
            k98Var.a(am0Var);
            k98Var.b(this);
        }
        ArrayList arrayList2 = new ArrayList();
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            gu1 gu1Var = (gu1) arrayList.get(size);
            if (gu1Var instanceof n14) {
                arrayList2.add((n14) gu1Var);
            }
        }
        for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
            ((n14) arrayList2.get(size2)).g(arrayList.listIterator(arrayList.size()));
        }
    }

    @Override // defpackage.hy5
    public final Path a() {
        Matrix matrix = this.c;
        matrix.reset();
        k98 k98Var = this.k;
        if (k98Var != null) {
            matrix.set(k98Var.e());
        }
        Path path = this.d;
        path.reset();
        if (!this.g) {
            ArrayList arrayList = this.h;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                gu1 gu1Var = (gu1) arrayList.get(size);
                if (gu1Var instanceof hy5) {
                    path.addPath(((hy5) gu1Var).a(), matrix);
                }
            }
        }
        return path;
    }

    @Override // defpackage.ul0
    public final void b() {
        this.i.invalidateSelf();
    }

    @Override // defpackage.gu1
    public final void c(List list, List list2) {
        int size = list.size();
        ArrayList arrayList = this.h;
        ArrayList arrayList2 = new ArrayList(arrayList.size() + size);
        arrayList2.addAll(list);
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            gu1 gu1Var = (gu1) arrayList.get(size2);
            gu1Var.c(arrayList2, arrayList.subList(0, size2));
            arrayList2.add(gu1Var);
        }
    }

    @Override // defpackage.qo4
    public final void d(po4 po4Var, int i, ArrayList arrayList, po4 po4Var2) {
        String str = this.f;
        if (!po4Var.c(i, str) && !"__container".equals(str)) {
            return;
        }
        if (!"__container".equals(str)) {
            po4 po4Var3 = new po4(po4Var2);
            po4Var3.a.add(str);
            if (po4Var.a(i, str)) {
                po4 po4Var4 = new po4(po4Var3);
                po4Var4.b = this;
                arrayList.add(po4Var4);
            }
            po4Var2 = po4Var3;
        }
        if (!po4Var.d(i, str)) {
            return;
        }
        int iB = po4Var.b(i, str) + i;
        int i2 = 0;
        while (true) {
            ArrayList arrayList2 = this.h;
            if (i2 >= arrayList2.size()) {
                return;
            }
            gu1 gu1Var = (gu1) arrayList2.get(i2);
            if (gu1Var instanceof qo4) {
                ((qo4) gu1Var).d(po4Var, iB, arrayList, po4Var2);
            }
            i2++;
        }
    }

    @Override // defpackage.rp2
    public final void e(RectF rectF, Matrix matrix, boolean z) {
        Matrix matrix2 = this.c;
        matrix2.set(matrix);
        k98 k98Var = this.k;
        if (k98Var != null) {
            matrix2.preConcat(k98Var.e());
        }
        RectF rectF2 = this.e;
        rectF2.set(0.0f, 0.0f, 0.0f, 0.0f);
        ArrayList arrayList = this.h;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            gu1 gu1Var = (gu1) arrayList.get(size);
            if (gu1Var instanceof rp2) {
                ((rp2) gu1Var).e(rectF2, matrix2, z);
                rectF.union(rectF2);
            }
        }
    }

    @Override // defpackage.qo4
    public final void f(cd cdVar, Object obj) {
        k98 k98Var = this.k;
        if (k98Var != null) {
            k98Var.c(cdVar, obj);
        }
    }

    public final List g() {
        if (this.j == null) {
            this.j = new ArrayList();
            int i = 0;
            while (true) {
                ArrayList arrayList = this.h;
                if (i >= arrayList.size()) {
                    break;
                }
                gu1 gu1Var = (gu1) arrayList.get(i);
                if (gu1Var instanceof hy5) {
                    this.j.add((hy5) gu1Var);
                }
                i++;
            }
        }
        return this.j;
    }

    @Override // defpackage.gu1
    public final String getName() {
        throw null;
    }

    @Override // defpackage.rp2
    public final void h(Canvas canvas, Matrix matrix, int i) {
        if (this.g) {
            return;
        }
        Matrix matrix2 = this.c;
        matrix2.set(matrix);
        k98 k98Var = this.k;
        if (k98Var != null) {
            matrix2.preConcat(k98Var.e());
            yl0 yl0Var = k98Var.j;
            i = (int) (((((yl0Var == null ? 100 : ((Integer) yl0Var.f()).intValue()) / 100.0f) * i) / 255.0f) * 255.0f);
        }
        boolean z = this.i.I;
        boolean z2 = false;
        ArrayList arrayList = this.h;
        if (z) {
            int i2 = 0;
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                if ((arrayList.get(i3) instanceof rp2) && (i2 = i2 + 1) >= 2) {
                    if (i == 255) {
                        break;
                    }
                    z2 = true;
                    break;
                }
            }
        }
        if (z2) {
            RectF rectF = this.b;
            rectF.set(0.0f, 0.0f, 0.0f, 0.0f);
            e(rectF, matrix2, true);
            vp4 vp4Var = this.a;
            vp4Var.setAlpha(i);
            mi8.e(canvas, rectF, vp4Var);
        }
        if (z2) {
            i = 255;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            Object obj = arrayList.get(size);
            if (obj instanceof rp2) {
                ((rp2) obj).h(canvas, matrix2, i);
            }
        }
        if (z2) {
            canvas.restore();
        }
    }

    public iu1(c35 c35Var, am0 am0Var, bc7 bc7Var) {
        mc mcVar;
        String str = bc7Var.a;
        boolean z = bc7Var.c;
        List list = bc7Var.b;
        ArrayList arrayList = new ArrayList(list.size());
        int i = 0;
        for (int i2 = 0; i2 < list.size(); i2++) {
            gu1 gu1VarA = ((tu1) list.get(i2)).a(c35Var, am0Var);
            if (gu1VarA != null) {
                arrayList.add(gu1VarA);
            }
        }
        while (true) {
            if (i >= list.size()) {
                mcVar = null;
                break;
            }
            tu1 tu1Var = (tu1) list.get(i);
            if (tu1Var instanceof mc) {
                mcVar = (mc) tu1Var;
                break;
            }
            i++;
        }
        this(c35Var, am0Var, str, z, arrayList, mcVar);
    }
}
