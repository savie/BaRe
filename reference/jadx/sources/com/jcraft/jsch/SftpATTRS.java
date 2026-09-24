package com.jcraft.jsch;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import com.nimbusds.jose.jwk.gen.RSAKeyGenerator;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.time.Instant;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class SftpATTRS {
    public static final int SSH_FILEXFER_ATTR_ACMODTIME = 8;
    public static final int SSH_FILEXFER_ATTR_EXTENDED = Integer.MIN_VALUE;
    public static final int SSH_FILEXFER_ATTR_PERMISSIONS = 4;
    public static final int SSH_FILEXFER_ATTR_SIZE = 1;
    public static final int SSH_FILEXFER_ATTR_UIDGID = 2;
    public static final DateTimeFormatter i = DateTimeFormatter.ofPattern("EEE MMM dd HH:mm:ss zzz yyyy", Locale.ROOT);
    public long b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;
    public int a = 0;
    public String[] h = null;

    public static SftpATTRS a(Buffer buffer) {
        int i2;
        SftpATTRS sftpATTRS = new SftpATTRS();
        int i3 = buffer.getInt();
        sftpATTRS.a = i3;
        if ((i3 & 1) != 0) {
            sftpATTRS.b = buffer.getLong();
        }
        if ((sftpATTRS.a & 2) != 0) {
            sftpATTRS.c = buffer.getInt();
            sftpATTRS.d = buffer.getInt();
        }
        if ((sftpATTRS.a & 4) != 0) {
            sftpATTRS.e = buffer.getInt();
        }
        if ((sftpATTRS.a & 8) != 0) {
            sftpATTRS.f = buffer.getInt();
        }
        if ((sftpATTRS.a & 8) != 0) {
            sftpATTRS.g = buffer.getInt();
        }
        if ((sftpATTRS.a & SSH_FILEXFER_ATTR_EXTENDED) != 0 && (i2 = buffer.getInt()) > 0) {
            sftpATTRS.h = new String[i2 * 2];
            for (int i4 = 0; i4 < i2; i4++) {
                String[] strArr = sftpATTRS.h;
                int i5 = i4 * 2;
                byte[] string = buffer.getString();
                byte[] bArr = Util.a;
                int length = string.length;
                Charset charset = StandardCharsets.UTF_8;
                strArr[i5] = new String(string, 0, length, charset);
                byte[] string2 = buffer.getString();
                sftpATTRS.h[i5 + 1] = new String(string2, 0, string2.length, charset);
            }
        }
        return sftpATTRS;
    }

    public final boolean b(int i2) {
        return (this.a & 4) != 0 && (this.e & 61440) == i2;
    }

    public final int c() {
        int i2 = this.a;
        int length = (i2 & 1) != 0 ? 12 : 4;
        if ((i2 & 2) != 0) {
            length += 8;
        }
        if ((i2 & 4) != 0) {
            length += 4;
        }
        if ((i2 & 8) != 0) {
            length += 8;
        }
        if ((i2 & SSH_FILEXFER_ATTR_EXTENDED) != 0) {
            length += 4;
            int length2 = this.h.length / 2;
            if (length2 > 0) {
                for (int i3 = 0; i3 < length2; i3++) {
                    int i4 = i3 * 2;
                    length = this.h[i4 + 1].length() + this.h[i4].length() + length + 4 + 4;
                }
            }
        }
        return length;
    }

    public final int getATime() {
        return this.f;
    }

    public final String getAtimeString() {
        return i.format(ZonedDateTime.ofInstant(Instant.ofEpochSecond(Integer.toUnsignedLong(this.f)), ZoneId.systemDefault()));
    }

    public final String[] getExtended() {
        return this.h;
    }

    public final int getFlags() {
        return this.a;
    }

    public final int getGId() {
        return this.d;
    }

    public final int getMTime() {
        return this.g;
    }

    public final String getMtimeString() {
        return i.format(ZonedDateTime.ofInstant(Instant.ofEpochSecond(Integer.toUnsignedLong(this.g)), ZoneId.systemDefault()));
    }

    public final int getPermissions() {
        return this.e;
    }

    public final String getPermissionsString() {
        StringBuilder sb = new StringBuilder(10);
        if (b(16384)) {
            sb.append('d');
        } else if (b(40960)) {
            sb.append('l');
        } else {
            sb.append('-');
        }
        if ((this.e & 256) != 0) {
            sb.append('r');
        } else {
            sb.append('-');
        }
        if ((this.e & 128) != 0) {
            sb.append('w');
        } else {
            sb.append('-');
        }
        int i2 = this.e;
        if ((i2 & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0) {
            sb.append('s');
        } else if ((i2 & 64) != 0) {
            sb.append('x');
        } else {
            sb.append('-');
        }
        if ((this.e & 32) != 0) {
            sb.append('r');
        } else {
            sb.append('-');
        }
        if ((this.e & 16) != 0) {
            sb.append('w');
        } else {
            sb.append('-');
        }
        int i3 = this.e;
        if ((i3 & 1024) != 0) {
            sb.append('s');
        } else if ((i3 & 8) != 0) {
            sb.append('x');
        } else {
            sb.append('-');
        }
        if ((this.e & 4) != 0) {
            sb.append('r');
        } else {
            sb.append('-');
        }
        if ((this.e & 2) != 0) {
            sb.append('w');
        } else {
            sb.append('-');
        }
        if ((this.e & 1) != 0) {
            sb.append('x');
        } else {
            sb.append('-');
        }
        return sb.toString();
    }

    public final long getSize() {
        return this.b;
    }

    public final int getUId() {
        return this.c;
    }

    public final boolean isBlk() {
        return b(24576);
    }

    public final boolean isChr() {
        return b(8192);
    }

    public final boolean isDir() {
        return b(16384);
    }

    public final boolean isFifo() {
        return b(4096);
    }

    public final boolean isLink() {
        return b(40960);
    }

    public final boolean isReg() {
        return b(32768);
    }

    public final boolean isSock() {
        return b(49152);
    }

    public final void setACMODTIME(int i2, int i3) {
        this.a |= 8;
        this.f = i2;
        this.g = i3;
    }

    public final void setPERMISSIONS(int i2) {
        this.a |= 4;
        this.e = (i2 & 4095) | (this.e & (-4096));
    }

    public final void setSIZE(long j) {
        this.a |= 1;
        this.b = j;
    }

    public final void setUIDGID(int i2, int i3) {
        this.a |= 2;
        this.c = i2;
        this.d = i3;
    }

    public final String toString() {
        return getPermissionsString() + TokenAuthenticationScheme.SCHEME_DELIMITER + this.c + TokenAuthenticationScheme.SCHEME_DELIMITER + this.d + TokenAuthenticationScheme.SCHEME_DELIMITER + this.b + TokenAuthenticationScheme.SCHEME_DELIMITER + getMtimeString();
    }
}
