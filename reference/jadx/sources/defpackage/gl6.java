package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class gl6 {
    public final int a;
    public final int b;

    static {
        new gl6(0, 0);
    }

    public gl6(int i, int i2) {
        this.a = i;
        this.b = i2;
        if (i < 0) {
            c6.f("Width must be a positive number.");
            throw null;
        }
        if (i2 >= 0) {
            return;
        }
        c6.f("Height must be a positive number.");
        throw null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof gl6)) {
            return false;
        }
        gl6 gl6Var = (gl6) obj;
        return this.a == gl6Var.a && this.b == gl6Var.b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.b) + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        return dj7.j("Resolution(", this.a, "x", ")", this.b);
    }
}
