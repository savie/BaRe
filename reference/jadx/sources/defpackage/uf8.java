package defpackage;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Paths;
import java.util.Objects;
import java.util.function.Consumer;
import okhttp3.MediaType;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class uf8 extends dc6 {
    private String w;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a extends dc6.a<a, uf8> {
        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void s0(long j, uf8 uf8Var) {
            uf8Var.q = Long.valueOf(j);
        }

        private void w0(String str) {
            ki8.h(str, "filename");
            if (Files.isRegularFile(Paths.get(str, new String[0]), new LinkOption[0])) {
                return;
            }
            c6.f(str.concat(" not a regular file"));
        }

        public a p0(String str) throws rg5 {
            return q0(str, 0L);
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a q0(String str, long j) throws rg5 {
            try {
                w0(str);
                final long size = Files.size(Paths.get(str, new String[0]));
                long[] jArrF0 = f0(Long.valueOf(size), Long.valueOf(j));
                long j2 = jArrF0[0];
                final int i = (int) jArrF0[1];
                this.a.add(new dw0(str, 5));
                this.a.add((Consumer<A>) new Consumer() { // from class: sf8
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        uf8.a.s0(size, (uf8) obj);
                    }
                });
                this.a.add(new ec6(1, j2));
                this.a.add((Consumer<A>) new Consumer() { // from class: tf8
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((uf8) obj).s = i;
                    }
                });
                return this;
            } catch (IOException e) {
                throw new rg5(e);
            }
        }

        @Override // dc6.a, yq5.a, fw0.a
        /* JADX INFO: renamed from: v0, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public void u(uf8 uf8Var) {
            super.u(uf8Var);
            w0(uf8Var.w);
        }
    }

    public static /* synthetic */ String A(uf8 uf8Var, String str) {
        uf8Var.w = str;
        return str;
    }

    public static a B() {
        return new a();
    }

    public String C() {
        return this.w;
    }

    @Override // defpackage.dc6, defpackage.yr5, defpackage.yq5, defpackage.fw0, defpackage.ll0
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof uf8) && super.equals(obj)) {
            return Objects.equals(this.w, ((uf8) obj).w);
        }
        return false;
    }

    @Override // defpackage.dc6, defpackage.yr5, defpackage.yq5, defpackage.fw0, defpackage.ll0
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.w);
    }

    @Override // defpackage.dc6, defpackage.yr5
    public MediaType j() throws IOException {
        MediaType mediaTypeJ = super.j();
        if (mediaTypeJ != null) {
            return mediaTypeJ;
        }
        String strProbeContentType = Files.probeContentType(Paths.get(this.w, new String[0]));
        if (strProbeContentType != null) {
            ai6 ai6Var = MediaType.d;
            try {
                return MediaType.Companion.a(strProbeContentType);
            } catch (IllegalArgumentException unused) {
            }
        }
        return null;
    }
}
