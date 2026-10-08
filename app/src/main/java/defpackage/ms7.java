package defpackage;

import java.io.IOException;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ms7 implements fw6 {
    public final is3 a;

    public ms7(is3 is3Var) {
        is3Var.getClass();
        this.a = is3Var;
    }

    @Override // defpackage.fw6
    public final boolean a0() {
        return this.a.a0();
    }

    @Override // java.lang.AutoCloseable
    public final void close() throws IOException {
        this.a.close();
    }

    /* JADX WARN: Code duplicated, block: B:59:0x00ca  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // defpackage.fw6
    public final nw6 p0(String str) {
        ps7 ps7Var;
        int i;
        str.getClass();
        is3 is3Var = this.a;
        sl4 sl4Var = null;
        if (!is3Var.isOpen()) {
            ly8.P(21, "connection is closed");
            throw null;
        }
        String upperCase = nq7.H0(str).toString().toUpperCase(Locale.ROOT);
        upperCase.getClass();
        int length = upperCase.length() - 2;
        int i2 = -1;
        if (length >= 0) {
            int iG0 = 0;
            loop0: while (iG0 < length) {
                char cCharAt = upperCase.charAt(iG0);
                if (pe4.f(cCharAt, 32) > 0) {
                    if (cCharAt != '-') {
                        if (cCharAt == '/') {
                            int iG1 = iG0 + 1;
                            if (upperCase.charAt(iG1) == '*') {
                                do {
                                    iG1 = nq7.g0('*', iG1 + 1, 4, upperCase);
                                    if (iG1 < 0) {
                                        break loop0;
                                    }
                                    i = iG1 + 1;
                                    if (i >= length) {
                                        break;
                                    }
                                } while (upperCase.charAt(i) != '/');
                                iG0 = iG1 + 2;
                            }
                        }
                        i2 = iG0;
                        break;
                    }
                    if (upperCase.charAt(iG0 + 1) != '-') {
                        i2 = iG0;
                        break;
                    }
                    iG0 = nq7.g0('\n', iG0 + 2, 4, upperCase);
                    if (iG0 < 0) {
                        break;
                    }
                }
                iG0++;
            }
        }
        String strSubstring = (i2 < 0 || i2 > upperCase.length()) ? null : upperCase.substring(i2, Math.min(i2 + 3, upperCase.length()));
        if (strSubstring == null) {
            return new rs7(is3Var, str);
        }
        switch (strSubstring.hashCode()) {
            case 65636:
                if (!strSubstring.equals("BEG")) {
                    ps7Var = null;
                } else if (!nq7.Z(upperCase, "EXCLUSIVE", false)) {
                    ps7Var = !nq7.Z(upperCase, "IMMEDIATE", false) ? ps7.e : ps7.d;
                } else {
                    ps7Var = ps7.c;
                }
                break;
            case 66913:
                if (!strSubstring.equals("COM")) {
                    ps7Var = null;
                } else {
                    ps7Var = ps7.a;
                }
                break;
            case 68795:
                if (!strSubstring.equals("END")) {
                    ps7Var = null;
                } else {
                    ps7Var = ps7.a;
                }
                break;
            case 81327:
                ps7Var = (!strSubstring.equals("ROL") || nq7.Z(upperCase, " TO ", false)) ? null : ps7.b;
                break;
            default:
                ps7Var = null;
                break;
        }
        if (ps7Var != null) {
            return new ts7(is3Var, str, ps7Var);
        }
        if (strSubstring.equals("PRA")) {
            String lowerCase = upperCase.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            if (nq7.Z(nq7.z0(lowerCase, "journal_mode", ""), "=", false)) {
                sl4Var = sl4.d;
            }
        }
        if (sl4Var != null) {
            return new qs7(is3Var, str, new ss7(is3Var, str));
        }
        int iHashCode = strSubstring.hashCode();
        return (iHashCode == 79487 ? !strSubstring.equals("PRA") : iHashCode == 81978 ? !strSubstring.equals("SEL") : !(iHashCode == 85954 && strSubstring.equals("WIT"))) ? new rs7(is3Var, str) : new ss7(is3Var, str);
    }
}
