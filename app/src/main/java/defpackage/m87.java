package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class m87 {
    public static final l87 Companion = new l87();
    public final Boolean a;
    public final Double b;
    public final Integer c;
    public final Integer d;
    public final Long e;

    public /* synthetic */ m87(int i, Boolean bool, Double d, Integer num, Integer num2, Long l) {
        if (31 != (i & 31)) {
            nc8.p0(i, 31, k87.a.d());
            throw null;
        }
        this.a = bool;
        this.b = d;
        this.c = num;
        this.d = num2;
        this.e = l;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m87)) {
            return false;
        }
        m87 m87Var = (m87) obj;
        return pe4.d(this.a, m87Var.a) && pe4.d(this.b, m87Var.b) && pe4.d(this.c, m87Var.c) && pe4.d(this.d, m87Var.d) && pe4.d(this.e, m87Var.e);
    }

    public final int hashCode() {
        Boolean bool = this.a;
        int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        Double d = this.b;
        int iHashCode2 = (iHashCode + (d == null ? 0 : d.hashCode())) * 31;
        Integer num = this.c;
        int iHashCode3 = (iHashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.d;
        int iHashCode4 = (iHashCode3 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Long l = this.e;
        return iHashCode4 + (l != null ? l.hashCode() : 0);
    }

    public final String toString() {
        return "SessionConfigs(sessionsEnabled=" + this.a + ", sessionSamplingRate=" + this.b + ", sessionTimeoutSeconds=" + this.c + ", cacheDurationSeconds=" + this.d + ", cacheUpdatedTimeSeconds=" + this.e + ')';
    }

    public m87(Boolean bool, Double d, Integer num, Integer num2, Long l) {
        this.a = bool;
        this.b = d;
        this.c = num;
        this.d = num2;
        this.e = l;
    }
}
