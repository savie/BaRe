package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class py6 extends cy0 {
    public final int j;

    public py6(int i) {
        this.j = i;
        if (1 > i || i >= 23) {
            f6.g(fz5.j(i, "Zstd level must be in 1..22: "));
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof py6) && this.j == ((py6) obj).j;
    }

    public final int hashCode() {
        return Integer.hashCode(this.j);
    }

    public final String toString() {
        return xs1.h(this.j, "Zstd(level=", ")");
    }
}
