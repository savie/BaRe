package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qs9 extends bd9 {
    public final ot9 a;

    public qs9(ot9 ot9Var) {
        this.a = ot9Var;
    }

    @Override // defpackage.bd9
    public final boolean a() {
        return ((mz9) this.a.b).z() != r0a.RAW;
    }

    public final boolean equals(Object obj) {
        mz9 mz9Var = (mz9) this.a.b;
        if (!(obj instanceof qs9)) {
            return false;
        }
        ot9 ot9Var = ((qs9) obj).a;
        r0a r0aVarZ = mz9Var.z();
        mz9 mz9Var2 = (mz9) ot9Var.b;
        return r0aVarZ.equals(mz9Var2.z()) && mz9Var.B().equals(mz9Var2.B()) && mz9Var.A().equals(mz9Var2.A());
    }

    public final int hashCode() {
        ot9 ot9Var = this.a;
        return Objects.hash((mz9) ot9Var.b, (d2a) ot9Var.a);
    }

    public final String toString() {
        String str;
        mz9 mz9Var = (mz9) this.a.b;
        String strB = mz9Var.B();
        int i = ss9.a[mz9Var.z().ordinal()];
        if (i == 1) {
            str = "TINK";
        } else if (i == 2) {
            str = "LEGACY";
        } else if (i != 3) {
            str = i != 4 ? "UNKNOWN" : "CRUNCHY";
        } else {
            str = "RAW";
        }
        return eq3.l("(typeUrl=", strB, ", outputPrefixType=", str, ")");
    }
}
