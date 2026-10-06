package defpackage;

import org.chromium.support_lib_boundary.WebViewProviderFactoryBoundaryInterface;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class fi1 implements jl0 {
    public final wa1 a;

    public fi1(wa1 wa1Var) {
        wa1Var.getClass();
        this.a = wa1Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof fi1) && pe4.d(this.a, ((fi1) obj).a);
    }

    @Override // defpackage.jl0
    public final jl0 getCopy() {
        wa1 wa1Var = this.a;
        wa1Var.getClass();
        return new fi1(wa1Var);
    }

    @Override // defpackage.jl0
    public final String getItemId() {
        wa1 wa1Var = this.a;
        wa1Var.getClass();
        return dj7.k(wa1Var.d.name(), WebViewProviderFactoryBoundaryInterface.MULTI_COOKIE_VALUE_SEPARATOR, wa1Var.b);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "CloudOrphanRow(file=" + this.a + ")";
    }
}
