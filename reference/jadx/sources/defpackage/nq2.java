package defpackage;

import com.microsoft.identity.client.claims.ClaimsRequest;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class nq2 {
    public final String a;
    public final Long b;
    public final String c;
    public final String d;
    public final String e;

    public nq2(String str, Long l, String str2, String str3, String str4) {
        this.a = str;
        this.b = l;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        if (str.length() <= 0) {
            c6.f("Missing Dropbox access token.");
            throw null;
        }
        if (str2 != null && str3 == null) {
            c6.f("Can't refresh Dropbox token without app key.");
            throw null;
        }
        if (str2 == null || l != null) {
            return;
        }
        c6.f("Missing Dropbox access token expiry.");
        throw null;
    }

    public static boolean a(nq2 nq2Var) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        Long l = nq2Var.b;
        return l != null && jCurrentTimeMillis + 300000 > l.longValue();
    }

    public static nq2 b(nq2 nq2Var, String str, Long l, String str2, String str3, int i) {
        if ((i & 1) != 0) {
            str = nq2Var.a;
        }
        String str4 = str;
        if ((i & 2) != 0) {
            l = nq2Var.b;
        }
        Long l2 = l;
        if ((i & 4) != 0) {
            str2 = nq2Var.c;
        }
        String str5 = str2;
        if ((i & 8) != 0) {
            str3 = nq2Var.d;
        }
        return new nq2(str4, l2, str5, str3, nq2Var.e);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof nq2)) {
            return false;
        }
        nq2 nq2Var = (nq2) obj;
        return this.a.equals(nq2Var.a) && pe4.d(this.b, nq2Var.b) && pe4.d(this.c, nq2Var.c) && pe4.d(this.d, nq2Var.d) && pe4.d(this.e, nq2Var.e);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        Long l = this.b;
        int iHashCode2 = (iHashCode + (l == null ? 0 : l.hashCode())) * 31;
        String str = this.c;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.d;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.e;
        return iHashCode4 + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        fl4 fl4Var = new fl4();
        fl4Var.u(ClaimsRequest.ACCESS_TOKEN, this.a);
        Long l = this.b;
        if (l != null) {
            fl4Var.t("expires_at", Long.valueOf(l.longValue()));
        }
        String str = this.c;
        if (str != null) {
            fl4Var.u("refresh_token", str);
        }
        String str2 = this.d;
        if (str2 != null) {
            fl4Var.u("app_key", str2);
        }
        String str3 = this.e;
        if (str3 != null) {
            fl4Var.u("app_secret", str3);
        }
        return fl4Var.toString();
    }
}
