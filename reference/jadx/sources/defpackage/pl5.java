package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pl5 {
    public final int a;
    public final float b;
    public final float c;
    public final float d;
    public final long e;

    public pl5(float f, float f2, float f3, int i, long j) {
        this.a = i;
        this.b = f;
        this.c = f2;
        this.d = f3;
        this.e = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && pl5.class == obj.getClass()) {
            pl5 pl5Var = (pl5) obj;
            return this.c == pl5Var.c && this.d == pl5Var.d && this.b == pl5Var.b && this.a == pl5Var.a && this.e == pl5Var.e;
        }
        return false;
    }

    public final int hashCode() {
        return Long.hashCode(this.e) + eq3.d(this.a, (Float.hashCode(this.b) + ((Float.hashCode(this.d) + (Float.hashCode(this.c) * 31)) * 31)) * 31, 31);
    }

    public final String toString() {
        return "NavigationEvent(touchX=" + this.c + ", touchY=" + this.d + ", progress=" + this.b + ", swipeEdge=" + this.a + ", frameTimeMillis=" + this.e + ')';
    }
}
