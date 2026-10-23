package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public enum fd8 {
    HTTP("http"),
    HTTPS("https");

    public final String a;

    fd8(String str) {
        if (jm1.A(str)) {
            c6.f("id must not be blank");
            throw null;
        }
        this.a = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.a;
    }
}
