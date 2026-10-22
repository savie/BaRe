package defpackage;

import java.io.FilterInputStream;
import java.io.InputStream;
import okhttp3.Headers;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class pw3 extends FilterInputStream {
    public pw3(Headers headers, String str, String str2, String str3, InputStream inputStream) {
        super(inputStream);
        new fv3(headers, str, str2, str3);
    }
}
