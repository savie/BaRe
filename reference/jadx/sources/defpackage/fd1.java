package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public enum fd1 {
    HTTP("http", "HTTP", 80),
    HTTPS("https", "HTTPS", 443),
    FTP("ftp", "FTP", 21),
    FTPS_IMPLICIT("ftps", "FTPS (Implicit)", 990),
    FTPS_EXPLICIT("ftps", "FTPES (Explicit)", 21),
    SFTP("sftp", "SFTP", 22),
    SMB("smb", "SMB", 445);

    private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());
    private final int defPort;
    private final String displayName;
    private final String scheme;

    fd1(String str, String str2, int i) {
        this.scheme = str;
        this.displayName = str2;
        this.defPort = i;
    }

    public static jx2 getEntries() {
        return $ENTRIES;
    }

    public final int getDefPort() {
        return this.defPort;
    }

    public final String getDisplayName() {
        return this.displayName;
    }

    public final String getScheme() {
        return this.scheme;
    }
}
