package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hx {
    public final String a;
    public final float b;
    public final float c;
    public final float d;
    public final float e;
    public final float f;
    public final float g;
    public final int h;
    public final int i;
    public final int j;

    public hx(String str, float f, float f2, float f3, float f4, float f5, float f6, int i, int i2, int i3) {
        this.a = str;
        this.b = f;
        this.c = f2;
        this.d = f3;
        this.e = f4;
        this.f = f5;
        this.g = f6;
        this.h = i;
        this.i = i2;
        this.j = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof hx)) {
            return false;
        }
        hx hxVar = (hx) obj;
        return this.a.equals(hxVar.a) && Float.compare(this.b, hxVar.b) == 0 && Float.compare(this.c, hxVar.c) == 0 && Float.compare(this.d, hxVar.d) == 0 && Float.compare(this.e, hxVar.e) == 0 && Float.compare(this.f, hxVar.f) == 0 && Float.compare(this.g, hxVar.g) == 0 && this.h == hxVar.h && this.i == hxVar.i && this.j == hxVar.j;
    }

    public final int hashCode() {
        return Integer.hashCode(this.j) + eq3.d(this.i, eq3.d(this.h, (Float.hashCode(this.g) + ((Float.hashCode(this.f) + ((Float.hashCode(this.e) + ((Float.hashCode(this.d) + ((Float.hashCode(this.c) + ((Float.hashCode(this.b) + (this.a.hashCode() * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31, 31), 31);
    }

    public final String toString() {
        return "Chip(text=" + this.a + ", left=" + this.b + ", top=" + this.c + ", right=" + this.d + ", bottom=" + this.e + ", textLeft=" + this.f + ", textBaseline=" + this.g + ", backgroundColor=" + this.h + ", strokeColor=" + this.i + ", textColor=" + this.j + ")";
    }
}
