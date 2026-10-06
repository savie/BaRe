package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class dg {
    public static final ai6 a = new ai6("[A-Za-z0-9_]+(\\.[A-Za-z0-9_]+)+");

    public static String a(String str) {
        String string = str != null ? nq7.H0(str).toString() : null;
        if (string == null) {
            string = "";
        }
        int length = string.length();
        if (3 <= length && length < 256) {
            for (int i = 0; i < string.length(); i++) {
                if (Character.isLetter(string.charAt(i))) {
                    if (a.b(string)) {
                        return string;
                    }
                }
            }
        }
        return null;
    }

    public static void b(String str, String str2, String str3) {
        String strA;
        String strA2 = a(str);
        if (strA2 == null || (strA = a(str2)) == null || strA2.equals(strA)) {
            return;
        }
        f6.g(str3.concat(" package name does not match APK package name"));
    }

    public static String c(String str, String str2) {
        String strA = a(str);
        if (strA != null) {
            return strA;
        }
        c6.f(eq3.k("Invalid ", str2, " package name"));
        return null;
    }
}
