package com.jcraft.jsch;

import defpackage.e6;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class HostKey {
    public static final int ECDSA256 = 3;
    public static final int ECDSA384 = 4;
    public static final int ECDSA521 = 5;
    public static final int ED25519 = 6;
    public static final int ED448 = 7;
    public static final int GUESS = 0;
    public static final int SSHDSS = 1;
    public static final int SSHRSA = 2;
    public static final int UNKNOWN = -1;
    public static final byte[][] f;
    public final String a;
    public String b;
    public final int c;
    public final byte[] d;
    public final String e;

    static {
        byte[] bArr = Util.a;
        Charset charset = StandardCharsets.UTF_8;
        f = new byte[][]{Util.p("ssh-dss", charset), Util.p("ssh-rsa", charset), Util.p("ecdsa-sha2-nistp256", charset), Util.p("ecdsa-sha2-nistp384", charset), Util.p("ecdsa-sha2-nistp521", charset), Util.p("ssh-ed25519", charset), Util.p("ssh-ed448", charset)};
    }

    public HostKey(String str, String str2, int i, byte[] bArr, String str3) throws JSchException {
        this.a = str;
        this.b = str2;
        if (i == 0) {
            byte b = bArr[8];
            if (b == 100) {
                this.c = 1;
            } else if (b == 114) {
                this.c = 2;
            } else if (b == 101 && bArr[10] == 50) {
                this.c = 6;
            } else if (b == 101 && bArr[10] == 52) {
                this.c = 7;
            } else if (b == 97 && bArr[20] == 50) {
                this.c = 3;
            } else if (b == 97 && bArr[20] == 51) {
                this.c = 4;
            } else {
                if (b != 97 || bArr[20] != 53) {
                    e6.h("invalid key type");
                    throw null;
                }
                this.c = 5;
            }
        } else {
            this.c = i;
        }
        this.d = bArr;
        this.e = str3;
    }

    public static boolean c(String str, String str2) {
        if (str != null) {
            int length = str.length();
            int length2 = str2.length();
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            int i4 = -1;
            while (i < length2) {
                if (i2 < length && (str.charAt(i2) == '?' || str.charAt(i2) == str2.charAt(i))) {
                    i2++;
                    i++;
                } else if (i2 < length && str.charAt(i2) == '*') {
                    i4 = i2;
                    i2++;
                    i3 = i;
                } else if (i4 != -1) {
                    i2 = i4 + 1;
                    i3++;
                    i = i3;
                }
            }
            while (i2 < length && str.charAt(i2) == '*') {
                i2++;
            }
            if (i2 == length) {
                return true;
            }
        }
        return false;
    }

    public boolean a(String str) {
        String str2 = this.b;
        int length = str2.length();
        int length2 = str.length();
        int i = 0;
        while (i < length) {
            int iIndexOf = str2.indexOf(44, i);
            if (iIndexOf == -1) {
                if (length2 != length - i) {
                    break;
                }
                return str2.regionMatches(true, i, str, 0, length2);
            }
            String str3 = str;
            if (length2 == iIndexOf - i && str2.regionMatches(true, i, str3, 0, length2)) {
                return true;
            }
            i = iIndexOf + 1;
            str = str3;
        }
        return false;
    }

    public final boolean b(String str) {
        String str2 = this.b;
        if (str2 != null && !str2.isEmpty()) {
            int length = str2.length();
            int i = 0;
            while (i < length) {
                int iIndexOf = str2.indexOf(44, i);
                if (iIndexOf == -1) {
                    if (c(str2.substring(i).trim(), str)) {
                        return true;
                    }
                } else {
                    if (c(str2.substring(i, iIndexOf).trim(), str)) {
                        return true;
                    }
                    i = iIndexOf + 1;
                }
            }
        }
        return false;
    }

    public final String getComment() {
        return this.e;
    }

    public final String getFingerPrint(JSch jSch) {
        HASH hash = null;
        try {
            hash = (HASH) Class.forName(JSch.getConfig(JSch.getConfig("FingerprintHash").toLowerCase(Locale.ROOT))).asSubclass(HASH.class).getDeclaredConstructor(null).newInstance(null);
        } catch (Exception e) {
            if (jSch.a.a().isEnabled(3)) {
                jSch.a.a().log(3, "getFingerPrint: " + e.getMessage(), e);
            }
        }
        return Util.k(hash, this.d);
    }

    public final String getHost() {
        return this.b;
    }

    public final String getKey() {
        byte[] bArr = this.d;
        byte[] bArrQ = Util.q(bArr.length, true, bArr);
        return new String(bArrQ, 0, bArrQ.length, StandardCharsets.UTF_8);
    }

    public final String getMarker() {
        return this.a;
    }

    public final String getType() {
        int i = this.c;
        return (i == 1 || i == 2 || i == 6 || i == 7 || i == 3 || i == 4 || i == 5) ? Util.c(f[i - 1]) : "UNKNOWN";
    }

    public HostKey(String str, byte[] bArr) throws JSchException {
        this(str, 0, bArr, null);
    }

    public HostKey(String str, int i, byte[] bArr, String str2) throws JSchException {
        this("", str, i, bArr, str2);
    }

    public HostKey(String str, int i, byte[] bArr) throws JSchException {
        this(str, i, bArr, null);
    }
}
