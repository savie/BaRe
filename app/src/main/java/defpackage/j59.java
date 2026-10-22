package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class j59 extends Exception {
    public final hs1 a;

    public j59(hs1 hs1Var) {
        ly8.b("ResolvableConnectionException can only be created with a connection result containing a resolution.", (hs1Var.b == 0 || hs1Var.c == null) ? false : true);
        this.a = hs1Var;
    }
}
