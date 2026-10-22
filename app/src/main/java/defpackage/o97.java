package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class o97 extends fw0 {
    private yy0 f;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a extends fw0.a<a, o97> {
        private void B(yy0 yy0Var) {
            ki8.i(yy0Var, "CORS configuration");
        }

        @Override // fw0.a
        /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
        public void u(o97 o97Var) {
            super.u(o97Var);
            B(o97Var.f);
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a y(yy0 yy0Var) {
            B(yy0Var);
            this.a.add(new b10(yy0Var, 3));
            return this;
        }
    }

    public static /* synthetic */ yy0 i(o97 o97Var, yy0 yy0Var) {
        o97Var.f = yy0Var;
        return yy0Var;
    }

    public static a j() {
        return new a();
    }

    @Override // defpackage.fw0, defpackage.ll0
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof o97) && super.equals(obj)) {
            return Objects.equals(this.f, ((o97) obj).f);
        }
        return false;
    }

    @Override // defpackage.fw0, defpackage.ll0
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.f);
    }

    public yy0 k() {
        return this.f;
    }
}
