package defpackage;

import org.swiftapps.swiftbackup.compress.Packer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bx extends gx {
    public final q63 a;
    public final i40 b;
    public final long c;
    public final long d;

    public bx(q63 q63Var) {
        q63Var.getClass();
        this.a = q63Var;
        this.b = Packer.c(q63Var);
        long jA = q63Var.A();
        this.c = jA;
        this.d = jA;
    }

    @Override // defpackage.gx
    public final long a() {
        return this.d;
    }
}
