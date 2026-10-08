package defpackage;

import java.time.ZonedDateTime;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class mo2 extends rr5 {
    private String i;
    private boolean j;
    protected String k;
    protected String l;
    protected ZonedDateTime m;
    protected ZonedDateTime n;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a extends rr5.a<a, mo2> {
        private void a0(String str) {
            ki8.h(str, "filename");
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a O(String str) {
            a0(str);
            this.a.add(new ho2(str, 0));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a V(String str) {
            ki8.j(str, "etag");
            this.a.add(new lo2(str, 0));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a W(ZonedDateTime zonedDateTime) {
            this.a.add(new go2(zonedDateTime, 0));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a X(String str) {
            ki8.j(str, "etag");
            this.a.add(new io2(str, 0));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a Y(boolean z) {
            this.a.add(new jo2(0, z));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a Z(ZonedDateTime zonedDateTime) {
            this.a.add(new ko2(zonedDateTime, 0));
            return this;
        }
    }

    public static /* synthetic */ boolean l(mo2 mo2Var, boolean z) {
        mo2Var.j = z;
        return z;
    }

    public static /* synthetic */ String m(mo2 mo2Var, String str) {
        mo2Var.i = str;
        return str;
    }

    public static a n() {
        return new a();
    }

    @Override // defpackage.rr5, defpackage.vr5, defpackage.yq5, defpackage.fw0, defpackage.ll0
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof mo2) || !super.equals(obj)) {
            return false;
        }
        mo2 mo2Var = (mo2) obj;
        return Objects.equals(this.i, mo2Var.i) && this.j == mo2Var.j && Objects.equals(this.k, mo2Var.k) && Objects.equals(this.l, mo2Var.l) && Objects.equals(this.m, mo2Var.m) && Objects.equals(this.n, mo2Var.n);
    }

    @Override // defpackage.rr5, defpackage.vr5, defpackage.yq5, defpackage.fw0, defpackage.ll0
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.i, Boolean.valueOf(this.j), this.k, this.l, this.m, this.n);
    }

    public String o() {
        return this.i;
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

    public boolean s() {
        return this.j;
    }

    public ZonedDateTime t() {
        return this.n;
    }
}
