package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class xf8 extends yq5 {
    private String g;
    private int h;
    private v64.c i;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a extends yq5.a<a, xf8> {
        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a F(v64.c cVar) {
            ki8.i(cVar, "headers");
            this.a.add(new xr5(cVar, 1));
            return this;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a J(int i) {
            if (i > 0) {
                this.a.add(new tw3(i, 1));
                return this;
            }
            c6.f("valid part number must be provided");
            return null;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a K(String str) {
            ki8.h(str, "upload ID");
            this.a.add(new io2(str, 4));
            return this;
        }

        @Override // yq5.a, fw0.a
        /* JADX INFO: renamed from: L, reason: merged with bridge method [inline-methods] */
        public void u(xf8 xf8Var) {
            super.u(xf8Var);
            ki8.h(xf8Var.g, "upload ID");
            if (xf8Var.h > 0) {
                ki8.i(xf8Var.i, "headers");
            } else {
                c6.f("valid part number must be provided");
            }
        }
    }

    public xf8(vo1 vo1Var, String str, int i, v64.c cVar) {
        super(vo1Var);
        this.g = str;
        this.h = i;
        this.i = cVar;
    }

    public static /* synthetic */ String j(xf8 xf8Var, String str) {
        xf8Var.g = str;
        return str;
    }

    public static /* synthetic */ int l(xf8 xf8Var, int i) {
        xf8Var.h = i;
        return i;
    }

    public static /* synthetic */ v64.c n(xf8 xf8Var, v64.c cVar) {
        xf8Var.i = cVar;
        return cVar;
    }

    public static a o() {
        return new a();
    }

    @Override // defpackage.yq5, defpackage.fw0, defpackage.ll0
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof xf8) || !super.equals(obj)) {
            return false;
        }
        xf8 xf8Var = (xf8) obj;
        return Objects.equals(this.g, xf8Var.g) && Integer.valueOf(this.h).equals(Integer.valueOf(xf8Var.h)) && Objects.equals(this.i, xf8Var.i);
    }

    @Override // defpackage.yq5, defpackage.fw0, defpackage.ll0
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.g, Integer.valueOf(this.h), this.i);
    }

    public v64.c p() {
        return this.i;
    }

    public int q() {
        return this.h;
    }

    public String r() {
        return this.g;
    }

    private xf8() {
    }
}
