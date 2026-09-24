package defpackage;

import java.io.IOException;
import java.util.Collections;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.stream.Collectors;
import okhttp3.MediaType;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class yr5 extends yq5 {
    public static final long m = 5497558138880L;
    public static final int n = 5242880;
    public static final long o = 5368709120L;
    public static final int p = 10000;
    protected v64.c g;
    protected v64.c h;
    protected g87 i;
    protected jx7 j;
    protected jn6 k;
    protected boolean l;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static abstract class a<B extends a<B, A>, A extends yr5> extends yq5.a<B, A> {
        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public B J(v64.c cVar) {
            this.a.add(new xr5(new v64.c(cVar), 0));
            return this;
        }

        public B K(Map<String, String> map) {
            return (B) J(new v64.c(map));
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public B S(boolean z) {
            this.a.add(new cr5(1, z));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public B T(jn6 jn6Var) {
            this.a.add(new y00(jn6Var, 4));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public B U(g87 g87Var) {
            this.a.add(new v02(g87Var, 3));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public B V(jx7 jx7Var) {
            this.a.add(new en1(jx7Var == null ? new jx7() : jx7.c(jx7Var.a()), 2));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public B W(Map<String, String> map) {
            this.a.add(new sh2(map == null ? new jx7() : jx7.c(map), 3));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public B X(v64.c cVar) {
            v64.c cVar2 = new v64.c();
            if (cVar != null) {
                for (String str : Collections.unmodifiableSet(cVar.a.keySet())) {
                    String strConcat = (str.toLowerCase(Locale.US).startsWith("x-amz-meta-") ? "" : "x-amz-meta-").concat(str);
                    Set setD = cVar.d(str);
                    ki8.i(setD, "value");
                    Iterator it = setD.iterator();
                    while (it.hasNext()) {
                        cVar2.i(strConcat, (String) it.next());
                    }
                }
            }
            this.a.add(new uo1(cVar2, 2));
            return this;
        }

        public B Y(Map<String, String> map) {
            return (B) X(new v64.c(map));
        }
    }

    public yr5(yr5 yr5Var) {
        super(yr5Var);
        this.j = new jx7();
        this.g = yr5Var.g;
        this.h = yr5Var.h;
        this.i = yr5Var.i;
        this.j = yr5Var.j;
        this.k = yr5Var.k;
        this.l = yr5Var.l;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String l(Map.Entry entry) {
        return ki8.a((String) entry.getKey()) + "=" + ki8.a((String) entry.getValue());
    }

    @Override // defpackage.yq5, defpackage.fw0, defpackage.ll0
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof yr5) || !super.equals(obj)) {
            return false;
        }
        yr5 yr5Var = (yr5) obj;
        return this.l == yr5Var.l && Objects.equals(this.g, yr5Var.g) && Objects.equals(this.h, yr5Var.h) && Objects.equals(this.i, yr5Var.i) && Objects.equals(this.j, yr5Var.j) && Objects.equals(this.k, yr5Var.k);
    }

    @Override // defpackage.yq5, defpackage.fw0, defpackage.ll0
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.g, this.h, this.i, this.j, this.k, Boolean.valueOf(this.l));
    }

    public MediaType j() throws IOException {
        v64.c cVar = this.g;
        if (cVar == null || cVar.e("Content-Type") == null) {
            return null;
        }
        String strE = this.g.e("Content-Type");
        ai6 ai6Var = MediaType.d;
        return MediaType.Companion.b(strE);
    }

    public v64.c k() {
        return this.g;
    }

    public boolean m() {
        return this.l;
    }

    public v64.c n() {
        return o(null, null);
    }

    public v64.c o(MediaType mediaType, v64.c cVar) {
        v64.c cVar2 = this.g;
        v64.c cVar3 = this.h;
        g87 g87Var = this.i;
        v64.c cVarF = v64.c.f(cVar2, cVar3, g87Var == null ? null : g87Var.a(), cVar);
        String str = (String) this.j.a().entrySet().stream().map(new y64(1)).collect(Collectors.joining("&"));
        if (!str.isEmpty()) {
            cVarF.i("x-amz-tagging", str);
        }
        jn6 jn6Var = this.k;
        if (jn6Var != null && jn6Var.a() != null) {
            cVarF.i("x-amz-object-lock-mode", this.k.a().toString());
            cVarF.i("x-amz-object-lock-retain-until-date", this.k.b().format(h38.c));
        }
        if (this.l) {
            cVarF.i("x-amz-object-lock-legal-hold", "ON");
        }
        if (mediaType != null) {
            cVarF.i("Content-Type", mediaType.a);
        }
        return cVarF;
    }

    public jn6 p() {
        return this.k;
    }

    public g87 q() {
        return this.i;
    }

    public jx7 r() {
        return this.j;
    }

    public v64.c s() {
        return this.h;
    }

    public void t(boolean z) {
        a(this.i, z);
    }

    public yr5() {
        this.j = new jx7();
    }
}
