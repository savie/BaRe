package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yp9 {
    public static final yp9 b = new yp9("NIST_P256");
    public static final yp9 c = new yp9("NIST_P384");
    public static final yp9 d = new yp9("NIST_P521");
    public static final yp9 e = new yp9("X25519");
    public final String a;

    public yp9(String str) {
        this.a = str;
    }

    public final String toString() {
        return this.a;
    }
}
