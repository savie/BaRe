package defpackage;

import java.util.Objects;
import java.util.function.Consumer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class wf8 extends yb6 {
    private String l;
    private int m;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a extends yb6.a<a, wf8> {
        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a W(final int i) {
            if (i > 0) {
                this.a.add((Consumer<A>) new Consumer() { // from class: vf8
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        wf8.q((wf8) obj, i);
                    }
                });
                return this;
            }
            c6.f("valid part number must be provided");
            return null;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a X(String str) {
            ki8.h(str, "upload ID");
            this.a.add(new qw4(str, 5));
            return this;
        }

        @Override // yb6.a, yq5.a, fw0.a
        /* JADX INFO: renamed from: Y, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public void u(wf8 wf8Var) {
            super.u(wf8Var);
            ki8.h(wf8Var.l, "upload ID");
            if (wf8Var.m > 0) {
                return;
            }
            c6.f("valid part number must be provided");
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class b {
        final wf8 a;

        public b(wf8 wf8Var) {
            this.a = wf8Var;
        }

        public wf8 a() {
            return this.a;
        }
    }

    public wf8(dc6 dc6Var, String str, int i, ox0 ox0Var, v64.c cVar) {
        super(dc6Var, ox0Var, cVar);
        this.l = str;
        this.m = i;
        this.h = ox0Var;
        if (dc6Var.q() == null || !(dc6Var.q() instanceof g87.a)) {
            return;
        }
        this.k.k(dc6Var.q().a());
    }

    public static /* synthetic */ String o(wf8 wf8Var, String str) {
        wf8Var.l = str;
        return str;
    }

    public static /* synthetic */ int q(wf8 wf8Var, int i) {
        wf8Var.m = i;
        return i;
    }

    public static a r() {
        return new a();
    }

    @Override // defpackage.yb6, defpackage.yq5, defpackage.fw0, defpackage.ll0
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof wf8) || !super.equals(obj)) {
            return false;
        }
        wf8 wf8Var = (wf8) obj;
        return Objects.equals(this.l, wf8Var.l) && this.m == wf8Var.m;
    }

    @Override // defpackage.yb6, defpackage.yq5, defpackage.fw0, defpackage.ll0
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.l, Integer.valueOf(this.m));
    }

    public int s() {
        return this.m;
    }

    public String t() {
        return this.l;
    }

    public wf8() {
    }
}
