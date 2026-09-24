package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wr1 {
    public final String a;
    public final int b;

    public wr1(String str, int i) {
        this.a = str;
        this.b = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || wr1.class != obj.getClass()) {
            return false;
        }
        wr1 wr1Var = (wr1) obj;
        if (this.b != wr1Var.b) {
            return false;
        }
        return this.a.equals(wr1Var.a);
    }

    public final int hashCode() {
        return (this.a.hashCode() * 31) + this.b;
    }
}
