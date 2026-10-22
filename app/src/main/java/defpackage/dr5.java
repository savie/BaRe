package defpackage;

import java.time.ZonedDateTime;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class dr5 extends rr5 {
    protected Long i;
    protected Long j;
    protected String k;
    protected String l;
    protected ZonedDateTime m;
    protected ZonedDateTime n;
    protected boolean o;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static abstract class a<B extends a<B, A>, A extends dr5> extends rr5.a<B, A> {
        private void d0(Long l) {
            if (l == null || l.longValue() > 0) {
                return;
            }
            c6.f("length should be greater than zero");
        }

        private void e0(Long l) {
            if (l == null || l.longValue() >= 0) {
                return;
            }
            c6.f("offset should be zero or greater");
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public B P(boolean z) {
            this.a.add(new cr5(0, z));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public B X(Long l) {
            d0(l);
            this.a.add(new br5(l, 0));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public B Y(String str) {
            ki8.j(str, "etag");
            this.a.add(new io2(str, 3));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public B Z(ZonedDateTime zonedDateTime) {
            this.a.add(new ko2(zonedDateTime, 1));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public B a0(String str) {
            ki8.j(str, "etag");
            this.a.add(new pw4(str, 2));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public B b0(Long l) {
            e0(l);
            this.a.add(new ow1(l, 1));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public B c0(ZonedDateTime zonedDateTime) {
            this.a.add(new go2(zonedDateTime, 1));
            return this;
        }
    }

    public dr5(dr5 dr5Var) {
        super(dr5Var);
        this.i = dr5Var.i;
        this.j = dr5Var.j;
        this.k = dr5Var.k;
        this.l = dr5Var.l;
        this.m = dr5Var.m;
        this.n = dr5Var.n;
        this.o = dr5Var.o;
    }

    @Override // defpackage.rr5, defpackage.vr5, defpackage.yq5, defpackage.fw0, defpackage.ll0
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof dr5) || !super.equals(obj)) {
            return false;
        }
        dr5 dr5Var = (dr5) obj;
        return Objects.equals(this.i, dr5Var.i) && Objects.equals(this.j, dr5Var.j) && Objects.equals(this.k, dr5Var.k) && Objects.equals(this.l, dr5Var.l) && Objects.equals(this.m, dr5Var.m) && Objects.equals(this.n, dr5Var.n) && Boolean.valueOf(this.o).equals(Boolean.valueOf(dr5Var.o));
    }

    @Override // defpackage.rr5, defpackage.vr5, defpackage.yq5, defpackage.fw0, defpackage.ll0
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.i, this.j, this.k, this.l, this.m, this.n, Boolean.valueOf(this.o));
    }

    public boolean l() {
        return this.o;
    }

    public Long m() {
        return this.j;
    }

    public v64.c n() {
        String strB = ki8.b("/" + this.d + "/" + this.f);
        if (this.g != null) {
            StringBuilder sbN = fz5.n(strB, "?versionId=");
            sbN.append(ki8.a(this.g));
            strB = sbN.toString();
        }
        v64.c cVar = new v64.c("x-amz-copy-source", strB);
        g87.a aVar = this.h;
        if (aVar != null) {
            cVar.k(aVar.b);
        }
        String str = this.k;
        if (str != null) {
            cVar.i("x-amz-copy-source-if-match", str);
        }
        String str2 = this.l;
        if (str2 != null) {
            cVar.i("x-amz-copy-source-if-none-match", str2);
        }
        ZonedDateTime zonedDateTime = this.m;
        if (zonedDateTime != null) {
            cVar.i("x-amz-copy-source-if-modified-since", zonedDateTime.format(h38.e));
        }
        ZonedDateTime zonedDateTime2 = this.n;
        if (zonedDateTime2 != null) {
            cVar.i("x-amz-copy-source-if-unmodified-since", zonedDateTime2.format(h38.e));
        }
        return cVar;
    }

    public v64.c o() {
        String string;
        Long l = this.i;
        Long l2 = this.j;
        if (l2 != null && l == null) {
            l = 0L;
        }
        if (l != null) {
            string = "bytes=" + l + "-";
            if (l2 != null) {
                StringBuilder sbS = dj7.s(string);
                sbS.append((l2.longValue() + l.longValue()) - 1);
                string = sbS.toString();
            }
        } else {
            string = null;
        }
        g87.a aVar = this.h;
        v64.c cVar = new v64.c(aVar != null ? aVar.a : null);
        if (string != null) {
            cVar.i("Range", string);
        }
        String str = this.k;
        if (str != null) {
            cVar.i("if-match", str);
        }
        String str2 = this.l;
        if (str2 != null) {
            cVar.i("if-none-match", str2);
        }
        ZonedDateTime zonedDateTime = this.m;
        if (zonedDateTime != null) {
            cVar.i("if-modified-since", zonedDateTime.format(h38.e));
        }
        ZonedDateTime zonedDateTime2 = this.n;
        if (zonedDateTime2 != null) {
            cVar.i("if-unmodified-since", zonedDateTime2.format(h38.e));
        }
        if (this.o) {
            cVar.i("x-amz-checksum-mode", "ENABLED");
        }
        return cVar;
    }

    public String p() {
        return this.k;
    }

    public ZonedDateTime q() {
        return this.m;
    }

    public String r() {
        return this.l;
    }

    public Long s() {
        return this.i;
    }

    public ZonedDateTime t() {
        return this.n;
    }

    public dr5(kj7 kj7Var) {
        super(kj7Var);
        this.k = kj7Var.p();
        this.l = kj7Var.r();
        this.m = kj7Var.q();
        this.n = kj7Var.t();
    }

    public dr5(d10 d10Var) {
        super(d10Var);
        this.o = true;
    }

    public dr5(mo2 mo2Var) {
        super(mo2Var);
        this.k = mo2Var.p();
        this.l = mo2Var.r();
        this.m = mo2Var.q();
        this.n = mo2Var.t();
    }

    public dr5() {
    }

    public dr5(dr5 dr5Var, String str) {
        this(dr5Var);
        this.k = str;
    }
}
