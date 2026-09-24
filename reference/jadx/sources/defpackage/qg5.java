package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class qg5 implements AutoCloseable {
    public final pg5 a;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a {
        public final pg5.a a;

        public a() {
            this.a = null;
            int i = pg5.n;
            this.a = new pg5.a();
        }
    }

    public qg5(qg5 qg5Var) {
        this.a = null;
        this.a = qg5Var.a;
    }

    public final Iterable a(wx4 wx4Var) {
        pg5 pg5Var = this.a;
        pg5Var.getClass();
        if (wx4Var.z() || wx4Var.I() != null) {
            return new og5(pg5Var, new px4(wx4Var));
        }
        return wx4Var.G() ? new db2(1, pg5Var, new yx4(wx4Var)) : new mg5(pg5Var, new ay4(wx4Var));
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        pg5 pg5Var = this.a;
        if (pg5Var != null) {
            pg5Var.close();
        }
    }

    private qg5(pg5 pg5Var) {
        this.a = pg5Var;
    }

    public /* synthetic */ qg5(pg5 pg5Var, int i) {
        this(pg5Var);
    }
}
