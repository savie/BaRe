package defpackage;

import java.io.ByteArrayOutputStream;
import java.nio.charset.Charset;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class vw2 {
    public static final byte[] a = {0, 0};
    public static final uw2 b = new uw2();
    public static final tw2 c = new tw2();

    public static String b(ow0 ow0Var, Charset charset) throws iw0 {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[2];
        ow0Var.getClass();
        ow0Var.o(bArr, 2);
        while (true) {
            if (bArr[0] == 0 && bArr[1] == 0) {
                return new String(byteArrayOutputStream.toByteArray(), charset);
            }
            byteArrayOutputStream.write(bArr, 0, 2);
            ow0Var.o(bArr, 2);
        }
    }

    public static String h(ow0 ow0Var, int i, Charset charset) throws iw0 {
        int i2 = i * 2;
        byte[] bArr = new byte[i2];
        ow0Var.o(bArr, i2);
        return new String(bArr, charset);
    }

    public abstract long a(ow0 ow0Var);

    public abstract String c(zu6 zu6Var);

    public abstract int d(ow0 ow0Var);

    public abstract long e(ow0 ow0Var);

    public abstract long f(ow0 ow0Var);

    public abstract String g(ow0 ow0Var, int i);

    public abstract void i(ow0 ow0Var, long j);

    public abstract void j(ow0 ow0Var, int i);

    public abstract void k(ow0 ow0Var, long j);

    public abstract void l(ow0 ow0Var, long j);

    public abstract void m(ow0 ow0Var, String str);
}
