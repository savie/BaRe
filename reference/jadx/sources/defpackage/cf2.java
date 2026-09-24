package defpackage;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class cf2 extends ng6 {
    public static TimeInterpolator s;
    public boolean g;
    public ArrayList h;
    public ArrayList i;
    public ArrayList j;
    public ArrayList k;
    public ArrayList l;
    public ArrayList m;
    public ArrayList n;
    public ArrayList o;
    public ArrayList p;
    public ArrayList q;
    public ArrayList r;

    public static void h(ArrayList arrayList) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ((fh6) arrayList.get(size)).a.animate().cancel();
        }
    }

    @Override // defpackage.ng6
    public final boolean a(fh6 fh6Var, fh6 fh6Var2, mg6 mg6Var, mg6 mg6Var2) {
        int i;
        int i2;
        int i3 = mg6Var.a;
        int i4 = mg6Var.b;
        if (fh6Var2.p()) {
            int i5 = mg6Var.a;
            i2 = mg6Var.b;
            i = i5;
        } else {
            i = mg6Var2.a;
            i2 = mg6Var2.b;
        }
        if (fh6Var == fh6Var2) {
            return g(fh6Var, i3, i4, i, i2);
        }
        View view = fh6Var.a;
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        float alpha = view.getAlpha();
        l(fh6Var);
        view.setTranslationX(translationX);
        view.setTranslationY(translationY);
        view.setAlpha(alpha);
        View view2 = fh6Var2.a;
        l(fh6Var2);
        view2.setTranslationX(-((int) ((i - i3) - translationX)));
        view2.setTranslationY(-((int) ((i2 - i4) - translationY)));
        view2.setAlpha(0.0f);
        ArrayList arrayList = this.k;
        af2 af2Var = new af2();
        af2Var.a = fh6Var;
        af2Var.b = fh6Var2;
        af2Var.c = i3;
        af2Var.d = i4;
        af2Var.e = i;
        af2Var.f = i2;
        arrayList.add(af2Var);
        return true;
    }

    @Override // defpackage.ng6
    public final void d(fh6 fh6Var) {
        ArrayList arrayList = this.l;
        ArrayList arrayList2 = this.m;
        ArrayList arrayList3 = this.n;
        View view = fh6Var.a;
        view.animate().cancel();
        ArrayList arrayList4 = this.j;
        int size = arrayList4.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            if (((bf2) arrayList4.get(size)).a == fh6Var) {
                view.setTranslationY(0.0f);
                view.setTranslationX(0.0f);
                c(fh6Var);
                arrayList4.remove(size);
            }
        }
        j(this.k, fh6Var);
        if (this.h.remove(fh6Var)) {
            view.setAlpha(1.0f);
            c(fh6Var);
        }
        if (this.i.remove(fh6Var)) {
            view.setAlpha(1.0f);
            c(fh6Var);
        }
        for (int size2 = arrayList3.size() - 1; size2 >= 0; size2--) {
            ArrayList arrayList5 = (ArrayList) arrayList3.get(size2);
            j(arrayList5, fh6Var);
            if (arrayList5.isEmpty()) {
                arrayList3.remove(size2);
            }
        }
        for (int size3 = arrayList2.size() - 1; size3 >= 0; size3--) {
            ArrayList arrayList6 = (ArrayList) arrayList2.get(size3);
            for (int size4 = arrayList6.size() - 1; size4 >= 0; size4--) {
                if (((bf2) arrayList6.get(size4)).a == fh6Var) {
                    view.setTranslationY(0.0f);
                    view.setTranslationX(0.0f);
                    c(fh6Var);
                    arrayList6.remove(size4);
                    if (!arrayList6.isEmpty()) {
                        break;
                    }
                    arrayList2.remove(size3);
                    break;
                }
            }
        }
        for (int size5 = arrayList.size() - 1; size5 >= 0; size5--) {
            ArrayList arrayList7 = (ArrayList) arrayList.get(size5);
            if (arrayList7.remove(fh6Var)) {
                view.setAlpha(1.0f);
                c(fh6Var);
                if (arrayList7.isEmpty()) {
                    arrayList.remove(size5);
                }
            }
        }
        this.q.remove(fh6Var);
        this.o.remove(fh6Var);
        this.r.remove(fh6Var);
        this.p.remove(fh6Var);
        i();
    }

    @Override // defpackage.ng6
    public final void e() {
        ArrayList arrayList = this.k;
        ArrayList arrayList2 = this.n;
        ArrayList arrayList3 = this.l;
        ArrayList arrayList4 = this.m;
        ArrayList arrayList5 = this.i;
        ArrayList arrayList6 = this.h;
        ArrayList arrayList7 = this.j;
        int size = arrayList7.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            bf2 bf2Var = (bf2) arrayList7.get(size);
            View view = bf2Var.a.a;
            view.setTranslationY(0.0f);
            view.setTranslationX(0.0f);
            c(bf2Var.a);
            arrayList7.remove(size);
        }
        for (int size2 = arrayList6.size() - 1; size2 >= 0; size2--) {
            c((fh6) arrayList6.get(size2));
            arrayList6.remove(size2);
        }
        int size3 = arrayList5.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            fh6 fh6Var = (fh6) arrayList5.get(size3);
            fh6Var.a.setAlpha(1.0f);
            c(fh6Var);
            arrayList5.remove(size3);
        }
        for (int size4 = arrayList.size() - 1; size4 >= 0; size4--) {
            af2 af2Var = (af2) arrayList.get(size4);
            fh6 fh6Var2 = af2Var.a;
            if (fh6Var2 != null) {
                k(af2Var, fh6Var2);
            }
            fh6 fh6Var3 = af2Var.b;
            if (fh6Var3 != null) {
                k(af2Var, fh6Var3);
            }
        }
        arrayList.clear();
        if (f()) {
            for (int size5 = arrayList4.size() - 1; size5 >= 0; size5--) {
                ArrayList arrayList8 = (ArrayList) arrayList4.get(size5);
                for (int size6 = arrayList8.size() - 1; size6 >= 0; size6--) {
                    bf2 bf2Var2 = (bf2) arrayList8.get(size6);
                    View view2 = bf2Var2.a.a;
                    view2.setTranslationY(0.0f);
                    view2.setTranslationX(0.0f);
                    c(bf2Var2.a);
                    arrayList8.remove(size6);
                    if (arrayList8.isEmpty()) {
                        arrayList4.remove(arrayList8);
                    }
                }
            }
            for (int size7 = arrayList3.size() - 1; size7 >= 0; size7--) {
                ArrayList arrayList9 = (ArrayList) arrayList3.get(size7);
                for (int size8 = arrayList9.size() - 1; size8 >= 0; size8--) {
                    fh6 fh6Var4 = (fh6) arrayList9.get(size8);
                    fh6Var4.a.setAlpha(1.0f);
                    c(fh6Var4);
                    arrayList9.remove(size8);
                    if (arrayList9.isEmpty()) {
                        arrayList3.remove(arrayList9);
                    }
                }
            }
            for (int size9 = arrayList2.size() - 1; size9 >= 0; size9--) {
                ArrayList arrayList10 = (ArrayList) arrayList2.get(size9);
                for (int size10 = arrayList10.size() - 1; size10 >= 0; size10--) {
                    af2 af2Var2 = (af2) arrayList10.get(size10);
                    fh6 fh6Var5 = af2Var2.a;
                    if (fh6Var5 != null) {
                        k(af2Var2, fh6Var5);
                    }
                    fh6 fh6Var6 = af2Var2.b;
                    if (fh6Var6 != null) {
                        k(af2Var2, fh6Var6);
                    }
                    if (arrayList10.isEmpty()) {
                        arrayList2.remove(arrayList10);
                    }
                }
            }
            h(this.q);
            h(this.p);
            h(this.o);
            h(this.r);
            ArrayList arrayList11 = this.b;
            if (arrayList11.size() <= 0) {
                arrayList11.clear();
            } else {
                arrayList11.get(0).getClass();
                e6.d();
            }
        }
    }

    @Override // defpackage.ng6
    public final boolean f() {
        return (this.i.isEmpty() && this.k.isEmpty() && this.j.isEmpty() && this.h.isEmpty() && this.p.isEmpty() && this.q.isEmpty() && this.o.isEmpty() && this.r.isEmpty() && this.m.isEmpty() && this.l.isEmpty() && this.n.isEmpty()) ? false : true;
    }

    public final boolean g(fh6 fh6Var, int i, int i2, int i3, int i4) {
        View view = fh6Var.a;
        int translationX = i + ((int) view.getTranslationX());
        int translationY = i2 + ((int) fh6Var.a.getTranslationY());
        l(fh6Var);
        int i5 = i3 - translationX;
        int i6 = i4 - translationY;
        if (i5 == 0 && i6 == 0) {
            c(fh6Var);
            return false;
        }
        if (i5 != 0) {
            view.setTranslationX(-i5);
        }
        if (i6 != 0) {
            view.setTranslationY(-i6);
        }
        ArrayList arrayList = this.j;
        bf2 bf2Var = new bf2();
        bf2Var.a = fh6Var;
        bf2Var.b = translationX;
        bf2Var.c = translationY;
        bf2Var.d = i3;
        bf2Var.e = i4;
        arrayList.add(bf2Var);
        return true;
    }

    public final void i() {
        if (f()) {
            return;
        }
        ArrayList arrayList = this.b;
        if (arrayList.size() <= 0) {
            arrayList.clear();
        } else {
            arrayList.get(0).getClass();
            e6.d();
        }
    }

    public final void j(ArrayList arrayList, fh6 fh6Var) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            af2 af2Var = (af2) arrayList.get(size);
            if (k(af2Var, fh6Var) && af2Var.a == null && af2Var.b == null) {
                arrayList.remove(af2Var);
            }
        }
    }

    public final boolean k(af2 af2Var, fh6 fh6Var) {
        if (af2Var.b == fh6Var) {
            af2Var.b = null;
        } else {
            if (af2Var.a != fh6Var) {
                return false;
            }
            af2Var.a = null;
        }
        View view = fh6Var.a;
        View view2 = fh6Var.a;
        view.setAlpha(1.0f);
        view2.setTranslationX(0.0f);
        view2.setTranslationY(0.0f);
        c(fh6Var);
        return true;
    }

    public final void l(fh6 fh6Var) {
        if (s == null) {
            s = new ValueAnimator().getInterpolator();
        }
        fh6Var.a.animate().setInterpolator(s);
        d(fh6Var);
    }
}
