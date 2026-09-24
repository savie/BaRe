package defpackage;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class c23 {
    public static final Properties a;

    /* JADX WARN: Code duplicated, block: B:19:0x002a A[Catch: IOException -> 0x002d, TRY_ENTER, TRY_LEAVE, TryCatch #4 {IOException -> 0x002d, blocks: (B:3:0x0005, B:19:0x002a), top: B:30:0x0005 }] */
    static {
        Properties properties;
        Throwable th;
        Pattern pattern = d23.O;
        Properties properties2 = null;
        try {
            InputStream resourceAsStream = d23.class.getResourceAsStream("/systemType.properties");
            if (resourceAsStream != null) {
                try {
                    properties = new Properties();
                    try {
                        properties.load(resourceAsStream);
                        properties2 = properties;
                        if (resourceAsStream != null) {
                            resourceAsStream.close();
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        try {
                            try {
                                resourceAsStream.close();
                            } catch (Throwable th3) {
                                th.addSuppressed(th3);
                            }
                            throw th;
                        } catch (IOException unused) {
                            properties2 = properties;
                        }
                    }
                } catch (Throwable th4) {
                    properties = null;
                    th = th4;
                }
            } else if (resourceAsStream != null) {
                resourceAsStream.close();
            }
        } catch (IOException unused2) {
        }
        a = properties2;
    }
}
