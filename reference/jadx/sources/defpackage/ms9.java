package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ms9 extends bd9 {
    public final String a;
    public final r0a b;

    public ms9(String str, r0a r0aVar) {
        this.a = str;
        this.b = r0aVar;
    }

    @Override // defpackage.bd9
    public final boolean a() {
        return this.b != r0a.RAW;
    }

    public final String toString() {
        String str;
        int i = ps9.a[this.b.ordinal()];
        if (i == 1) {
            str = "TINK";
        } else if (i == 2) {
            str = "LEGACY";
        } else if (i != 3) {
            str = i != 4 ? "UNKNOWN" : "CRUNCHY";
        } else {
            str = "RAW";
        }
        return eq3.l("(typeUrl=", this.a, ", outputPrefixType=", str, ")");
    }
}
