package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public enum db3 {
    AuthInfo("auth info"),
    KeyDerivation("key derivation"),
    Login("login"),
    MetadataKeys("metadata-key recovery"),
    KeyPair("key-pair recovery"),
    BaseFolder("base-folder lookup"),
    SessionValidation("persisted-session validation");

    private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());
    private final String logLabel;

    db3(String str) {
        this.logLabel = str;
    }

    public static jx2 getEntries() {
        return $ENTRIES;
    }

    public final String getLogLabel() {
        return this.logLabel;
    }
}
