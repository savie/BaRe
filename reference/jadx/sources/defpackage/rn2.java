package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rn2 {
    public final String a;
    public final String b;
    public final float c;
    public final int d;
    public final int e;
    public final float f;
    public final float g;
    public final int h;
    public final int i;
    public final float j;
    public final boolean k;

    public rn2(String str, String str2, float f, int i, int i2, float f2, float f3, int i3, int i4, float f4, boolean z) {
        this.a = str;
        this.b = str2;
        this.c = f;
        this.d = i;
        this.e = i2;
        this.f = f2;
        this.g = f3;
        this.h = i3;
        this.i = i4;
        this.j = f4;
        this.k = z;
    }

    public final int hashCode() {
        int iA = ((dj7.A(this.d) + (((int) (fz5.g(this.a.hashCode() * 31, 31, this.b) + this.c)) * 31)) * 31) + this.e;
        long jFloatToRawIntBits = Float.floatToRawIntBits(this.f);
        return (((iA * 31) + ((int) (jFloatToRawIntBits ^ (jFloatToRawIntBits >>> 32)))) * 31) + this.h;
    }
}
