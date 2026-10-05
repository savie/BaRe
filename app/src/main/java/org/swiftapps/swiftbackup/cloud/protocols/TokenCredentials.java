package org.swiftapps.swiftbackup.cloud.protocols;

import defpackage.dj7;
import defpackage.f6;
import defpackage.i58;
import defpackage.jz2;
import defpackage.pe4;
import defpackage.xs1;
import defpackage.zm5;
import java.util.Locale;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class TokenCredentials {
    public static final i58 Companion = new i58();
    private static final String logTag = "TokenCredentials";
    private final CloudServiceId cloudServiceId;
    private final Long expiresAtMillis;
    private final String refreshToken;
    private final String token;

    public /* synthetic */ TokenCredentials(String str, CloudServiceId cloudServiceId, String str2, Long l, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? null : cloudServiceId, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? null : l);
    }

    public static /* synthetic */ TokenCredentials copy$default(TokenCredentials tokenCredentials, String str, CloudServiceId cloudServiceId, String str2, Long l, int i, Object obj) {
        if ((i & 1) != 0) {
            str = tokenCredentials.token;
        }
        if ((i & 2) != 0) {
            cloudServiceId = tokenCredentials.cloudServiceId;
        }
        if ((i & 4) != 0) {
            str2 = tokenCredentials.refreshToken;
        }
        if ((i & 8) != 0) {
            l = tokenCredentials.expiresAtMillis;
        }
        return tokenCredentials.copy(str, cloudServiceId, str2, l);
    }

    public final String component1() {
        return this.token;
    }

    public final CloudServiceId component2() {
        return this.cloudServiceId;
    }

    public final String component3() {
        return this.refreshToken;
    }

    public final Long component4() {
        return this.expiresAtMillis;
    }

    public final TokenCredentials copy(String str, CloudServiceId cloudServiceId, String str2, Long l) {
        str.getClass();
        return new TokenCredentials(str, cloudServiceId, str2, l);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TokenCredentials)) {
            return false;
        }
        TokenCredentials tokenCredentials = (TokenCredentials) obj;
        return pe4.d(this.token, tokenCredentials.token) && pe4.d(this.cloudServiceId, tokenCredentials.cloudServiceId) && pe4.d(this.refreshToken, tokenCredentials.refreshToken) && pe4.d(this.expiresAtMillis, tokenCredentials.expiresAtMillis);
    }

    public final CloudServiceId getCloudServiceId() {
        return this.cloudServiceId;
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
        if (!(strQ == null || strQ.length() == 0)) {
            return strQ;
        }
        f6.g(xs1.j("TokenCredentials.getEmailAddress: Invalid CloudServiceId = ", strQ));
        return null;
    }

    public final Long getExpiresAtMillis() {
        return this.expiresAtMillis;
    }

    public final String getRefreshToken() {
        return this.refreshToken;
    }

    public final String getToken() {
        return this.token;
    }

    public int hashCode() {
        int iHashCode = this.token.hashCode() * 31;
        CloudServiceId cloudServiceId = this.cloudServiceId;
        int iHashCode2 = (iHashCode + (cloudServiceId == null ? 0 : cloudServiceId.hashCode())) * 31;
        String str = this.refreshToken;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        Long l = this.expiresAtMillis;
        return iHashCode3 + (l != null ? l.hashCode() : 0);
    }

    @jz2
    public final boolean isValid() {
        return zm5.u(this.cloudServiceId) && this.token.length() > 0;
    }

    public String toString() {
        return "TokenCredentials(token=" + this.token + ", cloudServiceId=" + this.cloudServiceId + ", refreshToken=" + this.refreshToken + ", expiresAtMillis=" + this.expiresAtMillis + ")";
    }

    public TokenCredentials(String str, CloudServiceId cloudServiceId, String str2, Long l) {
        str.getClass();
        this.token = str;
        this.cloudServiceId = cloudServiceId;
        this.refreshToken = str2;
        this.expiresAtMillis = l;
    }

    public TokenCredentials() {
        this(null, null, null, null, 15, null);
    }
}
