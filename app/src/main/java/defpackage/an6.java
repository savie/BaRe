package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class an6 extends zm6 implements au3 {
    public final int a;

    public an6(int i, jv1 jv1Var) {
        super(jv1Var);
        this.a = i;
    }

    @Override // defpackage.au3
    public final int getArity() {
        return this.a;
    }

    @Override // defpackage.ml0
    public final String toString() {
        if (getCompletion() != null) {
            return super.toString();
        }
        ph6.a.getClass();
        return qh6.a(this);
    }
}
