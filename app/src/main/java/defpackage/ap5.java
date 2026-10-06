package defpackage;

import java.io.File;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ap5 {
    public static boolean a(String str) {
        if (!nq7.j0(str)) {
            for (int i = 0; i < str.length(); i++) {
                char cCharAt = str.charAt(i);
                if (!ly8.C(cCharAt) && cCharAt != '\"' && cCharAt != '\'' && cCharAt != '<' && cCharAt != '>' && cCharAt != '&') {
                }
            }
            return true;
        }
        return false;
    }

    public static File b(String str) {
        SwiftApp.Companion companion = SwiftApp.d;
        File cacheDir = SwiftApp.Companion.c().getCacheDir();
        StringBuilder sbO = u48.o("notification-policy-", str, System.nanoTime(), "-");
        sbO.append(".xml");
        return new File(cacheDir, sbO.toString());
    }
}
