package defpackage;

import java.text.ParseException;
import java.text.SimpleDateFormat;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class t89 {
    public static final s89 a;

    static {
        i89 i89VarX = j89.x();
        i89VarX.f(-62135596800L);
        i89VarX.e(0);
        i89 i89VarX2 = j89.x();
        i89VarX2.f(253402300799L);
        i89VarX2.e(999999999);
        i89 i89VarX3 = j89.x();
        i89VarX3.f(0L);
        i89VarX3.e(0);
        a = new s89(0);
        try {
            Class.forName("java.time.Instant").getMethod("now", null);
        } catch (Exception unused) {
        }
        try {
            Class.forName("java.time.Instant").getMethod("getEpochSecond", null);
        } catch (Exception unused2) {
        }
        try {
            Class.forName("java.time.Instant").getMethod("getNano", null);
        } catch (Exception unused3) {
        }
    }

    public static j89 a(String str) {
        String strSubstring;
        int iCharAt;
        j89 j89Var;
        int iIndexOf = str.indexOf(84);
        if (iIndexOf == -1) {
            y5.e(0, eq3.k("Failed to parse timestamp: invalid timestamp \"", str, "\""));
            return null;
        }
        int iIndexOf2 = str.indexOf(90, iIndexOf);
        if (iIndexOf2 == -1) {
            iIndexOf2 = str.indexOf(43, iIndexOf);
        }
        if (iIndexOf2 == -1) {
            iIndexOf2 = str.indexOf(45, iIndexOf);
        }
        if (iIndexOf2 == -1) {
            y5.e(0, "Failed to parse timestamp: missing valid timezone offset.");
            return null;
        }
        String strSubstring2 = str.substring(0, iIndexOf2);
        int iIndexOf3 = strSubstring2.indexOf(46);
        boolean z = true;
        if (iIndexOf3 != -1) {
            String strSubstring3 = strSubstring2.substring(0, iIndexOf3);
            strSubstring = strSubstring2.substring(iIndexOf3 + 1);
            strSubstring2 = strSubstring3;
        } else {
            strSubstring = "";
        }
        long time = ((SimpleDateFormat) a.get()).parse(strSubstring2).getTime() / 1000;
        if (strSubstring.isEmpty()) {
            iCharAt = 0;
        } else {
            iCharAt = 0;
            for (int i = 0; i < 9; i++) {
                iCharAt *= 10;
                if (i < strSubstring.length()) {
                    if (strSubstring.charAt(i) >= '0') {
                        j89Var = null;
                        if (strSubstring.charAt(i) <= '9') {
                            iCharAt = (strSubstring.charAt(i) - '0') + iCharAt;
                        }
                    } else {
                        j89Var = null;
                    }
                    y5.e(0, "Invalid nanoseconds.");
                    return j89Var;
                }
            }
        }
        if (str.charAt(iIndexOf2) != 'Z') {
            String strSubstring4 = str.substring(iIndexOf2 + 1);
            int iIndexOf4 = strSubstring4.indexOf(58);
            if (iIndexOf4 == -1) {
                y5.e(0, "Invalid offset value: ".concat(strSubstring4));
                return null;
            }
            try {
                long j = ((Long.parseLong(strSubstring4.substring(0, iIndexOf4)) * 60) + Long.parseLong(strSubstring4.substring(iIndexOf4 + 1))) * 60;
                time = str.charAt(iIndexOf2) == '+' ? time - j : time + j;
            } catch (NumberFormatException e) {
                ParseException parseException = new ParseException("Invalid offset value: ".concat(strSubstring4), 0);
                parseException.initCause(e);
                throw parseException;
            }
        } else if (str.length() != iIndexOf2 + 1) {
            y5.e(0, eq3.k("Failed to parse timestamp: invalid trailing data \"", str.substring(iIndexOf2), "\""));
            return null;
        }
        try {
            if (!(time >= -62135596800L && time <= 253402300799L)) {
                throw new IllegalArgumentException("Timestamp is not valid. Input seconds is too large. Seconds (" + time + ") must be in range [-62,135,596,800, +253,402,300,799]. ");
            }
            if (iCharAt <= -1000000000 || iCharAt >= 1000000000) {
                long j2 = iCharAt / 1000000000;
                long j3 = time + j2;
                if (!((j2 ^ time) < 0) && !((time ^ j3) >= 0)) {
                    throw new ArithmeticException();
                }
                iCharAt %= 1000000000;
                time = j3;
            }
            if (iCharAt < 0) {
                iCharAt += 1000000000;
                long j4 = time - 1;
                boolean z2 = (1 ^ time) >= 0;
                if ((time ^ j4) < 0) {
                    z = false;
                }
                if (!z2 && !z) {
                    throw new ArithmeticException();
                }
                time = j4;
            }
            i89 i89VarX = j89.x();
            i89VarX.f(time);
            i89VarX.e(iCharAt);
            j89 j89Var2 = (j89) i89VarX.b();
            b(j89Var2);
            return j89Var2;
        } catch (IllegalArgumentException e2) {
            ParseException parseException2 = new ParseException(eq3.k("Failed to parse timestamp ", str, " Timestamp is out of range."), 0);
            parseException2.initCause(e2);
            throw parseException2;
        }
    }

    public static void b(j89 j89Var) {
        long jW = j89Var.w();
        int iT = j89Var.t();
        if (jW < -62135596800L || jW > 253402300799L || iT < 0 || iT >= 1000000000) {
            z5.g("Timestamp is not valid. See proto definition for valid values. Seconds (", jW, ") must be in range [-62,135,596,800, +253,402,300,799]. Nanos (", iT, ") must be in range [0, +999,999,999].");
        }
    }
}
