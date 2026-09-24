package org.swiftapps.swiftbackup.cloud.protocols.terabox;

import com.nimbusds.jose.jwk.JWKParameterNames;
import defpackage.dj7;
import defpackage.fz5;
import defpackage.jz2;
import defpackage.l0;
import defpackage.m08;
import defpackage.nq7;
import defpackage.pe4;
import defpackage.u48;
import defpackage.xs1;
import defpackage.y77;
import defpackage.zm5;
import java.util.Locale;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.swiftapps.swiftbackup.cloud.protocols.CloudServiceId;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class TeraBoxTokenCredentials {
    public static final m08 Companion = new m08();
    public static final long DEFAULT_REFRESH_SKEW_MILLIS = 300000;
    private static final String logTag = "TeraBoxTokenCredentials";

    @y77(alternate = {"a"}, value = "accessToken")
    private final String accessToken;

    @y77(alternate = {"d"}, value = "apiDomain")
    private final String apiDomain;

    @y77(alternate = {"h"}, value = "cloudServiceId")
    private final CloudServiceId cloudServiceId;

    @y77(alternate = {"g"}, value = "displayName")
    private final String displayName;

    @y77(alternate = {"c"}, value = "expiresAtMillis")
    private final long expiresAtMillis;

    @y77(alternate = {"b"}, value = "refreshToken")
    private final String refreshToken;

    @y77(alternate = {"f"}, value = "uk")
    private final String uk;

    @y77(alternate = {JWKParameterNames.RSA_EXPONENT}, value = "uploadDomain")
    private final String uploadDomain;

    public /* synthetic */ TeraBoxTokenCredentials(String str, String str2, long j, String str3, String str4, String str5, String str6, CloudServiceId cloudServiceId, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? 0L : j, (i & 8) != 0 ? "" : str3, (i & 16) != 0 ? "" : str4, (i & 32) != 0 ? "" : str5, (i & 64) != 0 ? "" : str6, (i & 128) != 0 ? null : cloudServiceId);
    }

    public static /* synthetic */ TeraBoxTokenCredentials copy$default(TeraBoxTokenCredentials teraBoxTokenCredentials, String str, String str2, long j, String str3, String str4, String str5, String str6, CloudServiceId cloudServiceId, int i, Object obj) {
        if ((i & 1) != 0) {
            str = teraBoxTokenCredentials.accessToken;
        }
        if ((i & 2) != 0) {
            str2 = teraBoxTokenCredentials.refreshToken;
        }
        if ((i & 4) != 0) {
            j = teraBoxTokenCredentials.expiresAtMillis;
        }
        if ((i & 8) != 0) {
            str3 = teraBoxTokenCredentials.apiDomain;
        }
        if ((i & 16) != 0) {
            str4 = teraBoxTokenCredentials.uploadDomain;
        }
        if ((i & 32) != 0) {
            str5 = teraBoxTokenCredentials.uk;
        }
        if ((i & 64) != 0) {
            str6 = teraBoxTokenCredentials.displayName;
        }
        if ((i & 128) != 0) {
            cloudServiceId = teraBoxTokenCredentials.cloudServiceId;
        }
        CloudServiceId cloudServiceId2 = cloudServiceId;
        String str7 = str5;
        String str8 = str3;
        long j2 = j;
        return teraBoxTokenCredentials.copy(str, str2, j2, str8, str4, str7, str6, cloudServiceId2);
    }

    public static /* synthetic */ boolean needsAccessTokenRefresh$default(TeraBoxTokenCredentials teraBoxTokenCredentials, long j, long j2, int i, Object obj) {
        if ((i & 1) != 0) {
            j = System.currentTimeMillis();
        }
        if ((i & 2) != 0) {
            j2 = 300000;
        }
        return teraBoxTokenCredentials.needsAccessTokenRefresh(j, j2);
    }

    public final String component1() {
        return this.accessToken;
    }

    public final String component2() {
        return this.refreshToken;
    }

    public final long component3() {
        return this.expiresAtMillis;
    }

    public final String component4() {
        return this.apiDomain;
    }

    public final String component5() {
        return this.uploadDomain;
    }

    public final String component6() {
        return this.uk;
    }

    public final String component7() {
        return this.displayName;
    }

    public final CloudServiceId component8() {
        return this.cloudServiceId;
    }

    public final TeraBoxTokenCredentials copy(String str, String str2, long j, String str3, String str4, String str5, String str6, CloudServiceId cloudServiceId) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        str5.getClass();
        str6.getClass();
        return new TeraBoxTokenCredentials(str, str2, j, str3, str4, str5, str6, cloudServiceId);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TeraBoxTokenCredentials)) {
            return false;
        }
        TeraBoxTokenCredentials teraBoxTokenCredentials = (TeraBoxTokenCredentials) obj;
        return pe4.d(this.accessToken, teraBoxTokenCredentials.accessToken) && pe4.d(this.refreshToken, teraBoxTokenCredentials.refreshToken) && this.expiresAtMillis == teraBoxTokenCredentials.expiresAtMillis && pe4.d(this.apiDomain, teraBoxTokenCredentials.apiDomain) && pe4.d(this.uploadDomain, teraBoxTokenCredentials.uploadDomain) && pe4.d(this.uk, teraBoxTokenCredentials.uk) && pe4.d(this.displayName, teraBoxTokenCredentials.displayName) && pe4.d(this.cloudServiceId, teraBoxTokenCredentials.cloudServiceId);
    }

    public final String getAccessToken() {
        return this.accessToken;
    }

    public final String getApiDomain() {
        return this.apiDomain;
    }

    public final CloudServiceId getCloudServiceId() {
        return this.cloudServiceId;
    }

    public final String getDisplayName() {
        return this.displayName;
    }

    @jz2
    public final String getEmailAddressValue() {
        String strQ;
        String id;
        CloudServiceId cloudServiceId = this.cloudServiceId;
        if (cloudServiceId == null || (id = cloudServiceId.getId()) == null) {
            strQ = null;
        } else {
            Locale locale = Locale.ROOT;
            strQ = dj7.q(locale, id, locale);
        }
        if (strQ != null && !nq7.j0(strQ)) {
            return strQ;
        }
        if (!nq7.j0(this.displayName)) {
            return this.displayName;
        }
        if (!nq7.j0(this.uk)) {
            return this.uk;
        }
        l0.e("TeraBoxTokenCredentials has no account identifier.");
        return null;
    }

    public final long getExpiresAtMillis() {
        return this.expiresAtMillis;
    }

    public final String getRefreshToken() {
        return this.refreshToken;
    }

    public final String getUk() {
        return this.uk;
    }

    public final String getUploadDomain() {
        return this.uploadDomain;
    }

    public int hashCode() {
        int iG = fz5.g(fz5.g(fz5.g(fz5.g(xs1.f(this.expiresAtMillis, fz5.g(this.accessToken.hashCode() * 31, 31, this.refreshToken), 31), 31, this.apiDomain), 31, this.uploadDomain), 31, this.uk), 31, this.displayName);
        CloudServiceId cloudServiceId = this.cloudServiceId;
        return iG + (cloudServiceId == null ? 0 : cloudServiceId.hashCode());
    }

    @jz2
    public final boolean isValid() {
        return (!zm5.u(this.cloudServiceId) || nq7.j0(this.accessToken) || nq7.j0(this.refreshToken) || nq7.j0(this.apiDomain) || nq7.j0(this.uploadDomain)) ? false : true;
    }

    public final boolean needsAccessTokenRefresh(long j, long j2) {
        return nq7.j0(this.accessToken) || this.expiresAtMillis <= j + j2;
    }

    public String toString() {
        String str = this.accessToken;
        String str2 = this.refreshToken;
        long j = this.expiresAtMillis;
        String str3 = this.apiDomain;
        String str4 = this.uploadDomain;
        String str5 = this.uk;
        String str6 = this.displayName;
        CloudServiceId cloudServiceId = this.cloudServiceId;
        StringBuilder sbP = u48.p("TeraBoxTokenCredentials(accessToken=", str, ", refreshToken=", str2, ", expiresAtMillis=");
        sbP.append(j);
        sbP.append(", apiDomain=");
        sbP.append(str3);
        xs1.t(sbP, ", uploadDomain=", str4, ", uk=", str5);
        sbP.append(", displayName=");
        sbP.append(str6);
        sbP.append(", cloudServiceId=");
        sbP.append(cloudServiceId);
        sbP.append(")");
        return sbP.toString();
    }

    public TeraBoxTokenCredentials(String str, String str2, long j, String str3, String str4, String str5, String str6, CloudServiceId cloudServiceId) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        str5.getClass();
        str6.getClass();
        this.accessToken = str;
        this.refreshToken = str2;
        this.expiresAtMillis = j;
        this.apiDomain = str3;
        this.uploadDomain = str4;
        this.uk = str5;
        this.displayName = str6;
        this.cloudServiceId = cloudServiceId;
    }

    public TeraBoxTokenCredentials() {
        this(null, null, 0L, null, null, null, null, null, 255, null);
    }
}
