package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class w86 implements sl0 {
    public boolean a;
    public final Object b;
    public final Object c;
    public Object d;
    public Object e;
    public final Object f;

    public w86(v77 v77Var, wo0 wo0Var) {
        this.b = v77Var;
        this.c = wo0Var;
        qk4 qk4Var = qk4.e;
        as5 as5Var = wo0Var.d;
        qk4 qk4VarA = as5Var != null ? qk4Var.a(as5Var.z(wo0Var.e)) : qk4Var;
        v77Var.e(wo0Var.a.f);
        qk4 qk4VarA2 = qk4VarA.a(qk4Var);
        v77Var.k.getClass();
        this.f = qk4Var.a(qk4VarA2);
        this.a = qk4VarA2.a == pk4.d;
        this.d = v77Var.d();
    }

    public gc8 a(od odVar, boolean z, gc8 gc8Var) {
        as5 as5Var = (as5) this.d;
        gc8 gc8VarD0 = as5Var.d0((v77) this.b, odVar, gc8Var);
        if (gc8VarD0 != gc8Var) {
            Class<?> cls = gc8VarD0.f;
            Class<?> cls2 = gc8Var.f;
            if (!cls.isAssignableFrom(cls2) && !cls2.isAssignableFrom(cls)) {
                q.h("Illegal concrete-type annotation for method '", odVar.B(), "': class ", cls.getName(), " not a super-type of (declared) class ", cls2.getName());
                return null;
            }
            gc8Var = gc8VarD0;
            z = true;
        }
        am4 am4VarJ = as5Var.J(odVar);
        if (am4VarJ != null && am4VarJ != am4.c) {
            z = am4VarJ == am4.b;
        }
        if (z) {
            return gc8Var.G0();
        }
        return null;
    }

    public void b(hs1 hs1Var) {
        g19 g19Var = (g19) ((pz3) this.f).j.get((df) this.c);
        if (g19Var != null) {
            g19Var.p(hs1Var);
        }
    }

    @Override // defpackage.sl0
    public void i(hs1 hs1Var) {
        ((pz3) this.f).n.post(new j29(1, this, hs1Var));
    }

    public w86(pz3 pz3Var, ne neVar, df dfVar) {
        this.f = pz3Var;
        this.d = null;
        this.e = null;
        this.a = false;
        this.b = neVar;
        this.c = dfVar;
    }
}
