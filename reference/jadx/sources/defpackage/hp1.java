package defpackage;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hp1 extends am0 {
    public yl0 A;
    public final ArrayList B;
    public final RectF C;
    public final RectF D;
    public final Paint E;

    public hp1(c35 c35Var, js4 js4Var, List list, e25 e25Var) {
        am0 am0Var;
        am0 hp1Var;
        String str;
        super(c35Var, js4Var);
        this.B = new ArrayList();
        this.C = new RectF();
        this.D = new RectF();
        this.E = new Paint();
        bc bcVar = js4Var.s;
        if (bcVar != null) {
            yl0 yl0VarN = bcVar.n();
            this.A = yl0VarN;
            g(yl0VarN);
            this.A.a(this);
        } else {
            this.A = null;
        }
        v15 v15Var = new v15(e25Var.i.size());
        int size = list.size() - 1;
        am0 am0Var2 = null;
        while (true) {
            if (size < 0) {
                for (int i = 0; i < v15Var.f(); i++) {
                    am0 am0Var3 = (am0) v15Var.b(v15Var.d(i));
                    if (am0Var3 != null && (am0Var = (am0) v15Var.b(am0Var3.n.f)) != null) {
                        am0Var3.r = am0Var;
                    }
                }
                return;
            }
            js4 js4Var2 = (js4) list.get(size);
            int iA = dj7.A(js4Var2.e);
            if (iA == 0) {
                hp1Var = new hp1(c35Var, js4Var2, (List) e25Var.c.get(js4Var2.g), e25Var);
            } else if (iA == 1) {
                hp1Var = new cj7(c35Var, js4Var2);
            } else if (iA == 2) {
                hp1Var = new z94(c35Var, js4Var2);
            } else if (iA == 3) {
                hp1Var = new op5(c35Var, js4Var2);
            } else if (iA == 4) {
                hp1Var = new ec7(c35Var, js4Var2, this);
            } else if (iA != 5) {
                switch (js4Var2.e) {
                    case 1:
                        str = "PRE_COMP";
                        break;
                    case 2:
                        str = "SOLID";
                        break;
                    case 3:
                        str = "IMAGE";
                        break;
                    case 4:
                        str = "NULL";
                        break;
                    case 5:
                        str = "SHAPE";
                        break;
                    case 6:
                        str = "TEXT";
                        break;
                    case 7:
                        str = "UNKNOWN";
                        break;
                    default:
                        str = "null";
                        break;
                }
                m15.b("Unknown layer type ".concat(str));
                hp1Var = null;
            } else {
                hp1Var = new l18(c35Var, js4Var2);
            }
            if (hp1Var != null) {
                v15Var.e(hp1Var, hp1Var.n.d);
                if (am0Var2 != null) {
                    am0Var2.q = hp1Var;
                    am0Var2 = null;
                } else {
                    this.B.add(0, hp1Var);
                    int iA2 = dj7.A(js4Var2.u);
                    if (iA2 == 1 || iA2 == 2) {
                        am0Var2 = hp1Var;
                    }
                }
            }
            size--;
        }
    }

    @Override // defpackage.am0, defpackage.rp2
    public final void e(RectF rectF, Matrix matrix, boolean z) {
        super.e(rectF, matrix, z);
        ArrayList arrayList = this.B;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            RectF rectF2 = this.C;
            rectF2.set(0.0f, 0.0f, 0.0f, 0.0f);
            ((am0) arrayList.get(size)).e(rectF2, this.l, true);
            rectF.union(rectF2);
        }
    }

    @Override // defpackage.am0, defpackage.qo4
    public final void f(cd cdVar, Object obj) {
        super.f(cdVar, obj);
        if (obj == f35.z) {
            xi8 xi8Var = new xi8(cdVar, null);
            this.A = xi8Var;
            xi8Var.a(this);
            g(this.A);
        }
    }

    @Override // defpackage.am0
    public final void k(Canvas canvas, Matrix matrix, int i) {
        js4 js4Var = this.n;
        float f = js4Var.o;
        float f2 = js4Var.p;
        RectF rectF = this.D;
        rectF.set(0.0f, 0.0f, f, f2);
        matrix.mapRect(rectF);
        boolean z = this.m.I;
        ArrayList arrayList = this.B;
        boolean z2 = z && arrayList.size() > 1 && i != 255;
        if (z2) {
            Paint paint = this.E;
            paint.setAlpha(i);
            mi8.e(canvas, rectF, paint);
        } else {
            canvas.save();
        }
        if (z2) {
            i = 255;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (!rectF.isEmpty() ? canvas.clipRect(rectF) : true) {
                ((am0) arrayList.get(size)).h(canvas, matrix, i);
            }
        }
        canvas.restore();
        zv1.d();
    }

    @Override // defpackage.am0
    public final void q(po4 po4Var, int i, ArrayList arrayList, po4 po4Var2) {
        int i2 = 0;
        while (true) {
            ArrayList arrayList2 = this.B;
            if (i2 >= arrayList2.size()) {
                return;
            }
            ((am0) arrayList2.get(i2)).d(po4Var, i, arrayList, po4Var2);
            i2++;
        }
    }

    @Override // defpackage.am0
    public final void r(boolean z) {
        super.r(z);
        Iterator it = this.B.iterator();
        while (it.hasNext()) {
            ((am0) it.next()).r(z);
        }
    }

    @Override // defpackage.am0
    public final void s(float f) {
        super.s(f);
        yl0 yl0Var = this.A;
        js4 js4Var = this.n;
        if (yl0Var != null) {
            e25 e25Var = this.m.b;
            f = ((((Float) yl0Var.f()).floatValue() * js4Var.b.m) - js4Var.b.k) / ((e25Var.l - e25Var.k) + 0.01f);
        }
        if (this.A == null) {
            float f2 = js4Var.n;
            e25 e25Var2 = js4Var.b;
            f -= f2 / (e25Var2.l - e25Var2.k);
        }
        if (js4Var.m != 0.0f && !"__container".equals(js4Var.c)) {
            f /= js4Var.m;
        }
        ArrayList arrayList = this.B;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ((am0) arrayList.get(size)).s(f);
        }
    }
}
