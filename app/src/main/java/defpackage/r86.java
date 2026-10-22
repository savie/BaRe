package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class r86 implements qj7 {
    public static final r86 b = new r86(sd0.k);
    public final rj7 a;

    public r86(rj7 rj7Var) {
        this.a = rj7Var;
    }

    @Override // defpackage.qj7
    public final rj7 getSpanContext() {
        return this.a;
    }

    public final String toString() {
        return "PropagatedSpan{" + this.a + '}';
    }
}
