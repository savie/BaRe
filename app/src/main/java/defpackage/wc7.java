package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wc7 {
    public final long a;
    public final long b;

    public wc7(long j, long j2, long j3, long j4) {
        long j5 = j3 * j4;
        this.a = j * j5;
        this.b = j2 * j5;
    }

    public static wc7 a(jw0 jw0Var) {
        vw2 vw2Var = jw0Var.b;
        long jA = vw2Var.a(jw0Var);
        vw2Var.a(jw0Var);
        return new wc7(jA, vw2Var.a(jw0Var), vw2Var.e(jw0Var), vw2Var.e(jw0Var));
    }
}
