package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dw2 {
    public final String a;

    public dw2(String str) {
        if (str != null) {
            this.a = str;
        } else {
            f6.n("name is null");
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof dw2)) {
            return false;
        }
        return this.a.equals(((dw2) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode() ^ 1000003;
    }

    public final String toString() {
        return dj7.n(new StringBuilder("Encoding{name=\""), this.a, "\"}");
    }
}
