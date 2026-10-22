package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class k76 {
    public final String a;
    public final int b;
    public final int c;
    public final boolean d;

    public k76(String str, int i, int i2, boolean z) {
        this.a = str;
        this.b = i;
        this.c = i2;
        this.d = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k76)) {
            return false;
        }
        k76 k76Var = (k76) obj;
        return this.a.equals(k76Var.a) && this.b == k76Var.b && this.c == k76Var.c && this.d == k76Var.d;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.d) + eq3.d(this.c, eq3.d(this.b, this.a.hashCode() * 31, 31), 31);
    }

    public final String toString() {
        return "ProcessDetails(processName=" + this.a + ", pid=" + this.b + ", importance=" + this.c + ", isDefaultProcess=" + this.d + ')';
    }
}
