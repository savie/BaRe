package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jn2 implements j21 {
    public final in2 a;

    public jn2(in2 in2Var) {
        this.a = in2Var;
    }

    @Override // defpackage.j21
    public final void a(Throwable th) {
        this.a.dispose();
    }

    public final String toString() {
        return "DisposeOnCancel[" + this.a + ']';
    }
}
