package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class kc9 implements Runnable {
    public final ue9 a;
    public final ke9 b;

    public kc9(ue9 ue9Var, ke9 ke9Var) {
        this.a = ue9Var;
        this.b = ke9Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.a.a != this) {
            return;
        }
        ke9 ke9Var = this.b;
        if (uc9.k.h0(this.a, this, ue9.f(ke9Var))) {
            ue9.h(this.a);
        }
    }
}
