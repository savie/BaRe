package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class pg1 {
    public final String a;
    public final String b;
    public long c;
    public long d;
    public long e;
    public String f;
    public boolean g;

    public pg1(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof pg1)) {
            return false;
        }
        pg1 pg1Var = (pg1) obj;
        return pe4.d(this.a, pg1Var.a) && pe4.d(this.b, pg1Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        long j = this.c;
        long j2 = this.d;
        long j3 = this.e;
        StringBuilder sbP = u48.p("CloudItem(name='", this.a, "', fileId='", this.b, "', size=");
        sbP.append(j);
        fz5.r(sbP, ", createdTime=", j2, ", modifiedTime=");
        return dj7.h(j3, ")", sbP);
    }
}
