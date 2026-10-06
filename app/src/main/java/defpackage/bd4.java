package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public enum bd4 {
    PackageInstaller("PackageInstaller"),
    Internal("SwiftBackup");

    private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());
    private final String displayName;

    bd4(String str) {
        this.displayName = str;
    }

    public static jx2 getEntries() {
        return $ENTRIES;
    }

    public final String getDisplayName() {
        return this.displayName;
    }
}
