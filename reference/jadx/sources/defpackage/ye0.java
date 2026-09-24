package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ye0 implements j21 {
    public final xe0[] a;

    public ye0(xe0[] xe0VarArr) {
        this.a = xe0VarArr;
    }

    @Override // defpackage.j21
    public final void a(Throwable th) {
        b();
    }

    public final void b() {
        for (xe0 xe0Var : this.a) {
            in2 in2Var = xe0Var.p;
            if (in2Var == null) {
                pe4.F("handle");
                throw null;
            }
            in2Var.dispose();
        }
    }

    public final String toString() {
        return "DisposeHandlersOnCancel[" + this.a + ']';
    }
}
