package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hb0 {
    public int a;
    public int b;
    public float c;
    public float d;
    public long e;
    public long f;
    public long g;
    public float h;
    public int i;

    public final float a(long j) {
        long j2 = this.e;
        if (j < j2) {
            return 0.0f;
        }
        long j3 = this.g;
        if (j3 < 0 || j < j3) {
            return qy4.b((j - j2) / this.a, 0.0f, 1.0f) * 0.5f;
        }
        float f = this.h;
        return (qy4.b((j - j3) / this.i, 0.0f, 1.0f) * f) + (1.0f - f);
    }
}
