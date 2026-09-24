package defpackage;

import com.nimbusds.jose.crypto.PasswordBasedEncrypter;
import java.util.Objects;
import java.util.function.Consumer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class wx4 extends fw0 {
    private String h;
    private String k;
    private boolean l;
    private String m;
    private boolean n;
    private boolean o;
    private boolean p;
    private boolean q;
    private String f = "";
    private boolean g = true;
    private int i = PasswordBasedEncrypter.MIN_RECOMMENDED_ITERATION_COUNT;
    private String j = "";

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a extends fw0.a<a, wx4> {
        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void S(String str, wx4 wx4Var) {
            if (str == null) {
                str = "";
            }
            wx4Var.f = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void Z(String str, wx4 wx4Var) {
            if (str == null) {
                str = "";
            }
            wx4Var.j = str;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a L(String str) {
            ki8.j(str, "continuation token");
            this.a.add(new ho2(str, 2));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a M(String str) {
            this.a.add(new v2(str, 2));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a N(final boolean z) {
            this.a.add((Consumer<A>) new Consumer() { // from class: ux4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    wx4.p((wx4) obj, z);
                }
            });
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a O(final boolean z) {
            this.a.add((Consumer<A>) new Consumer() { // from class: tx4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    wx4.o((wx4) obj, z);
                }
            });
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a P(boolean z) {
            this.a.add(new jo2(1, z));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a Q(String str) {
            ki8.j(str, "key marker");
            this.a.add(new dw0(str, 3));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a f0(String str) {
            this.a.add(new qw4(str, 2));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a g0(final int i) {
            if (i < 1 || i > 1000) {
                c6.f("max keys must be between 1 and 1000");
                return null;
            }
            this.a.add((Consumer<A>) new Consumer() { // from class: rx4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    wx4.s((wx4) obj, i);
                }
            });
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a h0(String str) {
            this.a.add(new lo2(str, 2));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a i0(boolean z) {
            this.a.add(new sx4(0, z));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a j0(String str) {
            this.a.add(new vx4(str, 0));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a k0(boolean z) {
            this.a.add(new qh2(1, z));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a l0(boolean z) {
            this.a.add(new w02(1, z));
            return this;
        }

        @Override // fw0.a
        /* JADX INFO: renamed from: m0, reason: merged with bridge method [inline-methods] */
        public void u(wx4 wx4Var) {
            super.u(wx4Var);
            if ((wx4Var.G() || wx4Var.z()) && (wx4Var.v() != null || wx4Var.x() || wx4Var.y())) {
                c6.f("continuation token/fetch owner/include metadata are supported only for list objects version 2");
            } else {
                if (wx4Var.m == null || !wx4Var.G()) {
                    return;
                }
                c6.f("version ID marker is not supported for list objects version 1");
            }
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a n0(String str) {
            ki8.j(str, "version ID marker");
            this.a.add(new z00(str, 2));
            return this;
        }
    }

    public static /* synthetic */ boolean j(wx4 wx4Var, boolean z) {
        wx4Var.g = z;
        return z;
    }

    public static /* synthetic */ boolean m(wx4 wx4Var, boolean z) {
        wx4Var.p = z;
        return z;
    }

    public static /* synthetic */ boolean n(wx4 wx4Var, boolean z) {
        wx4Var.o = z;
        return z;
    }

    public static /* synthetic */ boolean o(wx4 wx4Var, boolean z) {
        wx4Var.n = z;
        return z;
    }

    public static /* synthetic */ boolean p(wx4 wx4Var, boolean z) {
        wx4Var.l = z;
        return z;
    }

    public static /* synthetic */ String q(wx4 wx4Var, String str) {
        wx4Var.k = str;
        return str;
    }

    public static /* synthetic */ int s(wx4 wx4Var, int i) {
        wx4Var.i = i;
        return i;
    }

    public static /* synthetic */ String t(wx4 wx4Var, String str) {
        wx4Var.h = str;
        return str;
    }

    public static a u() {
        return new a();
    }

    public String A() {
        return this.h;
    }

    public String B() {
        return this.h;
    }

    public int C() {
        return this.i;
    }

    public String D() {
        return this.j;
    }

    public boolean E() {
        return this.o;
    }

    public String F() {
        return this.h;
    }

    public boolean G() {
        return this.p;
    }

    public boolean H() {
        return this.g;
    }

    public String I() {
        return this.m;
    }

    @Override // defpackage.fw0, defpackage.ll0
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof wx4) || !super.equals(obj)) {
            return false;
        }
        wx4 wx4Var = (wx4) obj;
        return this.g == wx4Var.g && this.i == wx4Var.i && this.l == wx4Var.l && this.n == wx4Var.n && this.o == wx4Var.o && this.p == wx4Var.p && this.q == wx4Var.q && Objects.equals(this.f, wx4Var.f) && Objects.equals(this.h, wx4Var.h) && Objects.equals(this.j, wx4Var.j) && Objects.equals(this.k, wx4Var.k) && Objects.equals(this.m, wx4Var.m);
    }

    @Override // defpackage.fw0, defpackage.ll0
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.f, Boolean.valueOf(this.g), this.h, Integer.valueOf(this.i), this.j, this.k, Boolean.valueOf(this.l), this.m, Boolean.valueOf(this.n), Boolean.valueOf(this.o), Boolean.valueOf(this.p), Boolean.valueOf(this.q));
    }

    public String v() {
        return this.k;
    }

    public String w() {
        if (this.o) {
            return "";
        }
        return this.f.isEmpty() ? "/" : this.f;
    }

    public boolean x() {
        return this.l;
    }

    public boolean y() {
        return this.n;
    }

    public boolean z() {
        return this.q;
    }
}
