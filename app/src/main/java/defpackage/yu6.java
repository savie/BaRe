package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yu6 extends gv6 {
    public final long b;

    public yu6(ut6 ut6Var, String str) {
        super(str);
        this.b = ut6Var.j;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        bp5 bp5Var = bp5.STATUS_OTHER;
        long j = this.b;
        return String.format("%s (0x%08x): %s", ((bp5) sz8.k0(j, bp5.class, bp5Var)).name(), Long.valueOf(j), super.getMessage());
    }

    public yu6(long j, String str, Exception exc) {
        super(str, exc);
        this.b = j;
    }
}
