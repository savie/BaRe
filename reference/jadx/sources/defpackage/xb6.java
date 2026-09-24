package defpackage;

import java.io.RandomAccessFile;
import java.util.Objects;
import okhttp3.MediaType;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class xb6 extends yb6 {
    private MediaType l;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a extends yb6.a<a, xb6> {
        public a T(String str) {
            ai6 ai6Var = MediaType.d;
            MediaType mediaTypeB = MediaType.Companion.b(str);
            if (mediaTypeB != null) {
                return U(mediaTypeB);
            }
            c6.f(eq3.k("invalid content type '", str, "' as per RFC 2045"));
            return null;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a U(MediaType mediaType) {
            this.a.add(new uo1(mediaType, 3));
            return this;
        }
    }

    public xb6(dc6 dc6Var, RandomAccessFile randomAccessFile, long j, MediaType mediaType, v64.c cVar) {
        super(dc6Var, randomAccessFile, j, dc6Var.o(mediaType, cVar));
        this.l = mediaType;
    }

    public static /* synthetic */ MediaType n(xb6 xb6Var, MediaType mediaType) {
        xb6Var.l = mediaType;
        return mediaType;
    }

    public static a o() {
        return new a();
    }

    @Override // defpackage.yb6, defpackage.yq5, defpackage.fw0, defpackage.ll0
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof xb6) && super.equals(obj)) {
            return Objects.equals(this.l, ((xb6) obj).l);
        }
        return false;
    }

    @Override // defpackage.yb6, defpackage.yq5, defpackage.fw0, defpackage.ll0
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.l);
    }

    public MediaType p() {
        return this.l;
    }

    public xb6(dc6 dc6Var, ox0 ox0Var, MediaType mediaType, v64.c cVar) {
        super(dc6Var, ox0Var, dc6Var.o(mediaType, cVar));
        this.l = mediaType;
    }

    public xb6() {
    }

    public xb6(dc6 dc6Var, byte[] bArr, int i, MediaType mediaType, v64.c cVar) {
        super(dc6Var, bArr, i, dc6Var.o(mediaType, cVar));
        this.l = mediaType;
    }

    public xb6(d10 d10Var, ox0 ox0Var, v64.c cVar) {
        super(d10Var, ox0Var, cVar);
    }

    public xb6(d10 d10Var, RandomAccessFile randomAccessFile, long j, v64.c cVar) {
        super(d10Var, randomAccessFile, j, cVar);
    }

    public xb6(d10 d10Var, byte[] bArr, int i, v64.c cVar) {
        super(d10Var, bArr, i, cVar);
    }

    public xb6(bg8 bg8Var, byte[] bArr, int i, v64.c cVar) {
        super(bg8Var, bArr, i, cVar);
    }

    public xb6(bg8 bg8Var, RandomAccessFile randomAccessFile, long j, v64.c cVar) {
        super(bg8Var, randomAccessFile, j, cVar);
    }
}
