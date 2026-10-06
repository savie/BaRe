package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mr {
    public final String a;
    public final long b;
    public final long c;

    public mr(long j, long j2, String str) {
        str.getClass();
        this.a = str;
        this.b = j;
        this.c = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof mr)) {
            return false;
        }
        mr mrVar = (mr) obj;
        return pe4.d(this.a, mrVar.a) && this.b == mrVar.b && this.c == mrVar.c;
    }

    public final int hashCode() {
        return Long.hashCode(this.c) + xs1.f(this.b, this.a.hashCode() * 31, 31);
    }

    public final String toString() {
        StringBuilder sbO = u48.o("BackupSubtitleTextKey(dateStringPrefix=", this.a, this.b, ", backupDate=");
        sbO.append(", currentMinute=");
        sbO.append(this.c);
        sbO.append(")");
        return sbO.toString();
    }
}
