package defpackage;

import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Objects;
import java.util.function.Consumer;
import okhttp3.MediaType;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class bc6 extends dc6 {
    private InputStream w;
    private byte[] x;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a extends dc6.a<a, bc6> {
        /* JADX WARN: Type inference incomplete: some casts might be missing */
        private a w0(InputStream inputStream, byte[] bArr, Long l, final long j, final int i) {
            this.a.add(new b10(inputStream, 2));
            this.a.add(new c10(bArr, 2));
            this.a.add(new br5(l, 1));
            this.a.add((Consumer<A>) new Consumer() { // from class: zb6
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((bc6) obj).r = j;
                }
            });
            this.a.add((Consumer<A>) new Consumer() { // from class: ac6
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((bc6) obj).s = i;
                }
            });
            return this;
        }

        public a q0(byte[] bArr, int i) {
            if (bArr != null && i < 0) {
                c6.f("valid length must be provided");
                return null;
            }
            Long lValueOf = bArr != null ? Long.valueOf(i) : null;
            if (bArr == null) {
                i = -1;
            }
            return w0(null, bArr, lValueOf, Math.max(yr5.n, i), 1);
        }

        public a x0(InputStream inputStream, Long l, Long l2) {
            ki8.i(inputStream, "stream");
            long[] jArrF0 = f0(l, l2);
            return w0(inputStream, null, l, jArrF0[0], (int) jArrF0[1]);
        }

        @Override // dc6.a, yq5.a, fw0.a
        /* JADX INFO: renamed from: y0, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public void u(bc6 bc6Var) {
            super.u(bc6Var);
            if (bc6Var.w == null && bc6Var.x == null) {
                c6.f("either stream or data must be provided");
            }
        }
    }

    public static /* synthetic */ InputStream A(bc6 bc6Var, InputStream inputStream) {
        bc6Var.w = inputStream;
        return inputStream;
    }

    public static /* synthetic */ byte[] C(bc6 bc6Var, byte[] bArr) {
        bc6Var.x = bArr;
        return bArr;
    }

    public static a D() {
        return new a();
    }

    public byte[] E() {
        return this.x;
    }

    public InputStream F() {
        return this.w;
    }

    @Override // defpackage.dc6, defpackage.yr5, defpackage.yq5, defpackage.fw0, defpackage.ll0
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof bc6) || !super.equals(obj)) {
            return false;
        }
        bc6 bc6Var = (bc6) obj;
        return Objects.equals(this.w, bc6Var.w) && Arrays.equals(this.x, bc6Var.x);
    }

    @Override // defpackage.dc6, defpackage.yr5, defpackage.yq5, defpackage.fw0, defpackage.ll0
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.w, this.x);
    }

    @Override // defpackage.dc6, defpackage.yr5
    public MediaType j() throws IOException {
        return super.j();
    }
}
