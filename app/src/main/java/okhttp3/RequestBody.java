package okhttp3;

import defpackage.f51;
import defpackage.hy0;
import defpackage.yw0;
import java.nio.charset.Charset;
import okhttp3.internal._UtilCommonKt;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class RequestBody {
    public static final RequestBody$Companion$toRequestBody$1 a;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Companion {
        public static RequestBody$Companion$toRequestBody$3 a(String str, MediaType mediaType) {
            str.getClass();
            Charset charset = f51.a;
            if (mediaType != null) {
                Charset charsetA = MediaType.a(mediaType);
                if (charsetA == null) {
                    try {
                        mediaType = MediaType.Companion.a(mediaType + "; charset=utf-8");
                    } catch (IllegalArgumentException unused) {
                        mediaType = null;
                    }
                } else {
                    charset = charsetA;
                }
            }
            byte[] bytes = str.getBytes(charset);
            bytes.getClass();
            int length = bytes.length;
            _UtilCommonKt.a(bytes.length, 0L, length);
            return new RequestBody$Companion$toRequestBody$3(bytes, length, mediaType);
        }

        public static RequestBody$Companion$toRequestBody$3 b(byte[] bArr, int i, MediaType mediaType) {
            if ((i & 1) != 0) {
                mediaType = null;
            }
            int length = bArr.length;
            _UtilCommonKt.a(bArr.length, 0L, length);
            return new RequestBody$Companion$toRequestBody$3(bArr, length, mediaType);
        }
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [okhttp3.RequestBody$Companion$toRequestBody$1] */
    static {
        final hy0 hy0Var = hy0.d;
        hy0Var.getClass();
        a = new RequestBody() { // from class: okhttp3.RequestBody$Companion$toRequestBody$1
            @Override // okhttp3.RequestBody
            public final long a() {
                return hy0Var.d();
            }

            @Override // okhttp3.RequestBody
            public final MediaType b() {
                return null;
            }

            @Override // okhttp3.RequestBody
            public final void d(yw0 yw0Var) {
                yw0Var.P(hy0Var);
            }
        };
    }

    public long a() {
        return -1L;
    }

    public abstract MediaType b();

    public boolean c() {
        return this instanceof RequestBody$Companion$toRequestBody$2;
    }

    public abstract void d(yw0 yw0Var);
}
