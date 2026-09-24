package org.swiftapps.swiftbackup.cloud.protocols;

import android.util.Log;
import com.nimbusds.jose.jwk.gen.RSAKeyGenerator;
import defpackage.ck;
import defpackage.dd1;
import defpackage.dj7;
import defpackage.eq3;
import defpackage.f6;
import defpackage.fd1;
import defpackage.fz5;
import defpackage.gv7;
import defpackage.hd1;
import defpackage.io4;
import defpackage.jq7;
import defpackage.jx2;
import defpackage.lh6;
import defpackage.nc1;
import defpackage.nq7;
import defpackage.os4;
import defpackage.pe4;
import defpackage.u48;
import defpackage.uq7;
import defpackage.vr6;
import defpackage.x14;
import defpackage.xs1;
import java.net.URI;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class CloudCredentials {
    public static final a Companion = new a();
    public static final String PLACEHOLDER_SERVER = "placeholder_server";
    private static final String logTag = "CloudCredentials";
    private String _region;
    private nc1 authType;
    private CloudServiceId cloudServiceId;

    @x14
    private final os4 cloudType$delegate;
    private String cloudTypeConstant;
    private String displayName;
    private Boolean encryption;
    private CloudPrivateKey key;
    private String password;
    private String path;
    private Integer port;
    private fd1 protocol;
    private String providerPresetId;
    private String server;
    private String username;

    public /* synthetic */ CloudCredentials(String str, fd1 fd1Var, String str2, String str3, Integer num, nc1 nc1Var, String str4, String str5, CloudPrivateKey cloudPrivateKey, Boolean bool, CloudServiceId cloudServiceId, String str6, String str7, String str8, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? fd1.HTTP : fd1Var, (i & 4) != 0 ? PLACEHOLDER_SERVER : str2, (i & 8) != 0 ? null : str3, (i & 16) != 0 ? null : num, (i & 32) != 0 ? null : nc1Var, (i & 64) != 0 ? null : str4, (i & 128) != 0 ? null : str5, (i & 256) != 0 ? null : cloudPrivateKey, (i & 512) != 0 ? null : bool, (i & 1024) != 0 ? null : cloudServiceId, (i & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0 ? null : str6, (i & 4096) != 0 ? null : str7, (i & 8192) != 0 ? null : str8);
    }

    private final String appendPath(String str, String str2) {
        if (str == null || str.length() <= 0 || nq7.j0(str)) {
            str = null;
        }
        if (str2 == null || str2.length() <= 0 || nq7.j0(str2)) {
            str2 = null;
        }
        if (str == null) {
            str = str2;
        } else if (str2 != null) {
            str = dj7.k(nq7.K0(str, '/'), "/", nq7.L0(str2, '/'));
        }
        if (str != null) {
            return uq7.V(str, "/", false) ? str : "/".concat(str);
        }
        return null;
    }

    private final String buildUrl(URI uri, String str, int i, String str2) {
        String string = new URI(str, uri.getUserInfo(), uri.getHost(), i, appendPath(uri.getPath(), str2), uri.getQuery(), uri.getFragment()).toString();
        string.getClass();
        return string;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final dd1 cloudType_delegate$lambda$0(CloudCredentials cloudCredentials) {
        Object next;
        jx2 entries = dd1.getEntries();
        ArrayList arrayList = new ArrayList();
        for (Object obj : entries) {
            if (((dd1) obj).getSupportsCurrentAndroidSdk()) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!pe4.d(((dd1) next).getConstant(), cloudCredentials.cloudTypeConstant));
        dd1 dd1Var = (dd1) next;
        return dd1Var == null ? dd1.WebDav : dd1Var;
    }

    private final String fixMultipleSchemesUrl(String str) {
        lh6 lh6Var = new lh6();
        lh6Var.a = str;
        while (true) {
            boolean zFixMultipleSchemesUrl$hasMultipleSchemes = fixMultipleSchemesUrl$hasMultipleSchemes(lh6Var);
            Object obj = lh6Var.a;
            if (!zFixMultipleSchemesUrl$hasMultipleSchemes) {
                return (String) obj;
            }
            int iH0 = nq7.h0((CharSequence) obj, "://", 0, false, 4);
            if (iH0 != -1) {
                lh6Var.a = ((String) lh6Var.a).substring(iH0 + 3);
            }
        }
    }

    private static final boolean fixMultipleSchemesUrl$hasMultipleSchemes(lh6 lh6Var) {
        int i;
        int iIndexOf;
        CharSequence charSequence = (CharSequence) lh6Var.a;
        int i2 = jq7.a;
        if (charSequence != null && charSequence.length() != 0) {
            int i3 = 0;
            i = 0;
            while (true) {
                if (charSequence == null) {
                    iIndexOf = -1;
                } else if (charSequence instanceof String) {
                    iIndexOf = ((String) charSequence).indexOf("http", i3);
                } else if (charSequence instanceof StringBuilder) {
                    iIndexOf = ((StringBuilder) charSequence).indexOf("http", i3);
                } else {
                    iIndexOf = charSequence instanceof StringBuffer ? ((StringBuffer) charSequence).indexOf("http", i3) : charSequence.toString().indexOf("http", i3);
                }
                if (iIndexOf == -1) {
                    break;
                }
                i++;
                i3 = iIndexOf + 4;
            }
        } else {
            i = 0;
        }
        return i > 1;
    }

    public static /* synthetic */ String getBaseUrl$default(CloudCredentials cloudCredentials, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return cloudCredentials.getBaseUrl(z);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0049 A[Catch: Exception -> 0x0045, TryCatch #0 {Exception -> 0x0045, blocks: (B:3:0x0004, B:9:0x002d, B:11:0x0031, B:15:0x0040, B:37:0x00a1, B:39:0x00a5, B:41:0x00ab, B:44:0x00b2, B:18:0x0049, B:19:0x0050, B:20:0x0063, B:21:0x0064, B:23:0x0068, B:27:0x0077, B:28:0x007c, B:29:0x0083, B:31:0x0087, B:35:0x0096, B:36:0x009b), top: B:50:0x0004 }] */
    /* JADX WARN: Code duplicated, block: B:28:0x007c A[Catch: Exception -> 0x0045, TryCatch #0 {Exception -> 0x0045, blocks: (B:3:0x0004, B:9:0x002d, B:11:0x0031, B:15:0x0040, B:37:0x00a1, B:39:0x00a5, B:41:0x00ab, B:44:0x00b2, B:18:0x0049, B:19:0x0050, B:20:0x0063, B:21:0x0064, B:23:0x0068, B:27:0x0077, B:28:0x007c, B:29:0x0083, B:31:0x0087, B:35:0x0096, B:36:0x009b), top: B:50:0x0004 }] */
    /* JADX WARN: Code duplicated, block: B:36:0x009b A[Catch: Exception -> 0x0045, TryCatch #0 {Exception -> 0x0045, blocks: (B:3:0x0004, B:9:0x002d, B:11:0x0031, B:15:0x0040, B:37:0x00a1, B:39:0x00a5, B:41:0x00ab, B:44:0x00b2, B:18:0x0049, B:19:0x0050, B:20:0x0063, B:21:0x0064, B:23:0x0068, B:27:0x0077, B:28:0x007c, B:29:0x0083, B:31:0x0087, B:35:0x0096, B:36:0x009b), top: B:50:0x0004 }] */
    private final String getBaseUrlFtp(boolean z) {
        int defPort;
        try {
            URI uriCreate = URI.create("ftp://" + this.server);
            uriCreate.getClass();
            int i = hd1.a[this.protocol.ordinal()];
            String str = null;
            if (i == 3) {
                Integer num = this.port;
                if (num == null) {
                    defPort = fd1.FTP.getDefPort();
                } else {
                    if (num.intValue() == fd1.FTPS_EXPLICIT.getDefPort()) {
                        num = null;
                    }
                    if (num != null) {
                        defPort = num.intValue();
                    } else {
                        defPort = fd1.FTP.getDefPort();
                    }
                }
            } else if (i == 4) {
                Integer num2 = this.port;
                if (num2 == null) {
                    defPort = fd1.FTPS_EXPLICIT.getDefPort();
                } else {
                    if (num2.intValue() == fd1.FTP.getDefPort()) {
                        num2 = null;
                    }
                    if (num2 != null) {
                        defPort = num2.intValue();
                    } else {
                        defPort = fd1.FTPS_EXPLICIT.getDefPort();
                    }
                }
            } else {
                if (i != 5) {
                    throw new RuntimeException("Invalid protocol " + this.protocol);
                }
                Integer num3 = this.port;
                if (num3 == null) {
                    defPort = fd1.FTPS_IMPLICIT.getDefPort();
                } else {
                    if (num3.intValue() == fd1.FTP.getDefPort()) {
                        num3 = null;
                    }
                    if (num3 != null) {
                        defPort = num3.intValue();
                    } else {
                        defPort = fd1.FTPS_IMPLICIT.getDefPort();
                    }
                }
            }
            String str2 = this.path;
            if (str2 != null && str2.length() > 0 && !nq7.j0(str2)) {
                str = str2;
            }
            return buildUrl(uriCreate, this.protocol.getScheme(), defPort, str);
        } catch (Exception e) {
            if (!z) {
                return "";
            }
            vr6.e$default(vr6.INSTANCE, logTag, "getBaseUrlFtp: ".concat(io4.b(e)), null, 4, null);
            return "";
        }
    }

    private final String getBaseUrlSftp(boolean z) {
        try {
            URI uriCreate = URI.create("sftp://" + this.server);
            uriCreate.getClass();
            String str = this.path;
            if (str == null || str.length() <= 0 || nq7.j0(str)) {
                str = null;
            }
            return buildUrl(uriCreate, this.protocol.getScheme(), getPort(), str);
        } catch (Exception e) {
            if (!z) {
                return "";
            }
            vr6.e$default(vr6.INSTANCE, logTag, "getBaseUrlSftp: ".concat(io4.b(e)), null, 4, null);
            return "";
        }
    }

    private final String getBaseUrlSmb(boolean z) {
        try {
            URI uriCreate = URI.create("smb://" + this.server);
            uriCreate.getClass();
            String str = this.path;
            if (str == null || str.length() <= 0 || nq7.j0(str)) {
                str = null;
            }
            return buildUrl(uriCreate, this.protocol.getScheme(), getPort(), str);
        } catch (Exception e) {
            if (!z) {
                return "";
            }
            vr6.e$default(vr6.INSTANCE, logTag, "getBaseUrlSmb: ".concat(io4.b(e)), null, 4, null);
            return "";
        }
    }

    private final String getDisplayUsername() {
        return getValidUsername();
    }

    private final String getHttpBasedUrl(boolean z, boolean z2) {
        try {
            URI uriCreate = URI.create(fixMultipleSchemesUrl("http://" + this.server));
            uriCreate.getClass();
            int i = hd1.a[this.protocol.ordinal()];
            int iIntValue = -1;
            String str = null;
            if (i == 1) {
                Integer num = this.port;
                if (num != null) {
                    int iIntValue2 = num.intValue();
                    if (iIntValue2 == fd1.HTTPS.getDefPort() && iIntValue2 == fd1.HTTP.getDefPort()) {
                        num = null;
                    }
                    if (num != null) {
                        iIntValue = num.intValue();
                    }
                }
            } else {
                if (i != 2) {
                    throw new RuntimeException("Invalid protocol " + this.protocol);
                }
                Integer num2 = this.port;
                if (num2 != null) {
                    int iIntValue3 = num2.intValue();
                    if (iIntValue3 == fd1.HTTP.getDefPort() && iIntValue3 == fd1.HTTPS.getDefPort()) {
                        num2 = null;
                    }
                    if (num2 != null) {
                        iIntValue = num2.intValue();
                    }
                }
            }
            String str2 = this.path;
            if (str2 != null && z2 && str2.length() > 0 && !nq7.j0(str2)) {
                str = str2;
            }
            return buildUrl(uriCreate, this.protocol.getScheme(), iIntValue, str);
        } catch (Exception e) {
            if (!z) {
                return "";
            }
            vr6.e$default(vr6.INSTANCE, logTag, "getBaseUrlWebdav: ".concat(io4.b(e)), null, 4, null);
            return "";
        }
    }

    public static /* synthetic */ String getHttpBasedUrl$default(CloudCredentials cloudCredentials, boolean z, boolean z2, int i, Object obj) {
        if ((i & 2) != 0) {
            z2 = true;
        }
        return cloudCredentials.getHttpBasedUrl(z, z2);
    }

    public final String component1() {
        return this.cloudTypeConstant;
    }

    public final Boolean component10() {
        return this.encryption;
    }

    public final CloudServiceId component11() {
        return this.cloudServiceId;
    }

    public final String component12() {
        return this._region;
    }

    public final String component13() {
        return this.providerPresetId;
    }

    public final String component14() {
        return this.displayName;
    }

    public final fd1 component2() {
        return this.protocol;
    }

    public final String component3() {
        return this.server;
    }

    public final String component4() {
        return this.path;
    }

    public final Integer component5() {
        return this.port;
    }

    public final nc1 component6() {
        return this.authType;
    }

    public final String component7() {
        return this.username;
    }

    public final String component8() {
        return this.password;
    }

    public final CloudPrivateKey component9() {
        return this.key;
    }

    public final CloudCredentials copy(String str, fd1 fd1Var, String str2, String str3, Integer num, nc1 nc1Var, String str4, String str5, CloudPrivateKey cloudPrivateKey, Boolean bool, CloudServiceId cloudServiceId, String str6, String str7, String str8) {
        fd1Var.getClass();
        str2.getClass();
        return new CloudCredentials(str, fd1Var, str2, str3, num, nc1Var, str4, str5, cloudPrivateKey, bool, cloudServiceId, str6, str7, str8);
    }

    public final String displayAccountIdValue() {
        String id;
        String host = URI.create(getBaseUrl$default(this, false, 1, null)).getHost();
        host.getClass();
        Locale locale = Locale.ROOT;
        String strQ = dj7.q(locale, host, locale);
        if (strQ.length() <= 0) {
            f6.g("CloudCredentials.getEmailAddress: Invalid host = ".concat(strQ));
            return null;
        }
        CloudServiceId cloudServiceId = this.cloudServiceId;
        String strQ2 = (cloudServiceId == null || (id = cloudServiceId.getId()) == null) ? null : dj7.q(locale, id, locale);
        if (strQ2 == null || strQ2.length() == 0) {
            f6.g(xs1.j("CloudCredentials.getEmailAddress: Invalid CloudServiceId = ", strQ2));
            return null;
        }
        return getDisplayUsername() + "@" + strQ + " (" + strQ2 + ")";
    }

    public final String emailAddressValue() {
        String id;
        String host = URI.create(getBaseUrl$default(this, false, 1, null)).getHost();
        host.getClass();
        Locale locale = Locale.ROOT;
        String strQ = dj7.q(locale, host, locale);
        if (strQ.length() <= 0) {
            f6.g("CloudCredentials.getEmailAddress: Invalid host = ".concat(strQ));
            return null;
        }
        CloudServiceId cloudServiceId = this.cloudServiceId;
        String strQ2 = (cloudServiceId == null || (id = cloudServiceId.getId()) == null) ? null : dj7.q(locale, id, locale);
        if (!(strQ2 == null || strQ2.length() == 0)) {
            return strQ2;
        }
        f6.g(xs1.j("CloudCredentials.getEmailAddress: Invalid CloudServiceId = ", strQ2));
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CloudCredentials)) {
            return false;
        }
        CloudCredentials cloudCredentials = (CloudCredentials) obj;
        return pe4.d(this.cloudTypeConstant, cloudCredentials.cloudTypeConstant) && this.protocol == cloudCredentials.protocol && pe4.d(this.server, cloudCredentials.server) && pe4.d(this.path, cloudCredentials.path) && pe4.d(this.port, cloudCredentials.port) && this.authType == cloudCredentials.authType && pe4.d(this.username, cloudCredentials.username) && pe4.d(this.password, cloudCredentials.password) && pe4.d(this.key, cloudCredentials.key) && pe4.d(this.encryption, cloudCredentials.encryption) && pe4.d(this.cloudServiceId, cloudCredentials.cloudServiceId) && pe4.d(this._region, cloudCredentials._region) && pe4.d(this.providerPresetId, cloudCredentials.providerPresetId) && pe4.d(this.displayName, cloudCredentials.displayName);
    }

    public final String extractRegion() {
        try {
            List listX0 = nq7.x0(uq7.T(uq7.T(getBaseUrl$default(this, false, 1, null), "http://", ""), "https://", ""), new String[]{"."}, 6);
            String str = (String) listX0.get(1);
            if (pe4.d(str, "dualstack")) {
                str = (String) listX0.get(2);
            }
            if (pe4.d(str, "amazonaws")) {
                str = null;
            }
            if (str == null || !nq7.Z(str, "-", false)) {
                return null;
            }
            return str;
        } catch (Exception e) {
            Log.e(logTag, "extractRegion", e);
            return null;
        }
    }

    public final nc1 getAuthType() {
        return this.authType;
    }

    public final String getBaseUrl(boolean z) {
        if (getCloudType() == dd1.FTP) {
            return getBaseUrlFtp(z);
        }
        if (getCloudType().isEmailPasswordBasedWebDav() || getCloudType() == dd1.WebDav) {
            return getHttpBasedUrl$default(this, z, false, 2, null);
        }
        if (getCloudType() == dd1.SMB) {
            return getBaseUrlSmb(z);
        }
        if (getCloudType() == dd1.SFTP) {
            return getBaseUrlSftp(z);
        }
        if (getCloudType() == dd1.S3) {
            return getHttpBasedUrl(z, false);
        }
        throw new RuntimeException("getBaseUrl has not implementation for cloudType=" + getCloudType() + ", cloudTypeConstant=" + this.cloudTypeConstant);
    }

    public final CloudServiceId getCloudServiceId() {
        return this.cloudServiceId;
    }

    public final dd1 getCloudType() {
        return (dd1) this.cloudType$delegate.getValue();
    }

    public final String getCloudTypeConstant() {
        return this.cloudTypeConstant;
    }

    public final String getDisplayName() {
        return this.displayName;
    }

    public final Boolean getEncryption() {
        return this.encryption;
    }

    public final CloudPrivateKey getKey() {
        return this.key;
    }

    public final String getPassword() {
        return this.password;
    }

    public final String getPath() {
        return this.path;
    }

    public final int getPort() {
        Integer num = this.port;
        return num != null ? num.intValue() : this.protocol.getDefPort();
    }

    public final fd1 getProtocol() {
        return this.protocol;
    }

    public final String getProviderPresetId() {
        return this.providerPresetId;
    }

    public final String getRegion() {
        String str = this._region;
        if (str != null) {
            if (str.length() <= 0 || nq7.j0(str)) {
                str = null;
            }
            if (str != null) {
                return str;
            }
        }
        return extractRegion();
    }

    public final String getServer() {
        return this.server;
    }

    public final String getUsername() {
        return this.username;
    }

    public final String getValidUsername() {
        String str = this.username;
        if (str == null) {
            return "anonymous";
        }
        if (str.length() <= 0 || nq7.j0(str)) {
            str = null;
        }
        return str == null ? "anonymous" : str;
    }

    public final String get_region() {
        return this._region;
    }

    public int hashCode() {
        String str = this.cloudTypeConstant;
        int iG = fz5.g((this.protocol.hashCode() + ((str == null ? 0 : str.hashCode()) * 31)) * 31, 31, this.server);
        String str2 = this.path;
        int iHashCode = (iG + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num = this.port;
        int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        nc1 nc1Var = this.authType;
        int iHashCode3 = (iHashCode2 + (nc1Var == null ? 0 : nc1Var.hashCode())) * 31;
        String str3 = this.username;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.password;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        CloudPrivateKey cloudPrivateKey = this.key;
        int iHashCode6 = (iHashCode5 + (cloudPrivateKey == null ? 0 : cloudPrivateKey.hashCode())) * 31;
        Boolean bool = this.encryption;
        int iHashCode7 = (iHashCode6 + (bool == null ? 0 : bool.hashCode())) * 31;
        CloudServiceId cloudServiceId = this.cloudServiceId;
        int iHashCode8 = (iHashCode7 + (cloudServiceId == null ? 0 : cloudServiceId.hashCode())) * 31;
        String str5 = this._region;
        int iHashCode9 = (iHashCode8 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.providerPresetId;
        int iHashCode10 = (iHashCode9 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.displayName;
        return iHashCode10 + (str7 != null ? str7.hashCode() : 0);
    }

    public final void setAuthType(nc1 nc1Var) {
        this.authType = nc1Var;
    }

    public final void setCloudServiceId(CloudServiceId cloudServiceId) {
        this.cloudServiceId = cloudServiceId;
    }

    public final void setCloudTypeConstant(String str) {
        this.cloudTypeConstant = str;
    }

    public final void setDisplayName(String str) {
        this.displayName = str;
    }

    public final void setEncryption(Boolean bool) {
        this.encryption = bool;
    }

    public final void setKey(CloudPrivateKey cloudPrivateKey) {
        this.key = cloudPrivateKey;
    }

    public final void setPassword(String str) {
        this.password = str;
    }

    public final void setPath(String str) {
        this.path = str;
    }

    public final void setPort(Integer num) {
        this.port = num;
    }

    public final void setProtocol(fd1 fd1Var) {
        fd1Var.getClass();
        this.protocol = fd1Var;
    }

    public final void setProviderPresetId(String str) {
        this.providerPresetId = str;
    }

    public final void setServer(String str) {
        str.getClass();
        this.server = str;
    }

    public final void setUsername(String str) {
        this.username = str;
    }

    public final void set_region(String str) {
        this._region = str;
    }

    public String toString() {
        String str = this.cloudTypeConstant;
        fd1 fd1Var = this.protocol;
        String str2 = this.server;
        String str3 = this.path;
        Integer num = this.port;
        nc1 nc1Var = this.authType;
        String str4 = this.username;
        String str5 = this.password;
        CloudPrivateKey cloudPrivateKey = this.key;
        Boolean bool = this.encryption;
        CloudServiceId cloudServiceId = this.cloudServiceId;
        String str6 = this._region;
        String str7 = this.providerPresetId;
        String str8 = this.displayName;
        StringBuilder sb = new StringBuilder("CloudCredentials(cloudTypeConstant=");
        sb.append(str);
        sb.append(", protocol=");
        sb.append(fd1Var);
        sb.append(", server=");
        xs1.t(sb, str2, ", path=", str3, ", port=");
        sb.append(num);
        sb.append(", authType=");
        sb.append(nc1Var);
        sb.append(", username=");
        xs1.t(sb, str4, ", password=", str5, ", key=");
        sb.append(cloudPrivateKey);
        sb.append(", encryption=");
        sb.append(bool);
        sb.append(", cloudServiceId=");
        sb.append(cloudServiceId);
        sb.append(", _region=");
        sb.append(str6);
        sb.append(", providerPresetId=");
        return eq3.o(sb, str7, ", displayName=", str8, ")");
    }

    public CloudCredentials(String str, fd1 fd1Var, String str2, String str3, Integer num, nc1 nc1Var, String str4, String str5, CloudPrivateKey cloudPrivateKey, Boolean bool, CloudServiceId cloudServiceId, String str6, String str7, String str8) {
        fd1Var.getClass();
        str2.getClass();
        this.cloudTypeConstant = str;
        this.protocol = fd1Var;
        this.server = str2;
        this.path = str3;
        this.port = num;
        this.authType = nc1Var;
        this.username = str4;
        this.password = str5;
        this.key = cloudPrivateKey;
        this.encryption = bool;
        this.cloudServiceId = cloudServiceId;
        this._region = str6;
        this.providerPresetId = str7;
        this.displayName = str8;
        this.cloudType$delegate = new gv7(new ck(this, 13));
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class CloudPrivateKey {
        private final String keyString;
        private final String passphrase;

        public /* synthetic */ CloudPrivateKey(String str, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2);
        }

        public static /* synthetic */ CloudPrivateKey copy$default(CloudPrivateKey cloudPrivateKey, String str, String str2, int i, Object obj) {
            if ((i & 1) != 0) {
                str = cloudPrivateKey.keyString;
            }
            if ((i & 2) != 0) {
                str2 = cloudPrivateKey.passphrase;
            }
            return cloudPrivateKey.copy(str, str2);
        }

        public final String component1() {
            return this.keyString;
        }

        public final String component2() {
            return this.passphrase;
        }

        public final CloudPrivateKey copy(String str, String str2) {
            return new CloudPrivateKey(str, str2);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CloudPrivateKey)) {
                return false;
            }
            CloudPrivateKey cloudPrivateKey = (CloudPrivateKey) obj;
            return pe4.d(this.keyString, cloudPrivateKey.keyString) && pe4.d(this.passphrase, cloudPrivateKey.passphrase);
        }

        public final String getKeyString() {
            return this.keyString;
        }

        public final String getPassphrase() {
            return this.passphrase;
        }

        public int hashCode() {
            String str = this.keyString;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.passphrase;
            return iHashCode + (str2 != null ? str2.hashCode() : 0);
        }

        public String toString() {
            return eq3.l("CloudPrivateKey(keyString=", this.keyString, ", passphrase=", this.passphrase, ")");
        }

        public CloudPrivateKey(String str, String str2) {
            this.keyString = str;
            this.passphrase = str2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public CloudPrivateKey() {
            this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        }
    }

    /* JADX INFO: renamed from: getPort, reason: collision with other method in class */
    public final Integer m77getPort() {
        return this.port;
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class CloudServiceMetadata {
        private final String path;
        private final String server;
        private final String username;

        public /* synthetic */ CloudServiceMetadata(String str, String str2, String str3, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3);
        }

        public static /* synthetic */ CloudServiceMetadata copy$default(CloudServiceMetadata cloudServiceMetadata, String str, String str2, String str3, int i, Object obj) {
            if ((i & 1) != 0) {
                str = cloudServiceMetadata.server;
            }
            if ((i & 2) != 0) {
                str2 = cloudServiceMetadata.path;
            }
            if ((i & 4) != 0) {
                str3 = cloudServiceMetadata.username;
            }
            return cloudServiceMetadata.copy(str, str2, str3);
        }

        public final String component1() {
            return this.server;
        }

        public final String component2() {
            return this.path;
        }

        public final String component3() {
            return this.username;
        }

        public final CloudServiceMetadata copy(String str, String str2, String str3) {
            return new CloudServiceMetadata(str, str2, str3);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CloudServiceMetadata)) {
                return false;
            }
            CloudServiceMetadata cloudServiceMetadata = (CloudServiceMetadata) obj;
            return pe4.d(this.server, cloudServiceMetadata.server) && pe4.d(this.path, cloudServiceMetadata.path) && pe4.d(this.username, cloudServiceMetadata.username);
        }

        public final String getPath() {
            return this.path;
        }

        public final String getServer() {
            return this.server;
        }

        public final String getUsername() {
            return this.username;
        }

        public int hashCode() {
            String str = this.server;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.path;
            int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.username;
            return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
        }

        public String toString() {
            String str = this.server;
            String str2 = this.path;
            return dj7.n(u48.p("CloudServiceMetadata(server=", str, ", path=", str2, ", username="), this.username, ")");
        }

        public CloudServiceMetadata(String str, String str2, String str3) {
            this.server = str;
            this.path = str2;
            this.username = str3;
        }

        public CloudServiceMetadata() {
            this(null, null, null, 7, null);
        }
    }

    public CloudCredentials() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, 16383, null);
    }
}
