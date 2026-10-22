package defpackage;

import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class vj {
    public final String a;
    public final Long b;
    public final String c;
    public final Map d;

    public vj(String str, Long l, String str2, Map map) {
        map.getClass();
        this.a = str;
        this.b = l;
        this.c = str2;
        this.d = map;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof vj)) {
            return false;
        }
        vj vjVar = (vj) obj;
        return this.a.equals(vjVar.a) && pe4.d(this.b, vjVar.b) && pe4.d(this.c, vjVar.c) && pe4.d(this.d, vjVar.d);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        Long l = this.b;
        int iHashCode2 = (iHashCode + (l == null ? 0 : l.hashCode())) * 31;
        String str = this.c;
        return this.d.hashCode() + ((iHashCode2 + (str != null ? str.hashCode() : 0)) * 31);
    }

    public final String toString() {
        return "AppAuthCloudToken(accessToken=" + this.a + ", accessTokenExpirationTime=" + this.b + ", refreshToken=" + this.c + ", additionalParameters=" + this.d + ")";
    }
}
