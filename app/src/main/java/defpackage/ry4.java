package defpackage;

import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ry4 extends fw0 {
    private String f;
    private String g;
    private String[] h = null;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a extends fw0.a<a, ry4> {
        private void H(String[] strArr) {
            ki8.i(strArr, "events");
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a A(String[] strArr) {
            H(strArr);
            this.a.add(new fn1((String[]) Arrays.copyOf(strArr, strArr.length), 3));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a E(String str) {
            this.a.add(new v2(str, 4));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a F(String str) {
            this.a.add(new vx4(str, 2));
            return this;
        }

        @Override // fw0.a
        /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
        public void u(ry4 ry4Var) {
            if (ry4Var.d != null) {
                super.u(ry4Var);
            }
            H(ry4Var.h);
        }
    }

    public static a l() {
        return new a();
    }

    @Override // defpackage.fw0, defpackage.ll0
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ry4) || !super.equals(obj)) {
            return false;
        }
        ry4 ry4Var = (ry4) obj;
        return Objects.equals(this.f, ry4Var.f) && Objects.equals(this.g, ry4Var.g) && Arrays.equals(this.h, ry4Var.h);
    }

    @Override // defpackage.fw0, defpackage.ll0
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.f, this.g, Integer.valueOf(Arrays.hashCode(this.h)));
    }

    public String[] m() {
        String[] strArr = this.h;
        return (String[]) Arrays.copyOf(strArr, strArr.length);
    }

    public String n() {
        return this.f;
    }

    public String o() {
        return this.g;
    }
}
