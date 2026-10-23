package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ws7 extends kv1 implements au3 {
    private final int arity;

    public ws7(int i, jv1 jv1Var) {
        super(jv1Var);
        this.arity = i;
    }

    @Override // defpackage.au3
    public int getArity() {
        return this.arity;
    }

    @Override // defpackage.ml0
    public String toString() {
        if (getCompletion() != null) {
            return super.toString();
        }
        ph6.a.getClass();
        return qh6.a(this);
    }
}
