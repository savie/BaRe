package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tz6 {
    public final uz6 a;
    public final int b;
    public final int c;
    public final Integer d;
    public final Integer e;

    public tz6(uz6 uz6Var, int i, int i2, Integer num, Integer num2) {
        uz6Var.getClass();
        this.a = uz6Var;
        this.b = i;
        this.c = i2;
        this.d = num;
        this.e = num2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof tz6)) {
            return false;
        }
        tz6 tz6Var = (tz6) obj;
        return this.a == tz6Var.a && this.b == tz6Var.b && this.c == tz6Var.c && pe4.d(this.d, tz6Var.d) && pe4.d(this.e, tz6Var.e);
    }

    public final int hashCode() {
        int iD = eq3.d(this.c, eq3.d(this.b, this.a.hashCode() * 31, 31), 31);
        Integer num = this.d;
        int iHashCode = (iD + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.e;
        return iHashCode + (num2 != null ? num2.hashCode() : 0);
    }

    public final String toString() {
        return "SbaKdfInfo(method=" + this.a + ", methodId=" + this.b + ", iterations=" + this.c + ", memoryKiB=" + this.d + ", parallelism=" + this.e + ")";
    }
}
