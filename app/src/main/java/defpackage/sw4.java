package defpackage;

import java.util.Objects;
import java.util.function.Consumer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class sw4 extends ll0 {
    private String d;
    private int e = yr5.p;
    private String f;
    private String g;

    public static /* synthetic */ String f(sw4 sw4Var, String str) {
        sw4Var.g = str;
        return str;
    }

    public static /* synthetic */ String g(sw4 sw4Var, String str) {
        sw4Var.f = str;
        return str;
    }

    public static /* synthetic */ int h(sw4 sw4Var, int i) {
        sw4Var.e = i;
        return i;
    }

    public static /* synthetic */ String i(sw4 sw4Var, String str) {
        sw4Var.d = str;
        return str;
    }

    public static a k() {
        return new a();
    }

    @Override // defpackage.ll0
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof sw4) || !super.equals(obj)) {
            return false;
        }
        sw4 sw4Var = (sw4) obj;
        return Objects.equals(this.d, sw4Var.d) && this.e == sw4Var.e && Objects.equals(this.f, sw4Var.f) && Objects.equals(this.g, sw4Var.g);
    }

    @Override // defpackage.ll0
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.d, Integer.valueOf(this.e), this.f, this.g);
    }

    public String j() {
        return this.d;
    }

    public String l() {
        return this.g;
    }

    public int m() {
        return this.e;
    }

    public String n() {
        return this.f;
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a extends ll0.a<a, sw4> {
        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a r(String str) {
            ki8.j(str, "bucket region");
            this.a.add(new ho2(str, 1));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a s(String str) {
            ki8.j(str, "continuation token");
            this.a.add(new pw4(str, 0));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a x(final int i) {
            if (i < 1 || i > 10000) {
                c6.f("max buckets must be between 1 and 10000");
                return null;
            }
            this.a.add((Consumer<A>) new Consumer() { // from class: rw4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    sw4.h((sw4) obj, i);
                }
            });
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a y(String str) {
            ki8.j(str, "prefix");
            this.a.add(new qw4(str, 0));
            return this;
        }

        @Override // ll0.a
        /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
        public void u(sw4 sw4Var) {
        }
    }
}
