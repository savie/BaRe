package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class pw1 extends yr5 {
    private kj7 q;
    private zl2 r;
    private zl2 s;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a extends yr5.a<a, pw1> {
        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a f0(zl2 zl2Var) {
            this.a.add(new mw1(zl2Var, 0));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a g0(kj7 kj7Var) {
            ki8.i(kj7Var, "source object");
            this.a.add(new ow1(kj7Var, 0));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a h0(zl2 zl2Var) {
            this.a.add(new nw1(zl2Var, 0));
            return this;
        }

        @Override // yq5.a, fw0.a
        /* JADX INFO: renamed from: i0, reason: merged with bridge method [inline-methods] */
        public void u(pw1 pw1Var) {
            super.u(pw1Var);
            ki8.i(pw1Var.q, "source object");
            if (pw1Var.q.s() == null && pw1Var.q.m() == null) {
                return;
            }
            zl2 zl2Var = pw1Var.r;
            zl2 zl2Var2 = zl2.COPY;
            if (zl2Var == zl2Var2) {
                c6.f("COPY metadata directive is not applicable to source object with range");
            } else {
                if (pw1Var.s != zl2Var2) {
                    return;
                }
                c6.f("COPY tagging directive is not applicable to source object with range");
            }
        }
    }

    public pw1(vo1 vo1Var) {
        super(vo1Var);
        this.q = vo1Var.v().get(0);
    }

    public static a A() {
        return new a();
    }

    public static /* synthetic */ kj7 v(pw1 pw1Var, kj7 kj7Var) {
        pw1Var.q = kj7Var;
        return kj7Var;
    }

    public static /* synthetic */ zl2 x(pw1 pw1Var, zl2 zl2Var) {
        pw1Var.r = zl2Var;
        return zl2Var;
    }

    public static /* synthetic */ zl2 z(pw1 pw1Var, zl2 zl2Var) {
        pw1Var.s = zl2Var;
        return zl2Var;
    }

    public zl2 B() {
        return this.r;
    }

    public kj7 C() {
        return this.q;
    }

    public zl2 D() {
        return this.s;
    }

    @Override // defpackage.yr5, defpackage.yq5, defpackage.fw0, defpackage.ll0
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof pw1) || !super.equals(obj)) {
            return false;
        }
        pw1 pw1Var = (pw1) obj;
        return Objects.equals(this.q, pw1Var.q) && this.r == pw1Var.r && this.s == pw1Var.s;
    }

    @Override // defpackage.yr5, defpackage.yq5, defpackage.fw0, defpackage.ll0
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.q, this.r, this.s);
    }

    @Override // defpackage.yr5
    public void t(boolean z) {
        super.t(z);
        this.q.k(z);
    }

    public pw1(pw1 pw1Var, kj7 kj7Var) {
        super(pw1Var);
        this.r = pw1Var.r;
        this.s = pw1Var.s;
        this.q = kj7Var;
    }

    public pw1() {
    }
}
