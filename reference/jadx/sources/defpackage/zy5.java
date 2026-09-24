package defpackage;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zy5 {
    public static final char[] c = {'+'};
    public static final char[] d = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    public final boolean a;
    public final boolean[] b;

    public zy5(String str, boolean z) {
        if (str.matches(".*[0-9A-Za-z].*")) {
            c6.f("Alphanumeric characters are always 'safe' and should not be explicitly specified");
            throw null;
        }
        String strConcat = str.concat("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789");
        if (z && strConcat.contains(TokenAuthenticationScheme.SCHEME_DELIMITER)) {
            c6.f("plusForSpace cannot be specified when space is a 'safe' character");
            throw null;
        }
        this.a = z;
        char[] charArray = strConcat.toCharArray();
        int iMax = -1;
        for (char c2 : charArray) {
            iMax = Math.max((int) c2, iMax);
        }
        boolean[] zArr = new boolean[iMax + 1];
        for (char c3 : charArray) {
            zArr[c3] = true;
        }
        this.b = zArr;
    }
}
