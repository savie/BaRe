package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ht7 {
    public final float a;
    public final float b;
    public final float c;
    public final float d;

    public ht7(float f, float f2, float f3, float f4) {
        this.a = f;
        this.b = f2;
        this.c = f3;
        this.d = f4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ht7)) {
            return false;
        }
        ht7 ht7Var = (ht7) obj;
        return Float.compare(this.a, ht7Var.a) == 0 && Float.compare(this.b, ht7Var.b) == 0 && Float.compare(this.c, ht7Var.c) == 0 && Float.compare(this.d, ht7Var.d) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.d) + ((Float.hashCode(this.c) + ((Float.hashCode(this.b) + (Float.hashCode(this.a) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "CornerSizes(topLeft=" + this.a + ", topRight=" + this.b + ", bottomRight=" + this.c + ", bottomLeft=" + this.d + ")";
    }
}
