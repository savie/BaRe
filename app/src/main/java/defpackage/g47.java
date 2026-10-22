package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class g47 {
    public final String a;
    public final rw6 b;

    public g47(String str, rw6 rw6Var) {
        str.getClass();
        this.a = str;
        this.b = rw6Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof g47) {
            g47 g47Var = (g47) obj;
            return pe4.d(this.a, g47Var.a) && this.b == g47Var.b;
        }
        return false;
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "ScheduleTaskProvider(scheduleItemId=" + this.a + ", provider=" + this.b + ")";
    }
}
