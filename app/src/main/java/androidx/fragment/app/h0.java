package androidx.fragment.app;

import android.util.Log;
import android.view.ViewGroup;
import defpackage.dj7;
import defpackage.el1;
import defpackage.fz5;
import defpackage.zj7;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class h0 {
    public int a;
    public int b;
    public final o c;
    public final ArrayList d;
    public boolean e;
    public boolean f;
    public boolean g;
    public boolean h;
    public boolean i;
    public final ArrayList j;
    public final ArrayList k;
    public final d0 l;

    public h0(int i, int i2, d0 d0Var) {
        if (i == 0 || i2 == 0) {
            throw null;
        }
        o oVar = d0Var.c;
        oVar.getClass();
        if (i == 0 || i2 == 0) {
            throw null;
        }
        oVar.getClass();
        this.a = i;
        this.b = i2;
        this.c = oVar;
        this.d = new ArrayList();
        this.i = true;
        ArrayList arrayList = new ArrayList();
        this.j = arrayList;
        this.k = arrayList;
        this.l = d0Var;
    }

    public final void a(ViewGroup viewGroup) {
        viewGroup.getClass();
        this.h = false;
        if (this.e) {
            return;
        }
        this.e = true;
        if (this.j.isEmpty()) {
            b();
            return;
        }
        for (zj7 zj7Var : el1.v1(this.k)) {
            zj7Var.getClass();
            if (!zj7Var.b) {
                zj7Var.a(viewGroup);
            }
            zj7Var.b = true;
        }
    }

    public final void b() {
        this.h = false;
        if (!this.f) {
            if (z.K(2)) {
                Log.v("FragmentManager", "SpecialEffectsController: " + this + " has called complete.");
            }
            this.f = true;
            Iterator it = this.d.iterator();
            while (it.hasNext()) {
                ((Runnable) it.next()).run();
            }
        }
        this.c.mTransitioning = false;
        this.l.k();
    }

    public final void c(zj7 zj7Var) {
        zj7Var.getClass();
        ArrayList arrayList = this.j;
        if (arrayList.remove(zj7Var) && arrayList.isEmpty()) {
            b();
        }
    }

    public final void d(int i, int i2) {
        if (i == 0 || i2 == 0) {
            throw null;
        }
        int iA = dj7.A(i2);
        o oVar = this.c;
        if (iA == 0) {
            if (this.a != 1) {
                if (z.K(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: For fragment " + oVar + " mFinalState = " + fz5.x(this.a) + " -> " + fz5.x(i) + '.');
                }
                this.a = i;
                return;
            }
            return;
        }
        if (iA == 1) {
            if (this.a == 1) {
                if (z.K(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: For fragment " + oVar + " mFinalState = REMOVED -> VISIBLE. mLifecycleImpact = " + fz5.w(this.b) + " to ADDING.");
                }
                this.a = 2;
                this.b = 2;
                this.i = true;
                return;
            }
            return;
        }
        if (iA != 2) {
            return;
        }
        if (z.K(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: For fragment " + oVar + " mFinalState = " + fz5.x(this.a) + " -> REMOVED. mLifecycleImpact  = " + fz5.w(this.b) + " to REMOVING.");
        }
        this.a = 1;
        this.b = 3;
        this.i = true;
    }

    public final String toString() {
        StringBuilder sbU = dj7.u("Operation {", Integer.toHexString(System.identityHashCode(this)), "} {finalState = ");
        sbU.append(fz5.x(this.a));
        sbU.append(" lifecycleImpact = ");
        sbU.append(fz5.w(this.b));
        sbU.append(" fragment = ");
        sbU.append(this.c);
        sbU.append('}');
        return sbU.toString();
    }
}
