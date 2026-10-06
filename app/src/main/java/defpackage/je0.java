package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class je0 extends vm7 {
    public final ke0 a;
    public final me0 b;
    public final le0 c;

    public je0(ke0 ke0Var, me0 me0Var, le0 le0Var) {
        this.a = ke0Var;
        this.b = me0Var;
        this.c = le0Var;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof vm7)) {
            return false;
        }
        je0 je0Var = (je0) ((vm7) obj);
        return this.a.equals(je0Var.a) && this.b.equals(je0Var.b) && this.c.equals(je0Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() ^ ((((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003);
    }

    public final String toString() {
        return "StaticSessionData{appData=" + this.a + ", osData=" + this.b + ", deviceData=" + this.c + "}";
    }
}
