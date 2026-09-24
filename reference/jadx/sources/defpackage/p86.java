package defpackage;

import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class p86 extends vr5 {
    private String h;
    private String i;
    private Map<String, Object> j;
    private Map<String, String> k;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a extends vr5.a<a, p86> {
        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a J(Map<String, String> map) {
            this.a.add(new o86(0, map));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a O(String str) {
            ki8.h(str, "lambda ARN");
            this.a.add(new pw4(str, 3));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a P(String str) {
            ki8.h(str, "prompt");
            this.a.add(new z00(str, 4));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a Q(Map<String, Object> map) {
            ki8.i(map, "prompt argument");
            this.a.add(new a10(map, 5));
            return this;
        }

        @Override // yq5.a, fw0.a
        /* JADX INFO: renamed from: R, reason: merged with bridge method [inline-methods] */
        public void u(p86 p86Var) {
            super.u(p86Var);
            ki8.h(p86Var.h, "prompt");
            ki8.h(p86Var.i, "lambda ARN");
            ki8.i(p86Var.j, "prompt argument");
        }
    }

    public static /* synthetic */ String k(p86 p86Var, String str) {
        p86Var.h = str;
        return str;
    }

    public static /* synthetic */ String m(p86 p86Var, String str) {
        p86Var.i = str;
        return str;
    }

    public static /* synthetic */ Map o(p86 p86Var, Map map) {
        p86Var.j = map;
        return map;
    }

    public static /* synthetic */ Map p(p86 p86Var, Map map) {
        p86Var.k = map;
        return map;
    }

    public static a q() {
        return new a();
    }

    @Override // defpackage.vr5, defpackage.yq5, defpackage.fw0, defpackage.ll0
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p86) || !super.equals(obj)) {
            return false;
        }
        p86 p86Var = (p86) obj;
        return Objects.equals(this.h, p86Var.h) && Objects.equals(this.i, p86Var.i) && Objects.equals(this.j, p86Var.j) && Objects.equals(this.k, p86Var.k);
    }

    @Override // defpackage.vr5, defpackage.yq5, defpackage.fw0, defpackage.ll0
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.h, this.i, this.j, this.k);
    }

    public Map<String, String> r() {
        return this.k;
    }

    public String s() {
        return this.i;
    }

    public String t() {
        return this.h;
    }

    public Map<String, Object> u() {
        return this.j;
    }
}
