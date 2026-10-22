package defpackage;

import java.security.SecureRandom;
import java.util.Objects;
import java.util.Random;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class bg8 extends yr5 {
    private static final Random t = new Random(new SecureRandom().nextLong());
    private Iterable<Object> q;
    private String r;
    private boolean s;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a extends yr5.a<a, bg8> {
        private void j0(Iterable<Object> iterable) {
            ki8.i(iterable, "objects");
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a c0(boolean z) {
            this.a.add(new rh2(1, z));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a g0(Iterable<Object> iterable) {
            j0(iterable);
            this.a.add(new uo1(iterable, 8));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a h0(String str) {
            if (str == null || !str.isEmpty()) {
                this.a.add(new lo2(str, 5));
                return this;
            }
            c6.f("staging filename must not be empty");
            return null;
        }

        @Override // yq5.a, fw0.a
        /* JADX INFO: renamed from: i0, reason: merged with bridge method [inline-methods] */
        public void u(bg8 bg8Var) {
            bg8Var.f = "snowball." + bg8.t.nextLong() + ".tar";
            j0(bg8Var.q);
            super.u(bg8Var);
        }
    }

    public static /* synthetic */ Iterable w(bg8 bg8Var, Iterable iterable) {
        bg8Var.q = iterable;
        return iterable;
    }

    public static /* synthetic */ boolean x(bg8 bg8Var, boolean z) {
        bg8Var.s = z;
        return z;
    }

    public static /* synthetic */ String y(bg8 bg8Var, String str) {
        bg8Var.r = str;
        return str;
    }

    public static a z() {
        return new a();
    }

    public boolean A() {
        return this.s;
    }

    public Iterable<Object> B() {
        return this.q;
    }

    public String C() {
        return this.r;
    }

    @Override // defpackage.yr5, defpackage.yq5, defpackage.fw0, defpackage.ll0
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof bg8) || !super.equals(obj)) {
            return false;
        }
        bg8 bg8Var = (bg8) obj;
        return Objects.equals(this.q, bg8Var.q) && Objects.equals(this.r, bg8Var.r) && this.s == bg8Var.s;
    }

    @Override // defpackage.yr5, defpackage.yq5, defpackage.fw0, defpackage.ll0
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.q, this.r, Boolean.valueOf(this.s));
    }
}
