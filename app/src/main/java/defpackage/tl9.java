package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tl9 implements jm9 {
    public final mg9 a;
    public final ns0 b;

    public tl9(ns0 ns0Var, mg9 mg9Var) {
        lk lkVar = ji9.a;
        this.b = ns0Var;
        this.a = mg9Var;
    }

    @Override // defpackage.jm9
    public final int a(xi9 xi9Var) {
        return xi9Var.zzc.hashCode();
    }

    @Override // defpackage.jm9
    public final void b(Object obj, byte[] bArr, int i, int i2, rg9 rg9Var) {
        xi9 xi9Var = (xi9) obj;
        if (xi9Var.zzc == mn9.f) {
            xi9Var.zzc = mn9.b();
        }
        throw eq3.g(obj);
    }

    @Override // defpackage.jm9
    public final void c(Object obj, om5 om5Var) {
        throw eq3.g(obj);
    }

    @Override // defpackage.jm9
    public final boolean d(Object obj) {
        throw eq3.g(obj);
    }

    @Override // defpackage.jm9
    public final boolean e(xi9 xi9Var, xi9 xi9Var2) {
        return xi9Var.zzc.equals(xi9Var2.zzc);
    }

    @Override // defpackage.jm9
    public final int f(mg9 mg9Var) {
        mn9 mn9Var = ((xi9) mg9Var).zzc;
        int i = mn9Var.d;
        if (i != -1) {
            return i;
        }
        int iT = 0;
        for (int i2 = 0; i2 < mn9Var.a; i2++) {
            int i3 = mn9Var.b[i2] >>> 3;
            dh9 dh9Var = (dh9) mn9Var.c[i2];
            int iN = nh9.n(8);
            int iN2 = nh9.n(i3) + nh9.n(16);
            int iN3 = nh9.n(24);
            int iF = dh9Var.f();
            iT += iN + iN + iN2 + u48.t(iF, iF, iN3);
        }
        mn9Var.d = iT;
        return iT;
    }

    @Override // defpackage.jm9
    public final xi9 zze() {
        mg9 mg9Var = this.a;
        if (mg9Var instanceof xi9) {
            return ((xi9) mg9Var).n();
        }
        ri9 ri9Var = (ri9) ((xi9) mg9Var).j(5);
        boolean zH = ri9Var.b.h();
        xi9 xi9Var = ri9Var.b;
        if (!zH) {
            return xi9Var;
        }
        xi9Var.getClass();
        bm9.c.a(xi9Var.getClass()).zzf(xi9Var);
        xi9Var.e();
        return ri9Var.b;
    }

    @Override // defpackage.jm9
    public final void zzf(Object obj) {
        this.b.getClass();
        mn9 mn9Var = ((xi9) obj).zzc;
        if (mn9Var.e) {
            mn9Var.e = false;
        }
        lk lkVar = ji9.a;
        throw eq3.g(obj);
    }

    @Override // defpackage.jm9
    public final void zzg(Object obj, Object obj2) {
        nm9.p(obj, obj2);
    }
}
