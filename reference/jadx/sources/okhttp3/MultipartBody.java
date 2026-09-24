package okhttp3;

import defpackage.ai6;
import defpackage.c6;
import defpackage.dj7;
import defpackage.ge;
import defpackage.hy0;
import defpackage.l0;
import defpackage.nw0;
import defpackage.y5;
import defpackage.yw0;
import java.io.EOFException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import okhttp3.internal._HeadersCommonKt;
import okhttp3.internal._UtilJvmKt;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class MultipartBody extends RequestBody {
    public static final MediaType f;
    public static final MediaType g;
    public static final byte[] h;
    public static final byte[] i;
    public static final byte[] j;
    public final hy0 b;
    public final List c;
    public final MediaType d;
    public long e;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Companion {
        public static void a(String str, StringBuilder sb) {
            str.getClass();
            sb.append('\"');
            int length = str.length();
            for (int i = 0; i < length; i++) {
                char cCharAt = str.charAt(i);
                if (cCharAt == '\n') {
                    sb.append("%0A");
                } else if (cCharAt == '\r') {
                    sb.append("%0D");
                } else if (cCharAt != '\"') {
                    sb.append(cCharAt);
                } else {
                    sb.append("%22");
                }
            }
            sb.append('\"');
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Part {
        public final Headers a;
        public final RequestBody b;

        /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
        public static final class Companion {
        }

        public Part(Headers headers, RequestBody requestBody) {
            this.a = headers;
            this.b = requestBody;
        }
    }

    static {
        ai6 ai6Var = MediaType.d;
        f = MediaType.Companion.a("multipart/mixed");
        MediaType.Companion.a("multipart/alternative");
        MediaType.Companion.a("multipart/digest");
        MediaType.Companion.a("multipart/parallel");
        g = MediaType.Companion.a("multipart/form-data");
        h = new byte[]{58, 32};
        i = new byte[]{13, 10};
        j = new byte[]{45, 45};
    }

    public MultipartBody(hy0 hy0Var, MediaType mediaType, List list) {
        hy0Var.getClass();
        mediaType.getClass();
        this.b = hy0Var;
        this.c = list;
        ai6 ai6Var = MediaType.d;
        this.d = MediaType.Companion.a(mediaType + "; boundary=" + hy0Var.w());
        this.e = -1L;
    }

    @Override // okhttp3.RequestBody
    public final long a() throws EOFException {
        long j2 = this.e;
        if (j2 != -1) {
            return j2;
        }
        long jE = e(null, true);
        this.e = jE;
        return jE;
    }

    @Override // okhttp3.RequestBody
    public final MediaType b() {
        return this.d;
    }

    @Override // okhttp3.RequestBody
    public final boolean c() {
        List list = this.c;
        if (list.isEmpty()) {
            return false;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (((Part) it.next()).b.c()) {
                return true;
            }
        }
        return false;
    }

    @Override // okhttp3.RequestBody
    public final void d(yw0 yw0Var) throws EOFException {
        e(yw0Var, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final long e(yw0 yw0Var, boolean z) throws EOFException {
        nw0 nw0Var;
        yw0 nw0Var2;
        if (z) {
            nw0Var2 = new nw0();
            nw0Var = nw0Var2;
        } else {
            nw0Var = 0;
            nw0Var2 = yw0Var;
        }
        List list = this.c;
        int size = list.size();
        long j2 = 0;
        int i2 = 0;
        while (true) {
            hy0 hy0Var = this.b;
            byte[] bArr = j;
            byte[] bArr2 = i;
            if (i2 >= size) {
                nw0Var2.getClass();
                nw0Var2.write(bArr);
                nw0Var2.P(hy0Var);
                nw0Var2.write(bArr);
                nw0Var2.write(bArr2);
                if (!z) {
                    return j2;
                }
                nw0Var.getClass();
                long j3 = j2 + nw0Var.b;
                nw0Var.a();
                return j3;
            }
            Part part = (Part) list.get(i2);
            Headers headers = part.a;
            RequestBody requestBody = part.b;
            nw0Var2.getClass();
            nw0Var2.write(bArr);
            nw0Var2.P(hy0Var);
            nw0Var2.write(bArr2);
            int size2 = headers.size();
            for (int i3 = 0; i3 < size2; i3++) {
                nw0Var2.K(headers.e(i3)).write(h).K(headers.g(i3)).write(bArr2);
            }
            MediaType mediaTypeB = requestBody.b();
            if (mediaTypeB != null) {
                nw0Var2.K("Content-Type: ").K(mediaTypeB.a).write(bArr2);
            }
            long jA = requestBody.a();
            if (jA == -1 && z) {
                nw0Var.getClass();
                nw0Var.a();
                return -1L;
            }
            nw0Var2.write(bArr2);
            if (z) {
                j2 += jA;
            } else {
                requestBody.d(nw0Var2);
            }
            nw0Var2.write(bArr2);
            i2++;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Builder {
        public final hy0 a;
        public MediaType b;
        public final ArrayList c;

        public Builder(String str) {
            str.getClass();
            hy0 hy0Var = hy0.d;
            this.a = ge.v(str);
            this.b = MultipartBody.f;
            this.c = new ArrayList();
        }

        public final void a(String str, String str2, RequestBody requestBody) {
            StringBuilder sbS = dj7.s("form-data; name=");
            MediaType mediaType = MultipartBody.f;
            Companion.a(str, sbS);
            if (str2 != null) {
                sbS.append("; filename=");
                Companion.a(str2, sbS);
            }
            String string = sbS.toString();
            Headers.Builder builder = new Headers.Builder();
            _HeadersCommonKt.b("Content-Disposition");
            _HeadersCommonKt.a(builder, "Content-Disposition", string);
            Headers headersB = builder.b();
            if (headersB.d("Content-Type") != null) {
                c6.f("Unexpected header: Content-Type");
            } else if (headersB.d("Content-Length") != null) {
                c6.f("Unexpected header: Content-Length");
            } else {
                this.c.add(new Part(headersB, requestBody));
            }
        }

        public final MultipartBody b() {
            ArrayList arrayList = this.c;
            if (arrayList.isEmpty()) {
                l0.e("Multipart body must have at least one part.");
                return null;
            }
            return new MultipartBody(this.a, this.b, _UtilJvmKt.j(arrayList));
        }

        public final void c(MediaType mediaType) {
            mediaType.getClass();
            if (mediaType.b.equals("multipart")) {
                this.b = mediaType;
            } else {
                y5.l(mediaType, "multipart != ");
            }
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public /* synthetic */ Builder() {
            String string = UUID.randomUUID().toString();
            string.getClass();
            this(string);
        }
    }
}
