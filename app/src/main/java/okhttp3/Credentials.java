package okhttp3;

import defpackage.hy0;
import java.nio.charset.Charset;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class Credentials {
    public static final String a(String str, String str2, Charset charset) {
        str.getClass();
        charset.getClass();
        byte[] bytes = (str + ':' + str2).getBytes(charset);
        bytes.getClass();
        return "Basic ".concat(new hy0(bytes).a());
    }
}
