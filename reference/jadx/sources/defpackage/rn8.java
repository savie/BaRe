package defpackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class rn8 {
    public static final Pattern a = Pattern.compile("[ \t]*,[ \t]*");

    public static rb0 a(String str) {
        rb0 rb0Var;
        rb0 rb0Var2;
        int i;
        char cCharAt;
        int length;
        u40 u40Var = new u40();
        String[] strArrSplit = a.split(str);
        int i2 = 0;
        int i3 = 1;
        if (!(strArrSplit.length <= 32)) {
            c6.f("TraceState has too many elements.");
            return null;
        }
        int length2 = strArrSplit.length - 1;
        while (true) {
            ArrayList arrayList = u40Var.a;
            if (length2 < 0) {
                if (u40Var.b == 0) {
                    rb0Var2 = u40.c;
                } else {
                    if (arrayList.size() == 2) {
                        rb0Var = new rb0(new ArrayList(arrayList));
                    } else {
                        String[] strArr = new String[u40Var.b * 2];
                        for (int size = arrayList.size() - 2; size >= 0; size -= 2) {
                            String str2 = (String) arrayList.get(size);
                            String str3 = (String) arrayList.get(size + 1);
                            if (str3 != null) {
                                int i4 = i2 + 1;
                                strArr[i2] = str2;
                                i2 += 2;
                                strArr[i4] = str3;
                            }
                        }
                        rb0Var = new rb0(Arrays.asList(strArr));
                    }
                    rb0Var2 = rb0Var;
                }
                return rb0Var2.a.size() / 2 != strArrSplit.length ? u40.c : rb0Var2;
            }
            String str4 = strArrSplit[length2];
            int iIndexOf = str4.indexOf(61);
            if ((iIndexOf != -1 ? i3 : 0) == 0) {
                c6.f("Invalid TraceState list-member format.");
                return null;
            }
            String strSubstring = str4.substring(0, iIndexOf);
            String strSubstring2 = str4.substring(iIndexOf + 1);
            if (strSubstring.length() > 256 || strSubstring.isEmpty()) {
                i = i3;
            } else {
                char cCharAt2 = strSubstring.charAt(0);
                char c = 'z';
                i = i3;
                if ((cCharAt2 >= 'a' && cCharAt2 <= 'z') || (cCharAt2 >= '0' && cCharAt2 <= '9')) {
                    int i5 = i;
                    int i6 = 0;
                    while (true) {
                        if (i5 >= strSubstring.length()) {
                            if ((i6 == 0 && (cCharAt = strSubstring.charAt(0)) >= '0' && cCharAt <= '9') || strSubstring2.isEmpty() || strSubstring2.length() > 256 || strSubstring2.charAt(strSubstring2.length() - 1) == ' ') {
                                break;
                            }
                            int i7 = 0;
                            while (true) {
                                if (i7 < strSubstring2.length()) {
                                    char cCharAt3 = strSubstring2.charAt(i7);
                                    if (cCharAt3 == ',' || cCharAt3 == '=' || cCharAt3 < ' ' || cCharAt3 > '~') {
                                        break;
                                    }
                                    i7++;
                                } else {
                                    if (u40Var.b >= 32) {
                                        break;
                                    }
                                    int i8 = 0;
                                    while (true) {
                                        if (i8 >= arrayList.size()) {
                                            arrayList.add(strSubstring);
                                            arrayList.add(strSubstring2);
                                            u40Var.b++;
                                            break;
                                        }
                                        if (((String) arrayList.get(i8)).equals(strSubstring)) {
                                            int i9 = i8 + 1;
                                            String str5 = (String) arrayList.get(i9);
                                            arrayList.set(i9, strSubstring2);
                                            if (str5 != null) {
                                                break;
                                            }
                                            u40Var.b++;
                                            break;
                                        }
                                        i8 += 2;
                                    }
                                }
                            }
                        } else {
                            char cCharAt4 = strSubstring.charAt(i5);
                            if ((cCharAt4 < 'a' || cCharAt4 > c) && !((cCharAt4 >= '0' && cCharAt4 <= '9') || cCharAt4 == '_' || cCharAt4 == '-' || cCharAt4 == '@' || cCharAt4 == '*' || cCharAt4 == '/')) {
                                break;
                            }
                            if (cCharAt4 == '@') {
                                if (i6 != 0 || i5 > 240 || (length = (strSubstring.length() - i5) - 1) > 13 || length == 0) {
                                    break;
                                }
                                i6 = i;
                            }
                            i5++;
                            c = 'z';
                        }
                    }
                }
                length2--;
                i3 = i;
            }
            length2--;
            i3 = i;
        }
    }
}
