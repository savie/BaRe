package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vb0 extends pn1 {
    public final od0 a;

    public vb0(od0 od0Var) {
        on1 on1Var = on1.a;
        this.a = od0Var;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof pn1)) {
            return false;
        }
        if (!this.a.equals(((vb0) ((pn1) obj)).a)) {
            return false;
        }
        Object obj2 = on1.a;
        return obj2.equals(obj2);
    }

    public final int hashCode() {
        return ((this.a.hashCode() ^ 1000003) * 1000003) ^ on1.a.hashCode();
    }

    public final String toString() {
        return "ComplianceData{privacyContext=" + this.a + ", productIdOrigin=" + on1.a + "}";
    }
}
