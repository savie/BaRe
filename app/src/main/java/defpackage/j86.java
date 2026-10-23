package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class j86 {
    public final bt3 a = i86.a;
    public final long b = 2000;
    public Long c;
    public Long d;

    public final boolean a(long j, Long l) {
        boolean z = true;
        if (l == null) {
            this.c = null;
            this.d = null;
            return true;
        }
        long jLongValue = l.longValue();
        Long l2 = this.d;
        if (l2 != null && jLongValue == l2.longValue()) {
            return false;
        }
        if (l.longValue() == 0 && this.c == null) {
            this.d = l;
            return true;
        }
        long jLongValue2 = ((Number) this.a.invoke()).longValue();
        boolean z2 = j > 0 && l.longValue() >= j;
        Long l3 = this.c;
        if (l3 != null) {
            long j2 = this.b;
            if (j2 > 0 && jLongValue2 - l3.longValue() < j2 && !z2) {
                z = false;
            }
        }
        if (z) {
            this.c = Long.valueOf(jLongValue2);
            this.d = l;
        }
        return z;
    }
}
