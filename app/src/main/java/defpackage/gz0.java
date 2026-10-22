package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class gz0 {
    public final sb4 a;
    public final boolean b;
    public final boolean c;

    public gz0(sb4 sb4Var, boolean z, boolean z2) {
        this.a = sb4Var;
        this.b = z;
        this.c = z2;
    }

    public final boolean a(m61 m61Var) {
        return (this.b && !this.c) || this.a.a.c0(m61Var);
    }

    public final boolean b(gy5 gy5Var) {
        if (gy5Var.isEmpty()) {
            return this.b && !this.c;
        }
        return a(gy5Var.k());
    }
}
