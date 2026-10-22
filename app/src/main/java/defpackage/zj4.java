package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zj4 {
    public static final zj4 c = new zj4(0, 0);
    public final int a;
    public final int b;

    public zj4(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != zj4.class) {
            return false;
        }
        zj4 zj4Var = (zj4) obj;
        return zj4Var.a == this.a && zj4Var.b == this.b;
    }

    public final int hashCode() {
        return this.b + this.a;
    }

    public final String toString() {
        return this == c ? "EMPTY" : String.format("(enabled=0x%x,disabled=0x%x)", Integer.valueOf(this.a), Integer.valueOf(this.b));
    }
}
