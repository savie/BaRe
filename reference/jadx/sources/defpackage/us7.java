package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class us7 implements nw6 {
    public final is3 a;
    public final String b;
    public boolean c;

    public us7(is3 is3Var, String str) {
        this.a = is3Var;
        this.b = str;
    }

    public final void a() {
        if (this.c) {
            ly8.P(21, "statement is closed");
            throw null;
        }
    }

    @Override // defpackage.nw6
    public void i() {
        a();
    }

    @Override // defpackage.nw6
    public void reset() {
        a();
    }
}
