package defpackage;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.util.List;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class bv {
    public static List a(String str, String str2, List list, Integer num) {
        SwiftApp.Companion companion = SwiftApp.d;
        String str3 = SwiftApp.Companion.c().getApplicationInfo().sourceDir;
        StringBuilder sb = new StringBuilder("env CLASSPATH=");
        str3.getClass();
        sb.append(b(str3));
        sb.append(" /system/bin/app_process /system/bin --nice-name=");
        sb.append(b(str2));
        sb.append(' ');
        sb.append(str);
        if (!list.isEmpty()) {
            sb.append(' ');
            sb.append(el1.Y0(list, TokenAuthenticationScheme.SCHEME_DELIMITER, null, null, new sh(1), 30));
        }
        String string = sb.toString();
        if (num != null) {
            string = "su " + num + " -c " + b(string);
        }
        return mp6.a.h(new String[]{string}, ip6.SU);
    }

    public static String b(String str) {
        return eq3.k("'", uq7.T(str, "'", "'\"'\"'"), "'");
    }
}
