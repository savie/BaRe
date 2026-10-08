package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class us4 {
    public final String a;

    public us4(String str) {
        this.a = str;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof us4) {
            return this.a.equals(((us4) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return dj7.n(new StringBuilder("StringHeaderFactory{value='"), this.a, "'}");
    }
}
