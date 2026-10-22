package defpackage;

import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class j3 {
    public final Class[] a;

    public j3(Class... clsArr) {
        this.a = clsArr;
    }

    public static int e(int i, Object obj) {
        return obj instanceof Number ? ((Number) obj).intValue() : i;
    }

    public abstract InputStream a(String str, InputStream inputStream, long j, kk1 kk1Var, byte[] bArr, int i);

    public OutputStream b(Object obj, OutputStream outputStream) {
        throw new UnsupportedOperationException("Method doesn't support writing");
    }

    public byte[] c(Object obj) {
        return wx3.a;
    }

    public Object d(kk1 kk1Var) {
        return null;
    }
}
