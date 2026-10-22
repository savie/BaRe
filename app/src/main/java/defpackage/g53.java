package defpackage;

import com.nimbusds.jose.crypto.PasswordBasedEncrypter;
import java.io.Serializable;
import java.text.DateFormatSymbols;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.BiConsumer;
import java.util.function.Function;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class g53 implements Serializable {
    public static final s43[] f = new s43[0];
    public static final ConcurrentHashMap k = new ConcurrentHashMap(7);
    public final String a;
    public final TimeZone b;
    public final Locale c;
    public final transient s43[] d;
    public final transient int e;

    /* JADX WARN: Code duplicated, block: B:129:0x020f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:130:0x0211  */
    /* JADX WARN: Code duplicated, block: B:131:0x0214  */
    /* JADX WARN: Code duplicated, block: B:134:0x0221  */
    /* JADX WARN: Code duplicated, block: B:153:0x02ba A[LOOP:2: B:151:0x02b6->B:153:0x02ba, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:165:0x02c4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:97:0x0167  */
    public g53(String str, TimeZone timeZone, Locale locale) {
        int length;
        String[] strArr;
        int i;
        int i2;
        s43 t43Var;
        s43 u43Var;
        s43 s43VarD;
        s43 f53Var;
        q43 q43VarD;
        s43 s43Var;
        String str2 = str;
        this.a = str2;
        this.b = timeZone;
        int i3 = k05.a;
        Locale locale2 = locale != null ? locale : Locale.getDefault();
        this.c = locale2;
        DateFormatSymbols dateFormatSymbols = new DateFormatSymbols(locale2);
        ArrayList arrayList = new ArrayList();
        String[] eras = dateFormatSymbols.getEras();
        String[] months = dateFormatSymbols.getMonths();
        String[] shortMonths = dateFormatSymbols.getShortMonths();
        String[] weekdays = dateFormatSymbols.getWeekdays();
        String[] shortWeekdays = dateFormatSymbols.getShortWeekdays();
        String[] amPmStrings = dateFormatSymbols.getAmPmStrings();
        int length2 = str2.length();
        int i4 = 1;
        int[] iArr = new int[1];
        int iC = 0;
        int i5 = 0;
        while (i5 < length2) {
            iArr[iC] = i5;
            StringBuilder sb = new StringBuilder();
            int i6 = iArr[iC];
            int i7 = i4;
            int length3 = str2.length();
            int i8 = iC;
            char cCharAt = str2.charAt(i6);
            String[] strArr2 = weekdays;
            if (c51.a(cCharAt)) {
                sb.append(cCharAt);
                while (true) {
                    int i9 = i6 + 1;
                    strArr = shortWeekdays;
                    if (i9 < length3 && str2.charAt(i9) == cCharAt) {
                        sb.append(cCharAt);
                        i6 = i9;
                        shortWeekdays = strArr;
                    }
                }
            } else {
                strArr = shortWeekdays;
                char c = '\'';
                sb.append('\'');
                int i10 = i8;
                while (i6 < length3) {
                    char cCharAt2 = str2.charAt(i6);
                    if (cCharAt2 == c) {
                        int i11 = i6 + 1;
                        i = i10;
                        if (i11 >= length3 || str2.charAt(i11) != '\'') {
                            i10 = i ^ 1;
                        } else {
                            sb.append(cCharAt2);
                            i6 = i11;
                        }
                        i6++;
                        str2 = str;
                        c = '\'';
                    } else {
                        i = i10;
                        if (i == 0 && c51.a(cCharAt2)) {
                            i6--;
                        } else {
                            sb.append(cCharAt2);
                        }
                    }
                    i10 = i;
                    i6++;
                    str2 = str;
                    c = '\'';
                }
            }
            iArr[i8] = i6;
            String string = sb.toString();
            int i12 = iArr[i8];
            int length4 = string.length();
            if (length4 == 0) {
                iC = i8;
                s43[] s43VarArr = (s43[]) arrayList.toArray(f);
                this.d = s43VarArr;
                length = s43VarArr.length;
                while (true) {
                    length--;
                    if (length >= 0) {
                        this.e = iC;
                        return;
                    }
                    iC += this.d[length].c();
                }
            } else {
                char cCharAt3 = string.charAt(i8);
                if (cCharAt3 != '\'') {
                    if (cCharAt3 != 'S') {
                        if (cCharAt3 == 'a') {
                            f53Var = new u43(9, amPmStrings);
                        } else if (cCharAt3 == 'd') {
                            s43VarD = d(5, length4);
                        } else if (cCharAt3 == 'h') {
                            f53Var = new y43(d(10, length4));
                        } else if (cCharAt3 == 'k') {
                            f53Var = new z43(d(11, length4));
                        } else if (cCharAt3 == 'm') {
                            s43VarD = d(12, length4);
                        } else if (cCharAt3 == 's') {
                            s43VarD = d(13, length4);
                        } else if (cCharAt3 == 'u') {
                            f53Var = new o43(d(7, length4));
                        } else if (cCharAt3 == 'w') {
                            s43VarD = d(3, length4);
                        } else if (cCharAt3 == 'y') {
                            if (length4 == 2) {
                                q43VarD = c53.a;
                            } else {
                                q43VarD = d(1, Math.max(length4, 4));
                            }
                            f53Var = q43VarD;
                            if (cCharAt3 == 'Y') {
                                f53Var = new f53(q43VarD);
                            }
                        } else if (cCharAt3 != 'z') {
                            switch (cCharAt3) {
                                case 'D':
                                    s43VarD = d(6, length4);
                                    break;
                                case 'E':
                                    f53Var = new u43(7, length4 < 4 ? strArr : strArr2);
                                    break;
                                case 'F':
                                    s43VarD = d(8, length4);
                                    break;
                                case 'G':
                                    u43Var = new u43(0, eras);
                                    iC = 0;
                                    i2 = 1;
                                    break;
                                case 'H':
                                    s43VarD = d(11, length4);
                                    break;
                                default:
                                    final String[] strArr3 = null;
                                    s43VarD = d53.a;
                                    s43 s43Var2 = a53.a;
                                    switch (cCharAt3) {
                                        case 'K':
                                            s43VarD = d(10, length4);
                                            break;
                                        case 'L':
                                            if (length4 >= 4) {
                                                oz0 oz0Var = new oz0(Calendar.getInstance(locale2), locale2);
                                                Map<String, Integer> displayNames = oz0Var.a.getDisplayNames(2, 32770, oz0Var.b);
                                                if (displayNames != null) {
                                                    strArr3 = new String[displayNames.size()];
                                                    displayNames.forEach(new BiConsumer() { // from class: nz0
                                                        @Override // java.util.function.BiConsumer
                                                        public final void accept(Object obj, Object obj2) {
                                                            int iIntValue = ((Integer) obj2).intValue();
                                                            strArr3[iIntValue] = (String) obj;
                                                        }
                                                    });
                                                }
                                                f53Var = new u43(2, strArr3);
                                            } else if (length4 == 3) {
                                                oz0 oz0Var2 = new oz0(Calendar.getInstance(locale2), locale2);
                                                Map<String, Integer> displayNames2 = oz0Var2.a.getDisplayNames(2, 32769, oz0Var2.b);
                                                if (displayNames2 != null) {
                                                    strArr3 = new String[displayNames2.size()];
                                                    displayNames2.forEach(new BiConsumer() { // from class: nz0
                                                        @Override // java.util.function.BiConsumer
                                                        public final void accept(Object obj, Object obj2) {
                                                            int iIntValue = ((Integer) obj2).intValue();
                                                            strArr3[iIntValue] = (String) obj;
                                                        }
                                                    });
                                                }
                                                f53Var = new u43(2, strArr3);
                                            } else if (length4 == 2) {
                                                f53Var = s43Var2;
                                            }
                                            break;
                                        case 'M':
                                            if (length4 >= 4) {
                                                f53Var = new u43(2, months);
                                            } else if (length4 == 3) {
                                                f53Var = new u43(2, shortMonths);
                                            } else if (length4 == 2) {
                                                f53Var = s43Var2;
                                            }
                                            break;
                                        default:
                                            s43VarD = p43.d;
                                            switch (cCharAt3) {
                                                case 'W':
                                                    s43VarD = d(4, length4);
                                                    break;
                                                case 'X':
                                                    if (length4 == i7) {
                                                        s43Var = p43.b;
                                                    } else if (length4 == 2) {
                                                        s43Var = p43.c;
                                                    } else if (length4 != 3) {
                                                        c6.f("invalid number of X");
                                                        throw null;
                                                    }
                                                    s43VarD = s43Var;
                                                    break;
                                                case 'Y':
                                                    if (length4 == 2) {
                                                        q43VarD = c53.a;
                                                    } else {
                                                        q43VarD = d(1, Math.max(length4, 4));
                                                    }
                                                    f53Var = q43VarD;
                                                    if (cCharAt3 == 'Y') {
                                                        f53Var = new f53(q43VarD);
                                                    }
                                                    break;
                                                case 'Z':
                                                    if (length4 == i7) {
                                                        s43VarD = x43.c;
                                                    } else if (length4 != 2) {
                                                        s43VarD = x43.b;
                                                    }
                                                    i2 = i7;
                                                    u43Var = s43VarD;
                                                    iC = 0;
                                                    break;
                                                default:
                                                    c6.f("Illegal pattern component: ".concat(string));
                                                    throw null;
                                            }
                                            break;
                                    }
                                    break;
                            }
                        } else {
                            f53Var = new w43(length4 >= 4 ? 1 : 0, locale2, this.b);
                        }
                        i2 = 1;
                        u43Var = f53Var;
                        iC = 0;
                    } else {
                        s43VarD = d(14, length4);
                    }
                    f53Var = s43VarD;
                    i2 = 1;
                    u43Var = f53Var;
                    iC = 0;
                } else {
                    i2 = i7;
                    String strSubstring = string.substring(i2);
                    if (strSubstring.length() == i2) {
                        iC = 0;
                        t43Var = new n43(strSubstring.charAt(0));
                    } else {
                        iC = 0;
                        t43Var = new t43(strSubstring);
                    }
                    u43Var = t43Var;
                }
                arrayList.add(u43Var);
                i5 = i12 + 1;
                str2 = str;
                i4 = i2;
                weekdays = strArr2;
                shortWeekdays = strArr;
            }
        }
        s43[] s43VarArr2 = (s43[]) arrayList.toArray(f);
        this.d = s43VarArr2;
        length = s43VarArr2.length;
        while (true) {
            length--;
            if (length >= 0) {
                this.e = iC;
                return;
            }
            iC += this.d[length].c();
        }
    }

    public static void a(int i, StringBuilder sb) {
        sb.append((char) ((i / 10) + 48));
        sb.append((char) ((i % 10) + 48));
    }

    public static void b(StringBuilder sb, int i, int i2) {
        int i3;
        if (i < 10000) {
            if (i >= 1000) {
                i3 = 4;
            } else if (i < 100) {
                i3 = i < 10 ? 1 : 2;
            } else {
                i3 = 3;
            }
            for (int i4 = i2 - i3; i4 > 0; i4--) {
                sb.append('0');
            }
            if (i3 != 1) {
                if (i3 != 2) {
                    if (i3 != 3) {
                        if (i3 != 4) {
                            return;
                        }
                        sb.append((char) ((i / PasswordBasedEncrypter.MIN_RECOMMENDED_ITERATION_COUNT) + 48));
                        i %= PasswordBasedEncrypter.MIN_RECOMMENDED_ITERATION_COUNT;
                    }
                    if (i >= 100) {
                        sb.append((char) ((i / 100) + 48));
                        i %= 100;
                    } else {
                        sb.append('0');
                    }
                }
                if (i >= 10) {
                    sb.append((char) ((i / 10) + 48));
                    i %= 10;
                } else {
                    sb.append('0');
                }
            }
            sb.append((char) (i + 48));
            return;
        }
        char[] cArr = new char[10];
        int i5 = 0;
        while (i != 0) {
            cArr[i5] = (char) ((i % 10) + 48);
            i /= 10;
            i5++;
        }
        while (i5 < i2) {
            sb.append('0');
            i2--;
        }
        while (true) {
            i5--;
            if (i5 < 0) {
                return;
            } else {
                sb.append(cArr[i5]);
            }
        }
    }

    public static String c(final TimeZone timeZone, final boolean z, final int i, final Locale locale) {
        return (String) k.computeIfAbsent(new v43(timeZone, z, i, locale), new Function() { // from class: m43
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return timeZone.getDisplayName(z, i, locale);
            }
        });
    }

    public static q43 d(int i, int i2) {
        if (i2 != 1) {
            return i2 != 2 ? new r43(i, i2) : new b53(i);
        }
        return new e53(i);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof g53)) {
            return false;
        }
        g53 g53Var = (g53) obj;
        return this.a.equals(g53Var.a) && this.b.equals(g53Var.b) && this.c.equals(g53Var.c);
    }

    public final int hashCode() {
        return (((this.c.hashCode() * 13) + this.b.hashCode()) * 13) + this.a.hashCode();
    }

    public final String toString() {
        return "FastDatePrinter[" + this.a + "," + this.c + "," + this.b.getID() + "]";
    }
}
