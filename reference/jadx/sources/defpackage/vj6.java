package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vj6 implements Comparable {
    public gy5 a;
    public bf3 b;
    public hx0 c;
    public int d;
    public long e;
    public int f;
    public wc2 k;
    public long n;
    public qn5 p;
    public qn5 q;
    public qn5 r;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        long j = this.e;
        long j2 = ((vj6) obj).e;
        if (j < j2) {
            return -1;
        }
        return j == j2 ? 0 : 1;
    }
}
