package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public enum uu {
    Granted("g"),
    DeniedUserSet("ds"),
    DeniedUserFixed("df");

    private final String token;
    private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());
    public static final tu Companion = new tu();

    uu(String str) {
        this.token = str;
    }

    public static jx2 getEntries() {
        return $ENTRIES;
    }

    public final String getToken() {
        return this.token;
    }
}
