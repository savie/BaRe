package okhttp3;

import defpackage.f51;
import defpackage.hy0;
import defpackage.nw0;
import defpackage.u48;
import defpackage.y5;
import defpackage.yc9;
import defpackage.zw0;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.Charset;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ResponseBody implements Closeable {
    public static final ResponseBody$Companion$asResponseBody$1 b;
    public BomAwareReader a;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class BomAwareReader extends Reader {
        public final zw0 a;
        public final Charset b;
        public boolean c;
        public InputStreamReader d;

        public BomAwareReader(zw0 zw0Var, Charset charset) {
            zw0Var.getClass();
            charset.getClass();
            this.a = zw0Var;
            this.b = charset;
        }

        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            this.c = true;
            InputStreamReader inputStreamReader = this.d;
            if (inputStreamReader != null) {
                inputStreamReader.close();
            } else {
                this.a.close();
            }
        }

        @Override // java.io.Reader
        public final int read(char[] cArr, int i, int i2) throws IOException {
            cArr.getClass();
            if (this.c) {
                y5.m("Stream closed");
                return 0;
            }
            InputStreamReader inputStreamReader = this.d;
            if (inputStreamReader == null) {
                zw0 zw0Var = this.a;
                inputStreamReader = new InputStreamReader(zw0Var.q0(), _UtilJvmKt.f(zw0Var, this.b));
                this.d = inputStreamReader;
            }
            return inputStreamReader.read(cArr, i, i2);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Companion {
    }

    static {
        hy0 hy0Var = hy0.d;
        hy0Var.getClass();
        nw0 nw0Var = new nw0();
        nw0Var.D(hy0Var);
        b = new ResponseBody$Companion$asResponseBody$1(null, hy0Var.a.length, nw0Var);
    }

    public final InputStream a() {
        return m().q0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r2v8 */
    public final byte[] b() throws IOException {
        long jH = h();
        byte[] th = null;
        if (jH > 2147483647L) {
            y5.m(u48.l(jH, "Cannot buffer entire body for content length: "));
            return null;
        }
        zw0 zw0VarM = m();
        try {
            byte[] bArrT = zw0VarM.t();
            try {
                zw0VarM.close();
            } catch (Throwable th2) {
                th = th2;
            }
            byte[] bArr = th;
            th = bArrT;
            th = bArr;
        } catch (Throwable th3) {
            th = th3;
            if (zw0VarM != null) {
                try {
                    zw0VarM.close();
                } catch (Throwable th4) {
                    yc9.a(th, th4);
                }
            }
        }
        if (th != 0) {
            throw th;
        }
        int length = th.length;
        if (jH == -1 || jH == length) {
            return th;
        }
        throw new IOException("Content-Length (" + jH + ") and stream length (" + length + ") disagree");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        _UtilCommonKt.b(m());
    }

    public final Reader g() {
        Charset charsetA;
        BomAwareReader bomAwareReader = this.a;
        if (bomAwareReader == null) {
            zw0 zw0VarM = m();
            MediaType mediaTypeJ = j();
            if (mediaTypeJ == null || (charsetA = MediaType.a(mediaTypeJ)) == null) {
                charsetA = f51.a;
            }
            bomAwareReader = new BomAwareReader(zw0VarM, charsetA);
            this.a = bomAwareReader;
        }
        return bomAwareReader;
    }

    public abstract long h();

    public abstract MediaType j();

    public abstract zw0 m();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r3v8 */
    public final String n() {
        Charset charsetA;
        zw0 zw0VarM = m();
        String th = null;
        try {
            MediaType mediaTypeJ = j();
            if (mediaTypeJ == null || (charsetA = MediaType.a(mediaTypeJ)) == null) {
                charsetA = f51.a;
            }
            String strM = zw0VarM.M(_UtilJvmKt.f(zw0VarM, charsetA));
            try {
                zw0VarM.close();
            } catch (Throwable th2) {
                th = th2;
            }
            String str = th;
            th = strM;
            th = str;
        } catch (Throwable th3) {
            th = th3;
            if (zw0VarM != null) {
                try {
                    zw0VarM.close();
                } catch (Throwable th4) {
                    yc9.a(th, th4);
                }
            }
        }
        if (th == 0) {
            return th;
        }
        throw th;
    }
}
