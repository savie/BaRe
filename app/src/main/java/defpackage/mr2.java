package defpackage;

import com.nimbusds.jose.crypto.PasswordBasedDecrypter;
import com.nimbusds.jose.crypto.PasswordBasedEncrypter;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mr2 implements Comparable {
    public static final ma2 b = new ma2(6);
    public static final long c = pe4.j(4611686018427387903L);
    public static final long d = pe4.j(-4611686018427387903L);
    public final long a;

    public static final long a(long j, long j2) {
        long j3 = j2 / 1000000;
        long jB = pe4.b(j, j3);
        if (-4611686018426L > jB || jB >= 4611686018427L) {
            return pe4.j(jB);
        }
        long j4 = ((jB * 1000000) + (j2 - (j3 * 1000000))) << 1;
        int i = nr2.a;
        return j4;
    }

    public static final void b(StringBuilder sb, int i, int i2, int i3, String str, boolean z) {
        sb.append(i);
        if (i2 != 0) {
            sb.append('.');
            String strO0 = nq7.o0(i3, String.valueOf(i2));
            int i4 = -1;
            int length = strO0.length() - 1;
            if (length >= 0) {
                while (true) {
                    int i5 = length - 1;
                    if (strO0.charAt(length) != '0') {
                        i4 = length;
                        break;
                    } else if (i5 < 0) {
                        break;
                    } else {
                        length = i5;
                    }
                }
            }
            int i6 = i4 + 1;
            if (z || i6 >= 3) {
                sb.append((CharSequence) strO0, 0, ((i4 + 3) / 3) * 3);
            } else {
                sb.append((CharSequence) strO0, 0, i6);
            }
        }
        sb.append(str);
    }

    public static int c(long j, long j2) {
        long j3 = j ^ j2;
        if (j3 < 0 || (((int) j3) & 1) == 0) {
            return pe4.g(j, j2);
        }
        int i = (((int) j) & 1) - (((int) j2) & 1);
        return j < 0 ? -i : i;
    }

    public static final boolean d(long j) {
        return j == c || j == d;
    }

    public static final long e(long j, long j2) {
        int i = ((int) j) & 1;
        if (i != (((int) j2) & 1)) {
            return i == 1 ? a(j >> 1, j2 >> 1) : a(j2 >> 1, j >> 1);
        }
        if (i == 0) {
            long j3 = (j >> 1) + (j2 >> 1);
            if (-4611686018426999999L > j3 || j3 >= 4611686018427000000L) {
                return pe4.j(j3 / 1000000);
            }
            long j4 = j3 << 1;
            int i2 = nr2.a;
            return j4;
        }
        long jB = pe4.b(j >> 1, j2 >> 1);
        if (jB == 9223372036854759646L) {
            c6.f("Summing infinite durations of different signs yields an undefined result.");
            return 0L;
        }
        if (jB == 4611686018427387903L || jB == -4611686018427387903L) {
            return pe4.j(jB);
        }
        if (-4611686018426L > jB || jB >= 4611686018427L) {
            return pe4.j(l73.i(jB, -4611686018427387903L, 4611686018427387903L));
        }
        long j5 = (jB * 1000000) << 1;
        int i3 = nr2.a;
        return j5;
    }

    public static final long f(long j, or2 or2Var) {
        if (j == c) {
            return Long.MAX_VALUE;
        }
        if (j == d) {
            return Long.MIN_VALUE;
        }
        return or2Var.a.convert(j >> 1, ((((int) j) & 1) == 0 ? or2.NANOSECONDS : or2.MILLISECONDS).a);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return c(this.a, ((mr2) obj).a);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof mr2) {
            return this.a == ((mr2) obj).a;
        }
        return false;
    }

    public final int hashCode() {
        return Long.hashCode(this.a);
    }

    public final String toString() {
        int i;
        long j = this.a;
        if (j == 0) {
            return "0s";
        }
        if (j == c) {
            return "Infinity";
        }
        if (j == d) {
            return "-Infinity";
        }
        int i2 = 0;
        boolean z = j < 0;
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append('-');
        }
        if (j < 0) {
            j = ((-(j >> 1)) << 1) + ((long) (((int) j) & 1));
            int i3 = nr2.a;
        }
        long jF = f(j, or2.DAYS);
        int iF = d(j) ? 0 : (int) (f(j, or2.HOURS) % 24);
        int iF2 = d(j) ? 0 : (int) (f(j, or2.MINUTES) % 60);
        int iF3 = d(j) ? 0 : (int) (f(j, or2.SECONDS) % 60);
        if (d(j)) {
            i = 0;
        } else {
            i = (int) ((((int) j) & 1) == 1 ? ((j >> 1) % 1000) * 1000000 : (j >> 1) % 1000000000);
        }
        boolean z2 = jF != 0;
        boolean z3 = iF != 0;
        boolean z4 = iF2 != 0;
        boolean z5 = (iF3 == 0 && i == 0) ? false : true;
        if (z2) {
            sb.append(jF);
            sb.append('d');
            i2 = 1;
        }
        if (z3 || (z2 && (z4 || z5))) {
            int i4 = i2 + 1;
            if (i2 > 0) {
                sb.append(' ');
            }
            sb.append(iF);
            sb.append('h');
            i2 = i4;
        }
        if (z4 || (z5 && (z3 || z2))) {
            int i5 = i2 + 1;
            if (i2 > 0) {
                sb.append(' ');
            }
            sb.append(iF2);
            sb.append('m');
            i2 = i5;
        }
        if (z5) {
            int i6 = i2 + 1;
            if (i2 > 0) {
                sb.append(' ');
            }
            if (iF3 != 0 || z2 || z3 || z4) {
                b(sb, iF3, i, 9, "s", false);
            } else if (i >= 1000000) {
                b(sb, i / PasswordBasedDecrypter.MAX_ALLOWED_ITERATION_COUNT, i % PasswordBasedDecrypter.MAX_ALLOWED_ITERATION_COUNT, 6, "ms", false);
            } else if (i >= 1000) {
                b(sb, i / PasswordBasedEncrypter.MIN_RECOMMENDED_ITERATION_COUNT, i % PasswordBasedEncrypter.MIN_RECOMMENDED_ITERATION_COUNT, 3, "us", false);
            } else {
                sb.append(i);
                sb.append("ns");
            }
            i2 = i6;
        }
        if (z && i2 > 1) {
            sb.insert(1, '(').append(')');
        }
        return sb.toString();
    }
}
