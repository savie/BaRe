package defpackage;

import java.security.AccessControlException;
import java.security.AccessController;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class u86 {
    public static final ThreadLocal a = new ThreadLocal();

    public static boolean a(String str) {
        Map map;
        try {
            String str2 = (String) AccessController.doPrivileged(new s86(str));
            if (str2 == null && ((map = (Map) a.get()) == null || (str2 = (String) map.get(str)) == null)) {
                str2 = (String) AccessController.doPrivileged(new t86(str));
            }
            return str2 != null && str2.length() == 4 && (str2.charAt(0) == 't' || str2.charAt(0) == 'T') && ((str2.charAt(1) == 'r' || str2.charAt(1) == 'R') && ((str2.charAt(2) == 'u' || str2.charAt(2) == 'U') && (str2.charAt(3) == 'e' || str2.charAt(3) == 'E')));
        } catch (AccessControlException unused) {
        }
    }
}
