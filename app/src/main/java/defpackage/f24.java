package defpackage;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.zip.GZIPInputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class f24 {
    public static final l15 a = o15.b(f24.class);

    public static byte[] a(byte[] bArr) throws IOException {
        Integer numValueOf = Integer.valueOf(bArr.length);
        l15 l15Var = a;
        ms8.A(4, l15Var, "Decompressing {} bytes", numValueOf);
        byte[] bArr2 = new byte[512];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            try {
                GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
                while (true) {
                    try {
                        int i = gZIPInputStream.read(bArr2, 0, 512);
                        if (i == -1) {
                            ms8.A(4, l15Var, "Decompressed to {} bytes", Integer.valueOf(byteArrayOutputStream.size()));
                            byte[] byteArray = byteArrayOutputStream.toByteArray();
                            gZIPInputStream.close();
                            byteArrayInputStream.close();
                            byteArrayOutputStream.close();
                            return byteArray;
                        }
                        byteArrayOutputStream.write(bArr2, 0, i);
                    } catch (Throwable th) {
                        try {
                            gZIPInputStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                    try {
                        byteArrayInputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                    throw th;
                }
            } catch (Throwable th4) {
                byteArrayInputStream.close();
                throw th4;
            }
        } catch (Throwable th5) {
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th6) {
                th5.addSuppressed(th6);
            }
            throw th5;
        }
    }
}
