package defpackage;

import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class dk1 {
    public static final Pattern a = Pattern.compile("^[0-9a-zA-Z\\-\\.\\_\\~]{43,128}$");

    public static void a(String str) {
        jb9.h("codeVerifier length is shorter than allowed by the PKCE specification", 43 <= str.length());
        jb9.h("codeVerifier length is longer than allowed by the PKCE specification", str.length() <= 128);
        jb9.h("codeVerifier string contains illegal characters", a.matcher(str).matches());
    }
}
