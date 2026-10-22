package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class s41 {
    public static final r41 b = new r41();
    public final Object a;

    public final boolean equals(Object obj) {
        if (obj instanceof s41) {
            return this.a.equals(((s41) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        Object obj = this.a;
        if (obj instanceof q41) {
            return ((q41) obj).toString();
        }
        return "Value(" + obj + ')';
    }
}
