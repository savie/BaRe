package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rj9 implements jk9 {
    public final jf9 a;
    public final jl9 b;

    public rj9(jl9 jl9Var, wg9 wg9Var, jf9 jf9Var) {
        this.b = jl9Var;
        this.a = jf9Var;
    }

    @Override // defpackage.jk9
    public final void a(Object obj) {
        this.b.getClass();
        il9 il9Var = ((ih9) obj).zzc;
        if (il9Var.d) {
            il9Var.d = false;
        }
        throw eq3.g(obj);
    }

    @Override // defpackage.jk9
    public final boolean b(ih9 ih9Var, ih9 ih9Var2) {
        this.b.getClass();
        return ih9Var.zzc.equals(ih9Var2.zzc);
    }

    @Override // defpackage.jk9
    public final void c(Object obj, Object obj2) {
        nk9.a(this.b, obj, obj2);
    }

    @Override // defpackage.jk9
    public final void d(Object obj, byte[] bArr, int i, int i2, of9 of9Var) {
        ih9 ih9Var = (ih9) obj;
        if (ih9Var.zzc == il9.e) {
            ih9Var.zzc = il9.a();
        }
        throw eq3.g(obj);
    }

    @Override // defpackage.jk9
    public final int e(ih9 ih9Var) {
        this.b.getClass();
        return ih9Var.zzc.hashCode();
    }

    @Override // defpackage.jk9
    public final boolean f(Object obj) {
        throw eq3.g(obj);
    }

    @Override // defpackage.jk9
    public final ih9 zzd() {
        jf9 jf9Var = this.a;
        return jf9Var instanceof ih9 ? ((ih9) jf9Var).b() : ((um9) ((ih9) jf9Var).h(5)).a();
    }
}
