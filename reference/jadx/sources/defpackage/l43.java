package defpackage;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Comparator;
import java.util.Date;
import java.util.Locale;
import java.util.Objects;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.function.Function;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class l43 implements Serializable {
    public final String a;
    public final TimeZone b;
    public final Locale c;
    public final int d;
    public final int e;
    public final transient ArrayList f;
    public static final Locale k = new Locale("ja", "JP", "JP");
    public static final Comparator n = Comparator.reverseOrder();
    public static final ConcurrentMap[] p = new ConcurrentMap[17];
    public static final x33 q = new x33(1);
    public static final y33 r = new y33(2);
    public static final f43 t = new f43(1);
    public static final f43 x = new f43(3);
    public static final f43 y = new f43(4);
    public static final f43 G = new f43(6);
    public static final f43 H = new f43(5);
    public static final z33 I = new z33(7);
    public static final f43 J = new f43(8);
    public static final f43 K = new f43(11);
    public static final a43 L = new a43(11);
    public static final b43 M = new b43(10);
    public static final f43 N = new f43(10);
    public static final f43 O = new f43(12);
    public static final f43 P = new f43(13);
    public static final f43 Q = new f43(14);

    /* JADX WARN: Code duplicated, block: B:105:0x00a6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:106:0x00cf A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:107:0x0186 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:23:0x0075  */
    /* JADX WARN: Code duplicated, block: B:25:0x0079 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:26:0x007b  */
    /* JADX WARN: Code duplicated, block: B:28:0x007f  */
    /* JADX WARN: Code duplicated, block: B:30:0x0083  */
    /* JADX WARN: Code duplicated, block: B:32:0x0087  */
    /* JADX WARN: Code duplicated, block: B:34:0x008b  */
    /* JADX WARN: Code duplicated, block: B:36:0x008f  */
    /* JADX WARN: Code duplicated, block: B:38:0x0093  */
    /* JADX WARN: Code duplicated, block: B:40:0x0098  */
    /* JADX WARN: Code duplicated, block: B:42:0x009c  */
    /* JADX WARN: Code duplicated, block: B:43:0x009f  */
    /* JADX WARN: Code duplicated, block: B:45:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:48:0x00bf A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:49:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:50:0x00c5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:51:0x00c7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:52:0x00c9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:53:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:56:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:57:0x00db  */
    /* JADX WARN: Code duplicated, block: B:58:0x00de  */
    /* JADX WARN: Code duplicated, block: B:59:0x00e1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:60:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:61:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:62:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:63:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:64:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:65:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:66:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:67:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:68:0x0102  */
    /* JADX WARN: Code duplicated, block: B:69:0x0109 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:70:0x010b  */
    /* JADX WARN: Code duplicated, block: B:71:0x010e  */
    /* JADX WARN: Code duplicated, block: B:72:0x0111  */
    /* JADX WARN: Code duplicated, block: B:73:0x0114  */
    /* JADX WARN: Code duplicated, block: B:74:0x0117  */
    /* JADX WARN: Code duplicated, block: B:75:0x011a  */
    /* JADX WARN: Code duplicated, block: B:76:0x011d  */
    /* JADX WARN: Code duplicated, block: B:77:0x0120  */
    /* JADX WARN: Code duplicated, block: B:78:0x0123  */
    /* JADX WARN: Code duplicated, block: B:79:0x0126  */
    /* JADX WARN: Code duplicated, block: B:80:0x012d  */
    /* JADX WARN: Code duplicated, block: B:99:0x016a  */
    public l43(String str, TimeZone timeZone, Locale locale) {
        int i;
        int i2;
        h43 h43VarA;
        this.a = str;
        Objects.requireNonNull(timeZone, "timeZone");
        this.b = timeZone;
        int i3 = k05.a;
        locale = locale == null ? Locale.getDefault() : locale;
        this.c = locale;
        Calendar calendar = Calendar.getInstance(timeZone, locale);
        if (locale.equals(k)) {
            i = 0;
        } else {
            calendar.setTime(new Date());
            i = calendar.get(1) - 80;
        }
        int i4 = (i / 100) * 100;
        this.d = i4;
        this.e = i - i4;
        this.f = new ArrayList();
        Objects.requireNonNull(calendar, "definingCalendar");
        int i5 = 0;
        while (true) {
            i43 i43Var = null;
            if (i5 < str.length()) {
                char cCharAt = str.charAt(i5);
                if (c51.a(cCharAt)) {
                    int i6 = i5;
                    do {
                        i6++;
                        if (i6 < str.length()) {
                        }
                        i2 = i6 - i5;
                        if (cCharAt != 'S') {
                            h43VarA = Q;
                        } else if (cCharAt != 'a') {
                            h43VarA = a(9, calendar);
                        } else if (cCharAt != 'd') {
                            h43VarA = H;
                        } else if (cCharAt != 'h') {
                            h43VarA = M;
                        } else if (cCharAt != 'k') {
                            h43VarA = L;
                        } else if (cCharAt != 'm') {
                            h43VarA = O;
                        } else if (cCharAt != 's') {
                            h43VarA = P;
                        } else if (cCharAt != 'u') {
                            h43VarA = I;
                        } else if (cCharAt != 'w') {
                            h43VarA = x;
                        } else if (cCharAt == 'y') {
                            if (i2 > 2) {
                                h43VarA = t;
                            } else {
                                h43VarA = q;
                            }
                        } else if (cCharAt != 'z') {
                            switch (cCharAt) {
                                case 'D':
                                    h43VarA = G;
                                    break;
                                case 'E':
                                    h43VarA = a(7, calendar);
                                    break;
                                case 'F':
                                    h43VarA = J;
                                    break;
                                case 'G':
                                    h43VarA = a(0, calendar);
                                    break;
                                case 'H':
                                    h43VarA = K;
                                    break;
                                default:
                                    switch (cCharAt) {
                                        case 'K':
                                            h43VarA = N;
                                            break;
                                        case 'L':
                                        case 'M':
                                            if (i2 >= 3) {
                                                h43VarA = r;
                                            } else {
                                                h43VarA = a(2, calendar);
                                            }
                                            break;
                                        default:
                                            switch (cCharAt) {
                                                case 'W':
                                                    h43VarA = y;
                                                    break;
                                                case 'X':
                                                    if (i2 != 1) {
                                                        h43VarA = e43.b;
                                                    } else if (i2 != 2) {
                                                        h43VarA = e43.c;
                                                    } else {
                                                        if (i2 == 3) {
                                                            e43 e43Var = e43.b;
                                                            c6.f("invalid number of X");
                                                            throw null;
                                                        }
                                                        h43VarA = e43.d;
                                                    }
                                                    break;
                                                case 'Y':
                                                    if (i2 > 2) {
                                                        h43VarA = q;
                                                    } else {
                                                        h43VarA = t;
                                                    }
                                                    break;
                                                case 'Z':
                                                    if (i2 == 2) {
                                                        h43VarA = a(15, calendar);
                                                    } else {
                                                        h43VarA = e43.d;
                                                    }
                                                    break;
                                                default:
                                                    throw new IllegalArgumentException("Format '" + cCharAt + "' not supported");
                                            }
                                            break;
                                    }
                                    break;
                            }
                        } else {
                            h43VarA = a(15, calendar);
                        }
                        i43 i43Var2 = new i43(h43VarA, i2);
                        i5 = i6;
                        i43Var = i43Var2;
                    } while (str.charAt(i6) == cCharAt);
                    i2 = i6 - i5;
                    if (cCharAt != 'S') {
                        h43VarA = Q;
                    } else if (cCharAt != 'a') {
                        h43VarA = a(9, calendar);
                    } else if (cCharAt != 'd') {
                        h43VarA = H;
                    } else if (cCharAt != 'h') {
                        h43VarA = M;
                    } else if (cCharAt != 'k') {
                        h43VarA = L;
                    } else if (cCharAt != 'm') {
                        h43VarA = O;
                    } else if (cCharAt != 's') {
                        h43VarA = P;
                    } else if (cCharAt != 'u') {
                        h43VarA = I;
                    } else if (cCharAt != 'w') {
                        h43VarA = x;
                    } else if (cCharAt == 'y') {
                        if (i2 > 2) {
                            h43VarA = t;
                        } else {
                            h43VarA = q;
                        }
                    } else if (cCharAt != 'z') {
                        switch (cCharAt) {
                            case 'D':
                                h43VarA = G;
                                break;
                            case 'E':
                                h43VarA = a(7, calendar);
                                break;
                            case 'F':
                                h43VarA = J;
                                break;
                            case 'G':
                                h43VarA = a(0, calendar);
                                break;
                            case 'H':
                                h43VarA = K;
                                break;
                            default:
                                switch (cCharAt) {
                                    case 'K':
                                        h43VarA = N;
                                        break;
                                    case 'L':
                                    case 'M':
                                        if (i2 >= 3) {
                                            h43VarA = r;
                                        } else {
                                            h43VarA = a(2, calendar);
                                        }
                                        break;
                                    default:
                                        switch (cCharAt) {
                                            case 'W':
                                                h43VarA = y;
                                                break;
                                            case 'X':
                                                if (i2 != 1) {
                                                    h43VarA = e43.b;
                                                } else if (i2 != 2) {
                                                    h43VarA = e43.c;
                                                } else {
                                                    if (i2 == 3) {
                                                        e43 e43Var2 = e43.b;
                                                        c6.f("invalid number of X");
                                                        throw null;
                                                    }
                                                    h43VarA = e43.d;
                                                }
                                                break;
                                            case 'Y':
                                                if (i2 > 2) {
                                                    h43VarA = q;
                                                } else {
                                                    h43VarA = t;
                                                }
                                                break;
                                            case 'Z':
                                                if (i2 == 2) {
                                                    h43VarA = a(15, calendar);
                                                } else {
                                                    h43VarA = e43.d;
                                                }
                                                break;
                                            default:
                                                throw new IllegalArgumentException("Format '" + cCharAt + "' not supported");
                                        }
                                        break;
                                }
                                break;
                        }
                    } else {
                        h43VarA = a(15, calendar);
                    }
                    i43 i43Var3 = new i43(h43VarA, i2);
                    i5 = i6;
                    i43Var = i43Var3;
                } else {
                    StringBuilder sb = new StringBuilder();
                    boolean z = false;
                    while (i5 < str.length()) {
                        char cCharAt2 = str.charAt(i5);
                        if (!z && c51.a(cCharAt2)) {
                            if (!z) {
                                c6.f("Unterminated quote");
                                throw null;
                            }
                            String string = sb.toString();
                            i43Var = new i43(new d43(string), string.length());
                        } else if (cCharAt2 != '\'' || ((i5 = i5 + 1) != str.length() && str.charAt(i5) == '\'')) {
                            i5++;
                            sb.append(cCharAt2);
                        } else {
                            z = !z;
                        }
                    }
                    if (!z) {
                        c6.f("Unterminated quote");
                        throw null;
                    }
                    String string2 = sb.toString();
                    i43Var = new i43(new d43(string2), string2.length());
                }
            }
            if (i43Var == null) {
                return;
            } else {
                this.f.add(i43Var);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:20:0x002f  */
    public static void b(String str, StringBuilder sb) {
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt != '$' && cCharAt != '.' && cCharAt != '?' && cCharAt != '^' && cCharAt != '[' && cCharAt != '\\' && cCharAt != '{' && cCharAt != '|') {
                switch (cCharAt) {
                    case '(':
                    case ')':
                    case '*':
                    case '+':
                        sb.append('\\');
                        break;
                }
            } else {
                sb.append('\\');
            }
            sb.append(cCharAt);
        }
        if (sb.charAt(sb.length() - 1) == '.') {
            sb.append('?');
        }
    }

    public final h43 a(final int i, final Calendar calendar) {
        ConcurrentMap concurrentMap;
        ConcurrentMap[] concurrentMapArr = p;
        synchronized (concurrentMapArr) {
            try {
                if (concurrentMapArr[i] == null) {
                    concurrentMapArr[i] = new ConcurrentHashMap(3);
                }
                concurrentMap = concurrentMapArr[i];
            } catch (Throwable th) {
                throw th;
            }
        }
        return (h43) concurrentMap.computeIfAbsent(this.c, new Function() { // from class: v33
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Locale locale = this.a.c;
                int i2 = i;
                return i2 == 15 ? new k43(locale) : new c43(i2, calendar, locale);
            }
        });
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof l43)) {
            return false;
        }
        l43 l43Var = (l43) obj;
        return this.a.equals(l43Var.a) && this.b.equals(l43Var.b) && this.c.equals(l43Var.c);
    }

    public final int hashCode() {
        return (((this.c.hashCode() * 13) + this.b.hashCode()) * 13) + this.a.hashCode();
    }

    public final String toString() {
        return "FastDateParser[" + this.a + ", " + this.c + ", " + this.b.getID() + "]";
    }
}
