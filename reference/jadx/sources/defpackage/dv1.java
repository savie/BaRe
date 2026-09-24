package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dv1 implements xx1 {
    public final ox1 a;

    public dv1(ox1 ox1Var) {
        this.a = ox1Var;
    }

    @Override // defpackage.xx1
    public final ox1 d() {
        return this.a;
    }

    public final String toString() {
        return "CoroutineScope(coroutineContext=" + this.a + ')';
    }
}
