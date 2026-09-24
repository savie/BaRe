package defpackage;

import java.io.IOException;
import java.util.Objects;
import java.util.function.Consumer;
import okhttp3.MediaType;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class dc6 extends yr5 {
    protected Long q;
    protected long r;
    protected int s;
    protected MediaType t;
    protected y51.a u;
    protected int v;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static abstract class a<B extends a<B, A>, A extends dc6> extends yr5.a<B, A> {
        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public B c0(y51.a aVar) {
            y51.a aVar2 = y51.a.MD5;
            if (aVar != aVar2) {
                this.a.add(new en1(aVar, 3));
                return this;
            }
            throw new IllegalArgumentException(aVar2 + " algorithm is not allowed");
        }

        public B d0(String str) {
            ai6 ai6Var = MediaType.d;
            MediaType mediaTypeB = MediaType.Companion.b(str);
            if (mediaTypeB != null) {
                return (B) e0(mediaTypeB);
            }
            c6.f(eq3.k("invalid content type '", str, "' as per RFC 2045"));
            return null;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public B e0(MediaType mediaType) {
            this.a.add(new fn1(mediaType, 4));
            return this;
        }

        public long[] f0(Long l, Long l2) {
            if (l2 != null && l2.longValue() > 0) {
                if (l2.longValue() < 5242880) {
                    d6.e(l2, " is not supported; minimum allowed 5MiB", "part size ");
                    return null;
                }
                if (l2.longValue() > yr5.o) {
                    d6.e(l2, " is not supported; maximum allowed 5GiB", "part size ");
                    return null;
                }
            }
            if (l == null || l.longValue() < 0) {
                if (l2 != null && l2.longValue() > 0) {
                    return new long[]{l2.longValue(), -1};
                }
                c6.f("valid part size must be provided for unknown object size");
                return null;
            }
            if (l2 == null || l2.longValue() <= 0) {
                l2 = Long.valueOf((long) (Math.ceil(Math.ceil(l.longValue() / 10000.0d) / 5242880.0d) * 5242880.0d));
            }
            if (l2.longValue() > l.longValue()) {
                return new long[]{l2.longValue(), 1};
            }
            long jCeil = (long) Math.ceil(l.longValue() / l2.longValue());
            if (jCeil <= 10000) {
                return new long[]{l2.longValue(), jCeil};
            }
            d6.k("object size ", l, " and part size ", l2, " make more than 10000parts for upload");
            return null;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public B j0(final int i) {
            this.a.add((Consumer<A>) new Consumer() { // from class: cc6
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((dc6) obj).v = i;
                }
            });
            return this;
        }

        @Override // yq5.a, fw0.a
        /* JADX INFO: renamed from: k0 */
        public void u(A a) {
            int i;
            super.u(a);
            y51.a aVar = a.u;
            if (aVar == null || (i = a.s) <= 0) {
                return;
            }
            if (i == 1 && (aVar == y51.a.CRC32 || aVar == y51.a.CRC32C || aVar == y51.a.CRC64NVME)) {
                return;
            }
            if (i > 1) {
                aVar.getClass();
                if (aVar == y51.a.CRC32 || aVar == y51.a.CRC32C || aVar == y51.a.SHA1 || aVar == y51.a.SHA256) {
                    return;
                }
            }
            StringBuilder sb = new StringBuilder("unsupported checksum ");
            sb.append(a.u);
            int i2 = a.s;
            sb.append(" for part count ");
            sb.append(i2);
            throw new IllegalArgumentException(sb.toString());
        }
    }

    @Override // defpackage.yr5, defpackage.yq5, defpackage.fw0, defpackage.ll0
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof dc6) || !super.equals(obj)) {
            return false;
        }
        dc6 dc6Var = (dc6) obj;
        return Objects.equals(this.q, dc6Var.q) && this.r == dc6Var.r && this.s == dc6Var.s && Objects.equals(this.t, dc6Var.t) && Objects.equals(this.u, dc6Var.u) && this.v == dc6Var.v;
    }

    @Override // defpackage.yr5, defpackage.yq5, defpackage.fw0, defpackage.ll0
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.q, Long.valueOf(this.r), Integer.valueOf(this.s), this.t, this.u, Integer.valueOf(this.v));
    }

    @Override // defpackage.yr5
    public MediaType j() throws IOException {
        MediaType mediaType = this.t;
        return mediaType != null ? mediaType : super.j();
    }

    public y51.a u() {
        return this.u;
    }

    public Long v() {
        return this.q;
    }

    public int w() {
        return this.v;
    }

    public int x() {
        return this.s;
    }

    public long y() {
        return this.r;
    }
}
