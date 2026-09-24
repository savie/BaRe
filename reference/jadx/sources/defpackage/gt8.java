package defpackage;

import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class gt8 {
    public final q63 a;
    public final q63 b;

    public gt8() {
        this.a = new q63(b67.c() ? "/data/misc/apexdata/com.android.wifi/WifiConfigStore.xml" : "/data/misc/wifi/WifiConfigStore.xml", 4);
        SwiftApp.Companion companion = SwiftApp.d;
        this.b = new q63(SwiftApp.Companion.c().getCacheDir(), "wifi/system_config_file.xml", 2);
    }
}
