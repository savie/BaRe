package defpackage;

import android.net.Uri;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class gn5 {
    public static final String a;
    public static final Uri b;

    static {
        SwiftApp.Companion companion = SwiftApp.d;
        a = SwiftApp.Companion.a().getGoogleAuthAndroidClientId();
        Uri uri = Uri.parse("org.swiftapps.swiftbackup:/oauth");
        uri.getClass();
        b = uri;
    }
}
