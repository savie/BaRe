package defpackage;

import android.os.Build;
import java.io.UnsupportedEncodingException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ha {
    public static final /* synthetic */ int a = 0;

    static {
        StringBuilder sb = new StringBuilder();
        String str = Build.FINGERPRINT;
        if (str != null) {
            sb.append(str);
        }
        String str2 = null;
        try {
            str2 = (String) Build.class.getField("SERIAL").get(null);
        } catch (Exception unused) {
        }
        if (str2 != null) {
            sb.append(str2);
        }
        try {
            sb.toString().getBytes("UTF-8");
        } catch (UnsupportedEncodingException unused2) {
            g84.h("UTF-8 encoding not supported");
        }
    }
}
