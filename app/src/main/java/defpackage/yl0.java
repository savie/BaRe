package defpackage;

import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class yl0 {
    public final vl0 c;
    public cd e;
    public final ArrayList a = new ArrayList(1);
    public boolean b = false;
    public float d = 0.0f;
    public Object f = null;
    public float g = -1.0f;
    public float h = -1.0f;

    public yl0(List list) {
        vl0 xl0Var;
        if (list.isEmpty()) {
            xl0Var = new ma2(2);
        } else {
            xl0Var = list.size() == 1 ? new xl0(list) : new wl0(list);
        }
        this.c = xl0Var;
    }

    public final void a(ul0 ul0Var) {
        this.a.add(ul0Var);
    }

    public final wo4 b() {
        wo4 wo4VarG = this.c.g();
        zv1.d();
        return wo4VarG;
    }

    public float c() {
        if (this.h == -1.0f) {
            this.h = this.c.k();
        }
        return this.h;
    }

    public final float d() {
        wo4 wo4VarB = b();
        if (wo4VarB.c()) {
            return 0.0f;
        }
        return wo4VarB.d.getInterpolation(e());
    }

    public final float e() {
        if (this.b) {
            return 0.0f;
        }
        wo4 wo4VarB = b();
        if (wo4VarB.c()) {
            return 0.0f;
        }
        return (this.d - wo4VarB.b()) / (wo4VarB.a() - wo4VarB.b());
    }

    public Object f() {
        float fE = e();
        if (this.e == null && this.c.c(fE)) {
            return this.f;
        }
        wo4 wo4VarB = b();
        Interpolator interpolator = wo4VarB.e;
        Interpolator interpolator2 = wo4VarB.f;
        Object objG = (interpolator == null || interpolator2 == null) ? g(wo4VarB, d()) : h(wo4VarB, fE, interpolator.getInterpolation(fE), interpolator2.getInterpolation(fE));
        this.f = objG;
        return objG;
    }

    public abstract Object g(wo4 wo4Var, float f);

    public Object h(wo4 wo4Var, float f, float f2, float f3) {
        throw new UnsupportedOperationException("This animation does not support split dimensions!");
    }

    public void i() {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.a;
            if (i >= arrayList.size()) {
                return;
            }
            ((ul0) arrayList.get(i)).b();
            i++;
        }
    }

    public void j(float f) {
        vl0 vl0Var = this.c;
        if (vl0Var.isEmpty()) {
            return;
        }
        if (this.g == -1.0f) {
            this.g = vl0Var.l();
        }
        float f2 = this.g;
        if (f < f2) {
            if (f2 == -1.0f) {
                this.g = vl0Var.l();
            }
            f = this.g;
        } else if (f > c()) {
            f = c();
        }
        if (f == this.d) {
            return;
        }
        this.d = f;
        if (vl0Var.h(f)) {
            i();
        }
    }

    public final void k(cd cdVar) {
        cd cdVar2 = this.e;
        if (cdVar2 != null) {
            cdVar2.getClass();
        }
        this.e = cdVar;
    }
}
