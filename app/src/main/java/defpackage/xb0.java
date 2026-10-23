package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xb0 extends c02 {
    public final String b;
    public final String c;
    public final int d;
    public final String e;
    public final String f;
    public final String g;
    public final String h;
    public final String i;
    public final String j;
    public final b02 k;
    public final hz1 l;
    public final ez1 m;

    public xb0(String str, String str2, int i, String str3, String str4, String str5, String str6, String str7, String str8, b02 b02Var, hz1 hz1Var, ez1 ez1Var) {
        this.b = str;
        this.c = str2;
        this.d = i;
        this.e = str3;
        this.f = str4;
        this.g = str5;
        this.h = str6;
        this.i = str7;
        this.j = str8;
        this.k = b02Var;
        this.l = hz1Var;
        this.m = ez1Var;
    }

    public final wb0 a() {
        wb0 wb0Var = new wb0();
        wb0Var.a = this.b;
        wb0Var.b = this.c;
        wb0Var.c = this.d;
        wb0Var.d = this.e;
        wb0Var.e = this.f;
        wb0Var.f = this.g;
        wb0Var.g = this.h;
        wb0Var.h = this.i;
        wb0Var.i = this.j;
        wb0Var.j = this.k;
        wb0Var.k = this.l;
        wb0Var.l = this.m;
        wb0Var.m = (byte) 1;
        return wb0Var;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof c02) {
            xb0 xb0Var = (xb0) ((c02) obj);
            if (this.b.equals(xb0Var.b) && this.c.equals(xb0Var.c) && this.d == xb0Var.d && this.e.equals(xb0Var.e)) {
                String str = xb0Var.f;
                String str2 = this.f;
                if (str2 != null ? str2.equals(str) : str == null) {
                    String str3 = xb0Var.g;
                    String str4 = this.g;
                    if (str4 != null ? str4.equals(str3) : str3 == null) {
                        String str5 = xb0Var.h;
                        String str6 = this.h;
                        if (str6 != null ? str6.equals(str5) : str5 == null) {
                            if (this.i.equals(xb0Var.i) && this.j.equals(xb0Var.j)) {
                                b02 b02Var = xb0Var.k;
                                b02 b02Var2 = this.k;
                                if (b02Var2 != null ? b02Var2.equals(b02Var) : b02Var == null) {
                                    hz1 hz1Var = xb0Var.l;
                                    hz1 hz1Var2 = this.l;
                                    if (hz1Var2 != null ? hz1Var2.equals(hz1Var) : hz1Var == null) {
                                        ez1 ez1Var = xb0Var.m;
                                        ez1 ez1Var2 = this.m;
                                        if (ez1Var2 != null ? ez1Var2.equals(ez1Var) : ez1Var == null) {
                                            return true;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = (((((((this.b.hashCode() ^ 1000003) * 1000003) ^ this.c.hashCode()) * 1000003) ^ this.d) * 1000003) ^ this.e.hashCode()) * 1000003;
        String str = this.f;
        int iHashCode2 = (iHashCode ^ (str == null ? 0 : str.hashCode())) * 1000003;
        String str2 = this.g;
        int iHashCode3 = (iHashCode2 ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.h;
        int iHashCode4 = (((((iHashCode3 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003) ^ this.i.hashCode()) * 1000003) ^ this.j.hashCode()) * 1000003;
        b02 b02Var = this.k;
        int iHashCode5 = (iHashCode4 ^ (b02Var == null ? 0 : b02Var.hashCode())) * 1000003;
        hz1 hz1Var = this.l;
        int iHashCode6 = (iHashCode5 ^ (hz1Var == null ? 0 : hz1Var.hashCode())) * 1000003;
        ez1 ez1Var = this.m;
        return iHashCode6 ^ (ez1Var != null ? ez1Var.hashCode() : 0);
    }

    public final String toString() {
        return "CrashlyticsReport{sdkVersion=" + this.b + ", gmpAppId=" + this.c + ", platform=" + this.d + ", installationUuid=" + this.e + ", firebaseInstallationId=" + this.f + ", firebaseAuthenticationToken=" + this.g + ", appQualitySessionId=" + this.h + ", buildVersion=" + this.i + ", displayVersion=" + this.j + ", session=" + this.k + ", ndkPayload=" + this.l + ", appExitInfo=" + this.m + "}";
    }
}
