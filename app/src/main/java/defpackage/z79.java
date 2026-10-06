package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class z79 implements e89 {
    public final o69 a;

    public z79(o69 o69Var) {
        this.a = o69Var;
    }

    @Override // defpackage.e89
    public final boolean a(Object obj) {
        xs1.r(obj);
        throw null;
    }

    @Override // defpackage.e89
    public final boolean b(k79 k79Var, k79 k79Var2) {
        return k79Var.zzb.equals(k79Var2.zzb);
    }

    @Override // defpackage.e89
    public final void c(Object obj, jq6 jq6Var) {
        xs1.r(obj);
        throw null;
    }

    @Override // defpackage.e89
    public final int d(k79 k79Var) {
        return k79Var.zzb.hashCode();
    }

    @Override // defpackage.e89
    public final void e(Object obj) {
        l89 l89Var = ((k79) obj).zzb;
        if (l89Var.e) {
            l89Var.e = false;
        }
        xs1.r(obj);
        throw null;
    }

    @Override // defpackage.e89
    public final void f(Object obj, byte[] bArr, int i, int i2, s69 s69Var) {
        k79 k79Var = (k79) obj;
        if (k79Var.zzb == l89.f) {
            k79Var.zzb = l89.e();
        }
        throw eq3.g(obj);
    }

    @Override // defpackage.e89
    public final int g(k79 k79Var) {
        l89 l89Var = k79Var.zzb;
        int i = l89Var.d;
        if (i != -1) {
            return i;
        }
        int iN = 0;
        for (int i2 = 0; i2 < l89Var.a; i2++) {
            int i3 = l89Var.b[i2] >>> 3;
            iN += c79.n(3, (t69) l89Var.c[i2]) + u48.h(i3, c79.t(16), c79.t(8) << 1);
        }
        l89Var.d = iN;
        return iN;
    }

    @Override // defpackage.e89
    public final void h(Object obj, lb4 lb4Var, f79 f79Var) {
        nh4.u(obj);
        obj.getClass();
        throw new ClassCastException();
    }

    @Override // defpackage.e89
    public final void i(Object obj, Object obj2) {
        xh8.J(obj, obj2);
    }

    @Override // defpackage.e89
    public final k79 zza() {
        o69 o69Var = this.a;
        if (o69Var instanceof k79) {
            return ((k79) o69Var).p();
        }
        j79 j79Var = (j79) ((k79) o69Var).d(5);
        boolean zS = j79Var.b.s();
        k79 k79Var = j79Var.b;
        if (!zS) {
            return k79Var;
        }
        k79Var.q();
        return j79Var.b;
    }
}
