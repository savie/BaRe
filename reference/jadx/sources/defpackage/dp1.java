package defpackage;

import java.util.Collection;
import java.util.Collections;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dp1 implements lj6 {
    public final er4 a;
    public final s03 b;
    public final ai5 c;
    public final ny1 d;
    public final cz4 e;
    public final vb8 f;

    public dp1(ai5 ai5Var, ny1 ny1Var, s03 s03Var, vb8 vb8Var) {
        this.a = ((er4) ny1Var.d).d();
        this.e = ai5Var.n();
        this.c = ai5Var;
        this.d = ny1Var;
        this.f = vb8Var;
        this.b = s03Var;
    }

    @Override // defpackage.bw1
    public final void a(ev5 ev5Var, Object obj) throws wt1 {
        Collection collection = (Collection) obj;
        if (!this.d.e()) {
            e(ev5Var, collection);
        } else if (!collection.isEmpty()) {
            e(ev5Var, collection);
        } else {
            if (ev5Var.j()) {
                return;
            }
            ev5Var.remove();
        }
    }

    @Override // defpackage.bw1
    public final Object b(mc4 mc4Var) {
        ((q14) this.d.c).getClass();
        return ((uq4) this.a.get(this.b.b(mc4Var.getName()))).q(this.c).b(mc4Var);
    }

    @Override // defpackage.bw1
    public final Object c(mc4 mc4Var, Object obj) {
        Object objC = ((uq4) this.a.get(this.b.b(mc4Var.getName()))).q(this.c).c(mc4Var, obj);
        ((q14) this.d.c).getClass();
        return objC;
    }

    @Override // defpackage.bw1
    public final boolean d(mc4 mc4Var) {
        return ((uq4) this.a.get(this.b.b(mc4Var.getName()))).q(this.c).d(mc4Var);
    }

    public final void e(ev5 ev5Var, Collection collection) throws wt1 {
        for (Object obj : collection) {
            if (obj != null) {
                Class<?> cls = obj.getClass();
                ny1 ny1Var = this.d;
                uq4 uq4VarD = ((q14) ny1Var.c).d(cls);
                if (uq4VarD == null) {
                    throw new wt1("Entry of %s not declared in %s with annotation %s", cls, this.f, ny1Var);
                }
                bw1 bw1VarQ = uq4VarD.q(this.c);
                Set setSingleton = Collections.singleton(obj);
                if (!uq4VarD.isInline()) {
                    String name = uq4VarD.getName();
                    this.e.getClass();
                    if (!ev5Var.j()) {
                        ev5Var.setName(name);
                    }
                }
                bw1VarQ.a(ev5Var, setSingleton);
            }
        }
    }
}
