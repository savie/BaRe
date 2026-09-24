package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@no6(name = "SelectObjectContentRequest")
@jk5(reference = "http://s3.amazonaws.com/doc/2006-03-01/")
public class u67 extends dn0 {

    @at2(name = "RequestProgress", required = false)
    private a e;

    @at2(name = "ScanRange", required = false)
    private b f;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "RequestProgress", strict = false)
    public static class a {

        @at2(name = "Enabled")
        private boolean a = true;
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    @no6(name = "ScanRange")
    public static class b {

        @at2(name = "Start", required = false)
        private Long a;

        @at2(name = "End", required = false)
        private Long b;

        public b(Long l, Long l2) {
            this.a = l;
            this.b = l2;
        }
    }

    public u67(String str, boolean z, oc4 oc4Var, gv5 gv5Var, Long l, Long l2) {
        super(str, oc4Var, gv5Var);
        if (z) {
            this.e = new a();
        }
        if (l == null && l2 == null) {
            return;
        }
        this.f = new b(l, l2);
    }
}
