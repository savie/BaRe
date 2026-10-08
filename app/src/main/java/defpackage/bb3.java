package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bb3 extends Exception {
    public final db3 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bb3(db3 db3Var, Exception exc) {
        super(xs1.j("Filen authentication failed during ", db3Var.getLogLabel()), exc);
        db3Var.getClass();
        this.a = db3Var;
    }
}
