package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@no6(name = "Status")
@xv1(a.class)
public enum xm7 {
    DISABLED("Disabled"),
    ENABLED("Enabled");

    private final String a;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class a implements aw1 {
        @Override // defpackage.aw1
        public final void a(ev5 ev5Var, Object obj) {
            ev5Var.setValue(((xm7) obj).toString());
        }

        @Override // defpackage.aw1
        public final Object b(mc4 mc4Var) {
            return xm7.a(mc4Var.getValue());
        }
    }

    xm7(String str) {
        this.a = str;
    }

    @fj4
    public static xm7 a(String str) {
        for (xm7 xm7Var : values()) {
            if (str.equals(xm7Var.a)) {
                return xm7Var;
            }
        }
        c6.f(eq3.k("Unknown status '", str, "'"));
        return null;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.a;
    }
}
