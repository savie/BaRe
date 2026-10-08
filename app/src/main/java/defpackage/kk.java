package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class kk {
    public final Long a;
    public final Long b;
    public final String c;
    public final boolean d;
    public final List e;

    public kk(Long l, Long l2, String str, boolean z, ww4 ww4Var) {
        ww4Var.getClass();
        this.a = l;
        this.b = l2;
        this.c = str;
        this.d = z;
        this.e = ww4Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof kk)) {
            return false;
        }
        kk kkVar = (kk) obj;
        return this.a.equals(kkVar.a) && pe4.d(this.b, kkVar.b) && pe4.d(this.c, kkVar.c) && this.d == kkVar.d && pe4.d(this.e, kkVar.e);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        Long l = this.b;
        int iHashCode2 = (iHashCode + (l == null ? 0 : l.hashCode())) * 31;
        String str = this.c;
        return this.e.hashCode() + fz5.h((iHashCode2 + (str != null ? str.hashCode() : 0)) * 31, 31, this.d);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AppBackupDetails(dateBackup=");
        sb.append(this.a);
        sb.append(", dateUpdated=");
        sb.append(this.b);
        sb.append(", backupTag=");
        sb.append(this.c);
        sb.append(", isProtected=");
        sb.append(this.d);
        sb.append(", parts=");
        return dj7.o(sb, this.e, ")");
    }
}
