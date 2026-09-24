package defpackage;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class d10 extends yq5 {
    private String g;
    private InputStream h;
    private byte[] i;
    private Long j;
    private Long k;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a extends yq5.a<a, d10> {
        /* JADX WARN: Type inference incomplete: some casts might be missing */
        private a P(String str, InputStream inputStream, byte[] bArr, Long l) {
            this.a.add(new z00(str, 0));
            this.a.add(new a10(inputStream, 0));
            this.a.add(new b10(bArr, 0));
            this.a.add(new c10(l, 0));
            return this;
        }

        private void S(String str) {
            ki8.h(str, "filename");
            if (Files.isRegularFile(Paths.get(str, new String[0]), new LinkOption[0])) {
                return;
            }
            c6.f(str.concat(" not a regular file"));
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a H(Long l) {
            if (l != null) {
                if (l.longValue() < 5242880) {
                    c6.f("chunk size must be minimum of 5 MiB");
                    return null;
                }
                if (l.longValue() > yr5.o) {
                    c6.f("chunk size must be less than 5 GiB");
                    return null;
                }
            }
            this.a.add(new y00(l, 0));
            return this;
        }

        public a I(byte[] bArr, int i) {
            if (bArr == null || i > 0) {
                return P(null, null, bArr, bArr == null ? null : Long.valueOf(i));
            }
            c6.f("valid length must be provided");
            return null;
        }

        public a J(String str) throws rg5 {
            try {
                S(str);
                return P(str, null, null, Long.valueOf(Files.size(Paths.get(str, new String[0]))));
            } catch (IOException e) {
                throw new rg5(e);
            }
        }

        public a Q(InputStream inputStream, Long l) {
            ki8.i(inputStream, "stream");
            return P(null, inputStream, null, l);
        }

        @Override // yq5.a, fw0.a
        /* JADX INFO: renamed from: R, reason: merged with bridge method [inline-methods] */
        public void u(d10 d10Var) {
            super.u(d10Var);
            if (d10Var.g == null && d10Var.h == null && d10Var.i == null) {
                c6.f("either filename, stream or data must be provided");
            }
        }
    }

    public static /* synthetic */ String j(d10 d10Var, String str) {
        d10Var.g = str;
        return str;
    }

    public static /* synthetic */ InputStream l(d10 d10Var, InputStream inputStream) {
        d10Var.h = inputStream;
        return inputStream;
    }

    public static /* synthetic */ byte[] n(d10 d10Var, byte[] bArr) {
        d10Var.i = bArr;
        return bArr;
    }

    public static /* synthetic */ Long o(d10 d10Var, Long l) {
        d10Var.k = l;
        return l;
    }

    public static /* synthetic */ Long p(d10 d10Var, Long l) {
        d10Var.j = l;
        return l;
    }

    public static a q() {
        return new a();
    }

    @Override // defpackage.yq5, defpackage.fw0, defpackage.ll0
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d10) || !super.equals(obj)) {
            return false;
        }
        d10 d10Var = (d10) obj;
        return Objects.equals(this.g, d10Var.g) && Objects.equals(this.h, d10Var.h) && Arrays.equals(this.i, d10Var.i) && Objects.equals(this.j, d10Var.j) && Objects.equals(this.k, d10Var.k);
    }

    @Override // defpackage.yq5, defpackage.fw0, defpackage.ll0
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.g, this.h, this.i, this.j, this.k);
    }

    public Long r() {
        return this.k;
    }

    public byte[] s() {
        return this.i;
    }

    public String t() {
        return this.g;
    }

    public Long u() {
        return this.j;
    }

    public InputStream v() {
        return this.h;
    }
}
