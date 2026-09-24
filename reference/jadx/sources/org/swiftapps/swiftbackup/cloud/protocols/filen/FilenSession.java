package org.swiftapps.swiftbackup.cloud.protocols.filen;

import defpackage.bn6;
import defpackage.eb3;
import defpackage.el1;
import defpackage.eq3;
import defpackage.f51;
import defpackage.fz5;
import defpackage.hb3;
import defpackage.hl1;
import defpackage.nq7;
import defpackage.pe4;
import defpackage.u48;
import defpackage.w3;
import defpackage.xs1;
import defpackage.z3;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class FilenSession {
    private final String apiKey;
    private final int authVersion;
    private final String baseFolderUuid;
    private final String email;
    private final String encryptionKeyHex;
    private final String legacyNameHmacKeyHex;
    private final List<String> metadataKeysHex;
    private final String nameHmacKeyHex;
    private final int nameHmacKeyVersion;
    private final String salt;

    public /* synthetic */ FilenSession(String str, String str2, int i, String str3, List list, String str4, String str5, String str6, String str7, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, i, str3, list, str4, str5, (i3 & 128) != 0 ? "" : str6, (i3 & 256) != 0 ? null : str7, (i3 & 512) != 0 ? 0 : i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ FilenSession copy$default(FilenSession filenSession, String str, String str2, int i, String str3, List list, String str4, String str5, String str6, String str7, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            str = filenSession.email;
        }
        if ((i3 & 2) != 0) {
            str2 = filenSession.apiKey;
        }
        if ((i3 & 4) != 0) {
            i = filenSession.authVersion;
        }
        if ((i3 & 8) != 0) {
            str3 = filenSession.encryptionKeyHex;
        }
        if ((i3 & 16) != 0) {
            list = filenSession.metadataKeysHex;
        }
        if ((i3 & 32) != 0) {
            str4 = filenSession.salt;
        }
        if ((i3 & 64) != 0) {
            str5 = filenSession.baseFolderUuid;
        }
        if ((i3 & 128) != 0) {
            str6 = filenSession.nameHmacKeyHex;
        }
        if ((i3 & 256) != 0) {
            str7 = filenSession.legacyNameHmacKeyHex;
        }
        if ((i3 & 512) != 0) {
            i2 = filenSession.nameHmacKeyVersion;
        }
        String str8 = str7;
        int i4 = i2;
        String str9 = str5;
        String str10 = str6;
        List list2 = list;
        String str11 = str4;
        return filenSession.copy(str, str2, i, str3, list2, str11, str9, str10, str8, i4);
    }

    private final boolean isHexDigit(char c) {
        if (Character.isDigit(c)) {
            return true;
        }
        char lowerCase = Character.toLowerCase(c);
        return 'a' <= lowerCase && lowerCase < 'g';
    }

    public final String component1() {
        return this.email;
    }

    public final int component10() {
        return this.nameHmacKeyVersion;
    }

    public final String component2() {
        return this.apiKey;
    }

    public final int component3() {
        return this.authVersion;
    }

    public final String component4() {
        return this.encryptionKeyHex;
    }

    public final List<String> component5() {
        return this.metadataKeysHex;
    }

    public final String component6() {
        return this.salt;
    }

    public final String component7() {
        return this.baseFolderUuid;
    }

    public final String component8() {
        return this.nameHmacKeyHex;
    }

    public final String component9() {
        return this.legacyNameHmacKeyHex;
    }

    public final FilenSession copy(String str, String str2, int i, String str3, List<String> list, String str4, String str5, String str6, String str7, int i2) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        list.getClass();
        str4.getClass();
        str5.getClass();
        str6.getClass();
        return new FilenSession(str, str2, i, str3, list, str4, str5, str6, str7, i2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FilenSession)) {
            return false;
        }
        FilenSession filenSession = (FilenSession) obj;
        return pe4.d(this.email, filenSession.email) && pe4.d(this.apiKey, filenSession.apiKey) && this.authVersion == filenSession.authVersion && pe4.d(this.encryptionKeyHex, filenSession.encryptionKeyHex) && pe4.d(this.metadataKeysHex, filenSession.metadataKeysHex) && pe4.d(this.salt, filenSession.salt) && pe4.d(this.baseFolderUuid, filenSession.baseFolderUuid) && pe4.d(this.nameHmacKeyHex, filenSession.nameHmacKeyHex) && pe4.d(this.legacyNameHmacKeyHex, filenSession.legacyNameHmacKeyHex) && this.nameHmacKeyVersion == filenSession.nameHmacKeyVersion;
    }

    public final String getApiKey() {
        return this.apiKey;
    }

    public final int getAuthVersion() {
        return this.authVersion;
    }

    public final String getBaseFolderUuid() {
        return this.baseFolderUuid;
    }

    public final String getEmail() {
        return this.email;
    }

    public final String getEncryptionKeyHex() {
        return this.encryptionKeyHex;
    }

    public final String getLegacyNameHmacKeyHex() {
        return this.legacyNameHmacKeyHex;
    }

    public final List<String> getMetadataKeysHex() {
        return this.metadataKeysHex;
    }

    public final String getNameHmacKeyHex() {
        return this.nameHmacKeyHex;
    }

    public final int getNameHmacKeyVersion() {
        return this.nameHmacKeyVersion;
    }

    public final String getSalt() {
        return this.salt;
    }

    /* JADX WARN: Code duplicated, block: B:79:0x0132 A[Catch: all -> 0x013f, TryCatch #0 {all -> 0x013f, blocks: (B:2:0x0000, B:4:0x0009, B:6:0x0011, B:9:0x001b, B:10:0x0031, B:12:0x0037, B:13:0x0049, B:16:0x0057, B:18:0x005c, B:37:0x0099, B:41:0x00a5, B:43:0x00af, B:45:0x00b9, B:48:0x00cd, B:50:0x00d3, B:53:0x00de, B:54:0x00e1, B:56:0x00e9, B:58:0x00f1, B:59:0x00f4, B:61:0x00fa, B:64:0x0105, B:65:0x0108, B:67:0x010c, B:70:0x0113, B:72:0x011b, B:73:0x011e, B:75:0x0124, B:78:0x012f, B:79:0x0132, B:21:0x0064, B:22:0x0068, B:24:0x006e, B:27:0x007b, B:30:0x0084, B:32:0x008a, B:35:0x0095, B:84:0x013a), top: B:93:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:81:0x0136  */
    /* JADX WARN: Code duplicated, block: B:83:0x0139 A[EDGE_INSN: B:83:0x0139->B:84:0x013a BREAK  A[LOOP:1: B:48:0x00cd->B:53:0x00de]] */
    public final boolean hasRestorableCryptoState() {
        Object bn6Var;
        boolean z;
        String str;
        int i;
        try {
            boolean z2 = false;
            if (!nq7.j0(this.email) && !nq7.j0(this.apiKey) && !nq7.j0(this.baseFolderUuid)) {
                List entries = eb3.getEntries();
                ArrayList arrayList = new ArrayList(hl1.G0(entries, 10));
                w3 w3Var = new w3((z3) entries);
                while (w3Var.hasNext()) {
                    arrayList.add(Integer.valueOf(((eb3) w3Var.next()).getValue()));
                }
                if (arrayList.contains(Integer.valueOf(this.authVersion))) {
                    List<String> list = this.metadataKeysHex;
                    if (list == null || !list.isEmpty()) {
                        Iterator<T> it = list.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                String str2 = (String) it.next();
                                if (str2.length() != 0 && str2.length() % 2 == 0) {
                                    int i2 = 0;
                                    while (true) {
                                        if (i2 < str2.length()) {
                                            if (isHexDigit(str2.charAt(i2))) {
                                                i2++;
                                            }
                                        }
                                    }
                                }
                                z = true;
                            } else {
                                z = false;
                            }
                        }
                    } else {
                        z = false;
                    }
                    if (!this.metadataKeysHex.isEmpty() && !z) {
                        if (this.authVersion == eb3.V3.getValue()) {
                            String str3 = (String) el1.l1(this.metadataKeysHex);
                            if (str3 != null) {
                                String str4 = new String(hb3.q(str3), f51.d);
                                if (str4.length() == 64) {
                                    int i3 = 0;
                                    while (true) {
                                        if (i3 >= str4.length()) {
                                            if (this.nameHmacKeyHex.length() > 0) {
                                                if (this.nameHmacKeyHex.length() != 64) {
                                                    break;
                                                }
                                                String str5 = this.nameHmacKeyHex;
                                                int i4 = 0;
                                                while (true) {
                                                    if (i4 >= str5.length()) {
                                                        str = this.legacyNameHmacKeyHex;
                                                        if (str != null) {
                                                            i = this.nameHmacKeyVersion;
                                                            if (i >= 0) {
                                                                break;
                                                            }
                                                            z2 = true;
                                                            break;
                                                        }
                                                        i = this.nameHmacKeyVersion;
                                                        if (i >= 0) {
                                                            break;
                                                        }
                                                        z2 = true;
                                                        break;
                                                    }
                                                    if (!isHexDigit(str5.charAt(i4))) {
                                                        break;
                                                    }
                                                    i4++;
                                                }
                                            } else {
                                                str = this.legacyNameHmacKeyHex;
                                                if (str != null && str.length() != 0) {
                                                    if (this.legacyNameHmacKeyHex.length() != 64) {
                                                        break;
                                                    }
                                                    String str6 = this.legacyNameHmacKeyHex;
                                                    int i5 = 0;
                                                    while (true) {
                                                        if (i5 >= str6.length()) {
                                                            i = this.nameHmacKeyVersion;
                                                            if (i >= 0) {
                                                                break;
                                                            }
                                                            z2 = true;
                                                            break;
                                                        }
                                                        if (!isHexDigit(str6.charAt(i5))) {
                                                            break;
                                                        }
                                                        i5++;
                                                    }
                                                } else {
                                                    i = this.nameHmacKeyVersion;
                                                    if (i >= 0 || i >= 3) {
                                                        break;
                                                        break;
                                                    }
                                                    z2 = true;
                                                    break;
                                                }
                                            }
                                        } else {
                                            if (!isHexDigit(str4.charAt(i3))) {
                                                break;
                                            }
                                            i3++;
                                        }
                                    }
                                }
                            }
                        } else {
                            z2 = true;
                            break;
                        }
                    }
                }
            }
            bn6Var = Boolean.valueOf(z2);
        } catch (Throwable th) {
            bn6Var = new bn6(th);
        }
        Object obj = Boolean.FALSE;
        if (bn6Var instanceof bn6) {
            bn6Var = obj;
        }
        return ((Boolean) bn6Var).booleanValue();
    }

    public int hashCode() {
        int iG = fz5.g(fz5.g(fz5.g(fz5.i(this.metadataKeysHex, fz5.g(eq3.d(this.authVersion, fz5.g(this.email.hashCode() * 31, 31, this.apiKey), 31), 31, this.encryptionKeyHex), 31), 31, this.salt), 31, this.baseFolderUuid), 31, this.nameHmacKeyHex);
        String str = this.legacyNameHmacKeyHex;
        return Integer.hashCode(this.nameHmacKeyVersion) + ((iG + (str == null ? 0 : str.hashCode())) * 31);
    }

    public String toString() {
        String str = this.email;
        String str2 = this.apiKey;
        int i = this.authVersion;
        String str3 = this.encryptionKeyHex;
        List<String> list = this.metadataKeysHex;
        String str4 = this.salt;
        String str5 = this.baseFolderUuid;
        String str6 = this.nameHmacKeyHex;
        String str7 = this.legacyNameHmacKeyHex;
        int i2 = this.nameHmacKeyVersion;
        StringBuilder sbP = u48.p("FilenSession(email=", str, ", apiKey=", str2, ", authVersion=");
        sbP.append(i);
        sbP.append(", encryptionKeyHex=");
        sbP.append(str3);
        sbP.append(", metadataKeysHex=");
        sbP.append(list);
        sbP.append(", salt=");
        sbP.append(str4);
        sbP.append(", baseFolderUuid=");
        xs1.t(sbP, str5, ", nameHmacKeyHex=", str6, ", legacyNameHmacKeyHex=");
        sbP.append(str7);
        sbP.append(", nameHmacKeyVersion=");
        sbP.append(i2);
        sbP.append(")");
        return sbP.toString();
    }

    public FilenSession(String str, String str2, int i, String str3, List<String> list, String str4, String str5, String str6, String str7, int i2) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        list.getClass();
        str4.getClass();
        str5.getClass();
        str6.getClass();
        this.email = str;
        this.apiKey = str2;
        this.authVersion = i;
        this.encryptionKeyHex = str3;
        this.metadataKeysHex = list;
        this.salt = str4;
        this.baseFolderUuid = str5;
        this.nameHmacKeyHex = str6;
        this.legacyNameHmacKeyHex = str7;
        this.nameHmacKeyVersion = i2;
    }
}
