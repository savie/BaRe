package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class w2 extends yq5 {
    private String g;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a extends yq5.a<a, w2> {
        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a E(String str) {
            ki8.h(str, "upload ID");
            this.a.add(new v2(str, 0));
            return this;
        }

        @Override // yq5.a, fw0.a
        /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
        public void u(w2 w2Var) {
            super.u(w2Var);
            ki8.h(w2Var.g, "upload ID");
        }
    }

    public w2(vo1 vo1Var, String str) {
        super(vo1Var);
        this.g = str;
    }

    public static /* synthetic */ String j(w2 w2Var, String str) {
        w2Var.g = str;
        return str;
    }

    public static a k() {
        return new a();
    }

    @Override // defpackage.yq5, defpackage.fw0, defpackage.ll0
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof w2) && super.equals(obj)) {
            return Objects.equals(this.g, ((w2) obj).g);
        }
        return false;
    }

    @Override // defpackage.yq5, defpackage.fw0, defpackage.ll0
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.g);
    }

    public String l() {
        return this.g;
    }

    public w2() {
    }

    public w2(dc6 dc6Var, String str) {
        super(dc6Var);
        this.g = str;
    }
}
