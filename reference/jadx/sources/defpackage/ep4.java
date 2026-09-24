package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ep4 implements Comparable {
    public static final ep4 b = new ep4();
    public final int a = 131840;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        ep4 ep4Var = (ep4) obj;
        ep4Var.getClass();
        return this.a - ep4Var.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        ep4 ep4Var = obj instanceof ep4 ? (ep4) obj : null;
        return ep4Var != null && this.a == ep4Var.a;
    }

    public final int hashCode() {
        return this.a;
    }

    public final String toString() {
        return "2.3.0";
    }
}
