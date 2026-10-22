package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rt7 {
    public final float a;
    public final float b;

    public rt7(float f, float f2) {
        this.a = f;
        this.b = f2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof rt7)) {
            return false;
        }
        rt7 rt7Var = (rt7) obj;
        return Float.compare(this.a, rt7Var.a) == 0 && Float.compare(this.b, rt7Var.b) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.b) + (Float.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "PointF(x=" + this.a + ", y=" + this.b + ")";
    }
}
