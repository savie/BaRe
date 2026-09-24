package defpackage;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class fc6 extends fw0 {
    private static final qr5 k;
    private InputStream f;
    private long g;
    private List<gc6> h = null;
    private a61 i;
    private g87 j;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a extends fw0.a<a, fc6> {
        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a C(a61 a61Var) {
            this.a.add(new v02(a61Var, 5));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a D(List<gc6> list) {
            this.a.add(new a10(list, 7));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a J(g87 g87Var) {
            this.a.add(new sh2(g87Var, 5));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a K(InputStream inputStream, long j) {
            ki8.i(inputStream, "stream");
            if (j < 0) {
                c6.f(u48.l(j, "invalid stream size "));
                return null;
            }
            if (j > yr5.o) {
                c6.f(fz5.m("size ", " is not supported; maximum allowed 5GiB", j));
                return null;
            }
            this.a.add(new y00(inputStream, 6));
            this.a.add(new ec6(0, j));
            return this;
        }

        @Override // fw0.a
        /* JADX INFO: renamed from: L, reason: merged with bridge method [inline-methods] */
        public void u(fc6 fc6Var) {
            super.u(fc6Var);
            ki8.i(fc6Var.f, "stream");
            ki8.i(fc6Var.h, "fan-out entries");
        }
    }

    static {
        wk4 wk4Var = new wk4();
        qi2 qi2Var = qi2.FAIL_ON_UNKNOWN_PROPERTIES;
        pi2 pi2Var = wk4Var.e;
        int i = pi2Var.r;
        int i2 = (~qi2Var.b) & i;
        if (i2 != i) {
            pi2Var = new pi2(pi2Var, pi2Var.a, i2);
        }
        wk4Var.e = pi2Var;
        wk4Var.b(u65.ACCEPT_CASE_INSENSITIVE_PROPERTIES, true);
        k = wk4Var;
    }

    public static /* synthetic */ List k(fc6 fc6Var, List list) {
        fc6Var.h = list;
        return list;
    }

    public static /* synthetic */ a61 m(fc6 fc6Var, a61 a61Var) {
        fc6Var.i = a61Var;
        return a61Var;
    }

    public static a o() {
        return new a();
    }

    @Override // defpackage.fw0, defpackage.ll0
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fc6) || !super.equals(obj)) {
            return false;
        }
        fc6 fc6Var = (fc6) obj;
        return Objects.equals(this.f, fc6Var.f) && this.g == fc6Var.g && Objects.equals(this.h, fc6Var.h) && Objects.equals(this.i, fc6Var.i) && Objects.equals(this.j, fc6Var.j);
    }

    @Override // defpackage.fw0, defpackage.ll0
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.f, Long.valueOf(this.g), this.h, this.i, this.j);
    }

    public a61 p() {
        return this.i;
    }

    public List<gc6> q() {
        return this.h;
    }

    public String r() throws ll4 {
        if (this.h == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (gc6 gc6Var : this.h) {
            qr5 qr5Var = k;
            wj4 wj4Var = qr5Var.a;
            try {
                q67 q67Var = new q67((!eq3.a(4, wj4Var.a) ? vl4.a : wj4Var.c).u());
                try {
                    qr5Var.a(qr5Var.c(q67Var), gc6Var);
                    sb.append(q67Var.a());
                } catch (Throwable th) {
                    throw th;
                }
            } catch (ll4 e) {
                throw e;
            } catch (IOException e2) {
                throw new yk4(null, "Unexpected IOException (of type " + e2.getClass().getName() + "): " + u81.g(e2));
            }
        }
        return sb.toString();
    }

    public long s() {
        return this.g;
    }

    public g87 t() {
        return this.j;
    }

    public InputStream u() {
        return this.f;
    }

    public void v(boolean z) {
        a(this.j, z);
    }
}
