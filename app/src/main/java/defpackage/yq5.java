package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class yq5 extends fw0 {
    protected String f;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static abstract class a<B extends a<B, A>, A extends yq5> extends fw0.a<B, A> {
        @Override // fw0.a
        /* JADX INFO: renamed from: A */
        public void u(A a) {
            super.u(a);
            B(a.f);
        }

        public void B(String str) {
            ki8.h(str, "object name");
            if (this.b) {
                return;
            }
            for (String str2 : str.split("/")) {
                if (str2.equals(".") || str2.equals("..")) {
                    c6.f("object name with '.' or '..' path segment is not supported");
                    return;
                }
            }
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public B z(String str) {
            B(str);
            this.a.add(new z00(str, 3));
            return this;
        }
    }

    public yq5(yq5 yq5Var) {
        super(yq5Var);
        this.f = yq5Var.f;
    }

    @Override // defpackage.fw0, defpackage.ll0
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof yq5) && super.equals(obj)) {
            return Objects.equals(this.f, ((yq5) obj).f);
        }
        return false;
    }

    public String h() {
        return this.f;
    }

    @Override // defpackage.fw0, defpackage.ll0
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.f);
    }

    public yq5() {
    }
}
