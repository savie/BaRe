package defpackage;

import javax.crypto.SecretKey;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mw5 extends rt6 {
    public final rt6 e;
    public final SecretKey f;
    public final /* synthetic */ nw5 g;

    public mw5(nw5 nw5Var, rt6 rt6Var, SecretKey secretKey) {
        this.g = nw5Var;
        this.e = rt6Var;
        this.f = secretKey;
    }

    @Override // defpackage.ev6
    public final dv6 c() {
        return (ut6) this.e.c();
    }

    @Override // defpackage.rt6
    public final int d() {
        return this.e.d();
    }

    @Override // defpackage.rt6
    public final rt6 e() {
        return this.e.e();
    }

    @Override // defpackage.rt6, defpackage.hw5
    /* JADX INFO: renamed from: g */
    public final void a(zu6 zu6Var) {
        rt6 rt6Var = this.e;
        try {
            ((ut6) rt6Var.c()).k |= 8;
            int i = zu6Var.d;
            lw5 lw5Var = new lw5(this, zu6Var);
            rt6Var.a(lw5Var);
            System.arraycopy(lw5Var.h.b(), 0, zu6Var.a, i + 48, 16);
        } catch (h67 e) {
            throw new IllegalStateException(e);
        }
    }

    @Override // defpackage.rt6
    public final String toString() {
        return "Signed(" + this.e.toString() + ")";
    }
}
