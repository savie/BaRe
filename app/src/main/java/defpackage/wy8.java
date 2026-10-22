package defpackage;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class wy8 {
    public static final xm5 a;

    static {
        Charset charsetDefaultCharset = StandardCharsets.UTF_8;
        int i = g51.a;
        if (charsetDefaultCharset == null) {
            charsetDefaultCharset = Charset.defaultCharset();
        }
        a = new xm5(charsetDefaultCharset);
    }
}
