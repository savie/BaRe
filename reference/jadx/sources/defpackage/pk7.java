package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@no6(name = "SSEAlgorithm")
@xv1(a.class)
public enum pk7 {
    AES256("AES256"),
    AWS_KMS("aws:kms");

    private final String a;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class a implements aw1 {
        @Override // defpackage.aw1
        public final void a(ev5 ev5Var, Object obj) {
            ev5Var.setValue(((pk7) obj).toString());
        }

        @Override // defpackage.aw1
        public final Object b(mc4 mc4Var) {
            return pk7.a(mc4Var.getValue());
        }
    }

    pk7(String str) {
        this.a = str;
    }

    @fj4
    public static pk7 a(String str) {
        for (pk7 pk7Var : values()) {
            if (str.equals(pk7Var.a)) {
                return pk7Var;
            }
        }
        c6.f(eq3.k("Unknown SSE algorithm '", str, "'"));
        return null;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.a;
    }
}
