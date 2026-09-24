package defpackage;

import java.util.Objects;
import okhttp3.MediaType;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class s12 extends yq5 {
    private v64.c g;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a extends yq5.a<a, s12> {
        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a D(v64.c cVar) {
            this.a.add(new fn1(cVar, 1));
            return this;
        }

        @Override // yq5.a, fw0.a
        /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
        public void u(s12 s12Var) {
            super.u(s12Var);
        }
    }

    public s12(dc6 dc6Var, MediaType mediaType, y51.a aVar) {
        super(dc6Var);
        this.g = dc6Var.o(mediaType, aVar == null ? null : new v64.c("x-amz-checksum-algorithm", aVar.toString()));
    }

    public static /* synthetic */ v64.c i(s12 s12Var, v64.c cVar) {
        s12Var.g = cVar;
        return cVar;
    }

    public static a j() {
        return new a();
    }

    @Override // defpackage.yq5, defpackage.fw0, defpackage.ll0
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof s12) && super.equals(obj)) {
            return Objects.equals(this.g, ((s12) obj).g);
        }
        return false;
    }

    @Override // defpackage.yq5, defpackage.fw0, defpackage.ll0
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.g);
    }

    public v64.c k() {
        return this.g;
    }

    public s12() {
    }

    public s12(vo1 vo1Var) {
        super(vo1Var);
        this.g = vo1Var.n();
    }
}
