package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class k36 {
    public static final z86[] f = new z86[0];
    public final ud a;
    public final boolean b;
    public final ej4 c;
    public z86[] d;
    public z86[] e;

    public k36(ud udVar, ej4 ej4Var) {
        this.a = udVar;
        this.b = ej4Var != null;
        this.c = ej4Var == null ? ej4.a : ej4Var;
    }

    public final boolean a(v77 v77Var) {
        as5 as5VarD = v77Var.d();
        int length = this.d.length;
        for (int i = 0; i < length; i++) {
            if (this.e[i] == null && this.d[i] == null && as5VarD.i(this.a.w0(i)) == null) {
                return false;
            }
        }
        return true;
    }

    public final void b(s65 s65Var) {
        if (this.d != null) {
            return;
        }
        ud udVar = this.a;
        int iX0 = udVar.x0();
        if (iX0 == 0) {
            z86[] z86VarArr = f;
            this.e = z86VarArr;
            this.d = z86VarArr;
            return;
        }
        this.e = new z86[iX0];
        this.d = new z86[iX0];
        as5 as5VarD = s65Var.d();
        for (int i = 0; i < iX0; i++) {
            z86 z86VarM = as5VarD.m(udVar.w0(i));
            if (z86VarM != null && !z86VarM.c()) {
                this.e[i] = z86VarM;
            }
        }
    }

    public final String toString() {
        return "(mode=" + this.c + ")" + this.a;
    }
}
