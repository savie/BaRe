package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wo0 {
    public static final Class[] j = new Class[0];
    public final gc8 a;
    public final xv5 b;
    public final s65 c;
    public final as5 d;
    public final hd e;
    public Class[] f;
    public boolean g;
    public List h;
    public final kr5 i;

    /* JADX WARN: Illegal instructions before constructor call */
    public wo0(xv5 xv5Var) {
        gc8 gc8Var = xv5Var.c;
        hd hdVar = xv5Var.d;
        this(gc8Var);
        this.b = xv5Var;
        v77 v77Var = xv5Var.a;
        this.c = v77Var;
        this.d = v77Var.d();
        this.e = hdVar;
        as5 as5Var = xv5Var.f;
        kr5 kr5VarQ = as5Var.q(hdVar);
        this.i = kr5VarQ != null ? as5Var.r(hdVar, kr5VarQ) : kr5VarQ;
    }

    public static wo0 d(s65 s65Var, gc8 gc8Var, hd hdVar) {
        List list = Collections.EMPTY_LIST;
        return new wo0(s65Var, gc8Var, hdVar);
    }

    public final List a() {
        if (this.h == null) {
            xv5 xv5Var = this.b;
            if (!xv5Var.i) {
                xv5Var.i();
            }
            this.h = new ArrayList(xv5Var.j.values());
        }
        return this.h;
    }

    public final bk4 b() {
        xv5 xv5Var = this.b;
        if (xv5Var == null) {
            return bk4.n;
        }
        if (xv5Var.t == null) {
            as5 as5Var = xv5Var.f;
            bk4 bk4VarH = as5Var != null ? as5Var.h(xv5Var.d) : null;
            bk4 bk4VarF = xv5Var.a.f(xv5Var.c.f);
            if (bk4VarF != null) {
                bk4VarH = bk4VarH == null ? bk4VarF : bk4VarH.c(bk4VarF);
            }
            if (bk4VarH == null) {
                bk4VarH = bk4.n;
            }
            xv5Var.t = bk4VarH;
        }
        return xv5Var.t;
    }

    public final od c() {
        xv5 xv5Var = this.b;
        if (xv5Var != null) {
            if (!xv5Var.i) {
                xv5Var.i();
            }
            LinkedList linkedList = xv5Var.r;
            if (linkedList != null) {
                if (linkedList.size() <= 1 || xv5.g(xv5Var.r)) {
                    return (od) xv5Var.r.get(0);
                }
                xv5Var.j("Multiple 'as-value' properties defined (%s vs %s)", xv5Var.r.get(0), xv5Var.r.get(1));
                throw null;
            }
        }
        return null;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public wo0(s65 s65Var, gc8 gc8Var, hd hdVar) {
        this(gc8Var);
        List list = Collections.EMPTY_LIST;
        this.b = null;
        this.c = s65Var;
        if (s65Var == null) {
            this.d = null;
        } else {
            this.d = s65Var.d();
        }
        this.e = hdVar;
        this.h = list;
    }

    public wo0(gc8 gc8Var) {
        this.a = gc8Var;
    }
}
