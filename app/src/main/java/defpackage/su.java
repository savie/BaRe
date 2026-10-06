package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class su {
    public final String a;
    public final uu b;

    public su(String str, uu uuVar) {
        str.getClass();
        uuVar.getClass();
        this.a = str;
        this.b = uuVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof su)) {
            return false;
        }
        su suVar = (su) obj;
        return pe4.d(this.a, suVar.a) && this.b == suVar.b;
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "PermissionState(permission=" + this.a + ", state=" + this.b + ")";
    }
}
