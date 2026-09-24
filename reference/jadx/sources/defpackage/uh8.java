package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public enum uh8 {
    GoogleDns("8.8.8.8", 53),
    CloudflareDns("1.1.1.1", 53),
    Facebook("facebook.com", 80),
    Baidu("baidu.com", 80),
    SwiftApps("swiftapps.org", 80);

    private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());
    private final String host;
    private final int port;

    uh8(String str, int i) {
        this.host = str;
        this.port = i;
    }

    public static jx2 getEntries() {
        return $ENTRIES;
    }

    public final String getHost() {
        return this.host;
    }

    public final int getPort() {
        return this.port;
    }
}
