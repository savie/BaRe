package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class it7 {
    public final int a;
    public final int b;

    public it7(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof it7)) {
            return false;
        }
        it7 it7Var = (it7) obj;
        return this.a == it7Var.a && this.b == it7Var.b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.b) + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        return dj7.j("IconColors(iconColorRes=", this.a, ", containerColorRes=", ")", this.b);
    }
}
