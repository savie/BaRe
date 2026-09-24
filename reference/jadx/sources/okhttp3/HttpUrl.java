package okhttp3;

import com.nimbusds.jose.jwk.gen.OctetSequenceKeyGenerator;
import defpackage.c6;
import defpackage.dj7;
import defpackage.eq3;
import defpackage.f6;
import defpackage.fl1;
import defpackage.fz5;
import defpackage.hl1;
import defpackage.l0;
import defpackage.l73;
import defpackage.ld4;
import defpackage.nq7;
import defpackage.pe4;
import defpackage.uq7;
import defpackage.y5;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import okhttp3.internal._HostnamesCommonKt;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class HttpUrl {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final int e;
    public final List f;
    public final String g;
    public final String h;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Builder {
        public String a;
        public String d;
        public ArrayList g;
        public String h;
        public String b = "";
        public String c = "";
        public int e = -1;
        public final ArrayList f = fl1.C0("");

        public static ArrayList m(String str) {
            ArrayList arrayList = new ArrayList();
            int i = 0;
            while (i <= str.length()) {
                int iG0 = nq7.g0('&', i, 4, str);
                if (iG0 == -1) {
                    iG0 = str.length();
                }
                int iG1 = nq7.g0('=', i, 4, str);
                if (iG1 == -1 || iG1 > iG0) {
                    arrayList.add(str.substring(i, iG0));
                    arrayList.add(null);
                } else {
                    arrayList.add(str.substring(i, iG1));
                    arrayList.add(str.substring(iG1 + 1, iG0));
                }
                i = iG0 + 1;
            }
            return arrayList;
        }

        public final void a(String str) {
            int i = 0;
            while (true) {
                int iD = _UtilCommonKt.d(str, i, str.length(), "/\\");
                Builder builder = this;
                String str2 = str;
                builder.j(str2, i, iD, iD < str.length(), true);
                i = iD + 1;
                if (i > str2.length()) {
                    return;
                }
                this = builder;
                str = str2;
            }
        }

        public final void b(String str, String str2) {
            if (this.g == null) {
                this.g = new ArrayList();
            }
            ArrayList arrayList = this.g;
            arrayList.getClass();
            arrayList.add(_UrlKt.a(0, 0, 83, str, " \"'<>#&=", true));
            ArrayList arrayList2 = this.g;
            arrayList2.getClass();
            arrayList2.add(str2 != null ? _UrlKt.a(0, 0, 83, str2, " \"'<>#&=", true) : null);
        }

        public final void c(String str) {
            j(str, 0, str.length(), false, false);
        }

        public final void d(String str, String str2) {
            if (this.g == null) {
                this.g = new ArrayList();
            }
            ArrayList arrayList = this.g;
            arrayList.getClass();
            arrayList.add(_UrlKt.a(0, 0, 91, str, " !\"#$&'(),/:;<=>?@[]\\^`{|}~", false));
            ArrayList arrayList2 = this.g;
            arrayList2.getClass();
            arrayList2.add(str2 != null ? _UrlKt.a(0, 0, 91, str2, " !\"#$&'(),/:;<=>?@[]\\^`{|}~", false) : null);
        }

        public final HttpUrl e() {
            ArrayList arrayList;
            String str = this.a;
            if (str == null) {
                l0.e("scheme == null");
                return null;
            }
            String strD = _UrlKt.d(this.b, 0, 0, 7);
            String strD2 = _UrlKt.d(this.c, 0, 0, 7);
            String str2 = this.d;
            if (str2 == null) {
                l0.e("host == null");
                return null;
            }
            int iA = this.e;
            if (iA == -1) {
                String str3 = this.a;
                str3.getClass();
                iA = Companion.a(str3);
            }
            ArrayList arrayList2 = this.f;
            ArrayList arrayList3 = new ArrayList(hl1.G0(arrayList2, 10));
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                arrayList3.add(_UrlKt.d((String) it.next(), 0, 0, 7));
            }
            ArrayList<String> arrayList4 = this.g;
            if (arrayList4 != null) {
                arrayList = new ArrayList(hl1.G0(arrayList4, 10));
                for (String str4 : arrayList4) {
                    arrayList.add(str4 != null ? _UrlKt.d(str4, 0, 0, 3) : null);
                }
            } else {
                arrayList = null;
            }
            String str5 = this.h;
            return new HttpUrl(str, strD, strD2, str2, iA, arrayList3, arrayList, str5 != null ? _UrlKt.d(str5, 0, 0, 7) : null, toString());
        }

        public final void f(String str) {
            if (uq7.V(str, "/", false)) {
                k(0, str.length(), str);
            } else {
                f6.g("unexpected encodedPath: ".concat(str));
            }
        }

        public final void g(String str) {
            str.getClass();
            String strB = _HostnamesCommonKt.b(_UrlKt.d(str, 0, 0, 7));
            if (strB != null) {
                this.d = strB;
            } else {
                c6.f("unexpected host: ".concat(str));
            }
        }

        /* JADX WARN: Code duplicated, block: B:4:0x0026  */
        public final void h(HttpUrl httpUrl, String str) {
            int i;
            char c;
            char c2;
            int i2;
            int i3;
            char c3;
            char cCharAt;
            String str2 = str;
            str2.getClass();
            byte[] bArr = _UtilCommonKt.a;
            int iH = _UtilCommonKt.h(0, str2.length(), str2);
            int i4 = _UtilCommonKt.i(iH, str2.length(), str2);
            if (i4 - iH >= 2) {
                char cCharAt2 = str2.charAt(iH);
                if ((pe4.f(cCharAt2, 97) >= 0 && pe4.f(cCharAt2, 122) <= 0) || (pe4.f(cCharAt2, 65) >= 0 && pe4.f(cCharAt2, 90) <= 0)) {
                    i = iH + 1;
                    while (true) {
                        if (i < i4) {
                            char cCharAt3 = str2.charAt(i);
                            if (('a' > cCharAt3 || cCharAt3 >= '{') && (('A' > cCharAt3 || cCharAt3 >= '[') && !(('0' <= cCharAt3 && cCharAt3 < ':') || cCharAt3 == '+' || cCharAt3 == '-' || cCharAt3 == '.'))) {
                                if (cCharAt3 == ':') {
                                    break;
                                } else {
                                    break;
                                }
                            }
                            i++;
                        }
                        i = -1;
                        break;
                    }
                } else {
                    i = -1;
                    break;
                }
            } else {
                i = -1;
                break;
            }
            if (i != -1) {
                if (uq7.U(iH, str2, "https:", true)) {
                    this.a = "https";
                    iH += 6;
                } else {
                    if (!uq7.U(iH, str2, "http:", true)) {
                        throw new IllegalArgumentException("Expected URL scheme 'http' or 'https' but was '" + str2.substring(0, i) + '\'');
                    }
                    this.a = "http";
                    iH += 5;
                }
            } else {
                if (httpUrl == null) {
                    c6.f("Expected URL scheme 'http' or 'https' but no scheme was found for ".concat(str2.length() > 6 ? nq7.G0(6, str2).concat("...") : str2));
                    return;
                }
                this.a = httpUrl.a;
            }
            int i5 = iH;
            int i6 = 0;
            while (true) {
                c = '\\';
                c2 = '/';
                if (i5 >= i4 || !((cCharAt = str2.charAt(i5)) == '/' || cCharAt == '\\')) {
                    break;
                }
                i6++;
                i5++;
            }
            char c4 = '#';
            if (i6 >= 2 || httpUrl == null || !pe4.d(httpUrl.a, this.a)) {
                int i7 = iH + i6;
                boolean z = false;
                boolean z2 = false;
                while (true) {
                    iH = _UtilCommonKt.d(str2, i7, i4, "@/\\?#");
                    byte bCharAt = iH != i4 ? str2.charAt(iH) : (byte) -1;
                    if (bCharAt == -1 || bCharAt == c4 || bCharAt == c2 || bCharAt == c || bCharAt == 63) {
                        break;
                    }
                    if (bCharAt == 64) {
                        if (z2) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(this.c);
                            sb.append("%40");
                            str2 = str;
                            sb.append(_UrlKt.a(i7, iH, OctetSequenceKeyGenerator.MIN_KEY_SIZE_BITS, str2, " \"':;<=>@[]^`{}|/\\?#", true));
                            this.c = sb.toString();
                        } else {
                            int iC = _UtilCommonKt.c(str2, ':', i7, iH);
                            String strA = _UrlKt.a(i7, iC, OctetSequenceKeyGenerator.MIN_KEY_SIZE_BITS, str2, " \"':;<=>@[]^`{}|/\\?#", true);
                            if (z) {
                                strA = eq3.n(new StringBuilder(), this.b, "%40", strA);
                            }
                            this.b = strA;
                            if (iC != iH) {
                                int i8 = iC + 1;
                                iH = iH;
                                this.c = _UrlKt.a(i8, iH, OctetSequenceKeyGenerator.MIN_KEY_SIZE_BITS, str, " \"':;<=>@[]^`{}|/\\?#", true);
                                z2 = true;
                            } else {
                                iH = iH;
                            }
                            str2 = str;
                            z = true;
                        }
                        i7 = iH + 1;
                        c4 = '#';
                        c = '\\';
                        c2 = '/';
                    }
                }
                int i9 = i7;
                int i10 = i9;
                while (true) {
                    if (i10 < iH) {
                        char cCharAt4 = str2.charAt(i10);
                        if (cCharAt4 == ':') {
                            i2 = i10;
                            break;
                        }
                        if (cCharAt4 == '[') {
                            do {
                                i10++;
                                if (i10 >= iH) {
                                    break;
                                }
                            } while (str2.charAt(i10) != ']');
                        }
                        i10++;
                    } else {
                        i2 = iH;
                        break;
                    }
                }
                int i11 = i2 + 1;
                if (i11 < iH) {
                    this.d = _HostnamesCommonKt.b(_UrlKt.d(str2, i9, i2, 4));
                    try {
                        i3 = Integer.parseInt(_UrlKt.a(i11, iH, 120, str2, "", false));
                        if (1 > i3 || i3 >= 65536) {
                            i3 = -1;
                        }
                    } catch (NumberFormatException unused) {
                    }
                    this.e = i3;
                    if (i3 == -1) {
                        throw new IllegalArgumentException(("Invalid URL port: \"" + str2.substring(i11, iH) + '\"').toString());
                    }
                } else {
                    this.d = _HostnamesCommonKt.b(_UrlKt.d(str2, i9, i2, 4));
                    String str3 = this.a;
                    str3.getClass();
                    this.e = Companion.a(str3);
                }
                if (this.d == null) {
                    throw new IllegalArgumentException(("Invalid URL host: \"" + str2.substring(i9, i2) + '\"').toString());
                }
            } else {
                this.b = httpUrl.e();
                this.c = httpUrl.a();
                this.d = httpUrl.d;
                this.e = httpUrl.e;
                ArrayList arrayList = this.f;
                arrayList.clear();
                arrayList.addAll(httpUrl.c());
                if (iH == i4 || str2.charAt(iH) == '#') {
                    String strD = httpUrl.d();
                    this.g = strD != null ? m(_UrlKt.a(0, 0, 83, strD, " \"'<>#", true)) : null;
                }
            }
            int iD = _UtilCommonKt.d(str2, iH, i4, "?#");
            k(iH, iD, str2);
            if (iD >= i4 || str2.charAt(iD) != '?') {
                c3 = '#';
            } else {
                c3 = '#';
                int iC2 = _UtilCommonKt.c(str2, '#', iD, i4);
                this.g = m(_UrlKt.a(iD + 1, iC2, 80, str2, " \"'<>#", true));
                iD = iC2;
            }
            if (iD >= i4 || str2.charAt(iD) != c3) {
                return;
            }
            this.h = _UrlKt.a(iD + 1, i4, 48, str2, "", true);
        }

        public final void i(int i) {
            if (1 > i || i >= 65536) {
                f6.g(fz5.j(i, "unexpected port: "));
            } else {
                this.e = i;
            }
        }

        public final void j(String str, int i, int i2, boolean z, boolean z2) {
            String strA = _UrlKt.a(i, i2, OctetSequenceKeyGenerator.MIN_KEY_SIZE_BITS, str, " \"<>^`{}|/\\?#", z2);
            if (strA.equals(".") || strA.equalsIgnoreCase("%2e")) {
                return;
            }
            boolean zEquals = strA.equals("..");
            ArrayList arrayList = this.f;
            if (zEquals || strA.equalsIgnoreCase("%2e.") || strA.equalsIgnoreCase(".%2e") || strA.equalsIgnoreCase("%2e%2e")) {
                if (((String) arrayList.remove(arrayList.size() - 1)).length() != 0 || arrayList.isEmpty()) {
                    arrayList.add("");
                    return;
                } else {
                    arrayList.set(arrayList.size() - 1, "");
                    return;
                }
            }
            if (((CharSequence) dj7.e(arrayList, 1)).length() == 0) {
                arrayList.set(arrayList.size() - 1, strA);
            } else {
                arrayList.add(strA);
            }
            if (z) {
                arrayList.add("");
            }
        }

        public final void k(int i, int i2, String str) {
            if (i == i2) {
                return;
            }
            char cCharAt = str.charAt(i);
            ArrayList arrayList = this.f;
            if (cCharAt == '/' || cCharAt == '\\') {
                arrayList.clear();
                arrayList.add("");
                i++;
            } else {
                arrayList.set(arrayList.size() - 1, "");
            }
            int i3 = i;
            while (i3 < i2) {
                int iD = _UtilCommonKt.d(str, i3, i2, "/\\");
                boolean z = iD < i2;
                this = this;
                str = str;
                this.j(str, i3, iD, z, true);
                i3 = z ? iD + 1 : iD;
            }
        }

        public final void l(String str) {
            if (str.equalsIgnoreCase("http")) {
                this.a = "http";
            } else if (str.equalsIgnoreCase("https")) {
                this.a = "https";
            } else {
                c6.f("unexpected scheme: ".concat(str));
            }
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            String str = this.a;
            if (str != null) {
                sb.append(str);
                sb.append("://");
            } else {
                sb.append("//");
            }
            if (this.b.length() > 0 || this.c.length() > 0) {
                sb.append(this.b);
                if (this.c.length() > 0) {
                    sb.append(':');
                    sb.append(this.c);
                }
                sb.append('@');
            }
            String str2 = this.d;
            if (str2 != null) {
                if (nq7.a0(str2, ':')) {
                    sb.append('[');
                    sb.append(this.d);
                    sb.append(']');
                } else {
                    sb.append(this.d);
                }
            }
            int iA = this.e;
            if (iA != -1 || this.a != null) {
                if (iA == -1) {
                    String str3 = this.a;
                    str3.getClass();
                    iA = Companion.a(str3);
                }
                String str4 = this.a;
                if (str4 == null || iA != Companion.a(str4)) {
                    sb.append(':');
                    sb.append(iA);
                }
            }
            ArrayList arrayList = this.f;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                sb.append('/');
                sb.append((String) arrayList.get(i));
            }
            if (this.g != null) {
                sb.append('?');
                ArrayList arrayList2 = this.g;
                arrayList2.getClass();
                ld4 ld4VarD = l73.D(l73.F(0, arrayList2.size()), 2);
                int i2 = ld4VarD.a;
                int i3 = ld4VarD.b;
                int i4 = ld4VarD.c;
                if ((i4 > 0 && i2 <= i3) || (i4 < 0 && i3 <= i2)) {
                    while (true) {
                        String str5 = (String) arrayList2.get(i2);
                        String str6 = (String) arrayList2.get(i2 + 1);
                        if (i2 > 0) {
                            sb.append('&');
                        }
                        sb.append(str5);
                        if (str6 != null) {
                            sb.append('=');
                            sb.append(str6);
                        }
                        if (i2 == i3) {
                            break;
                        }
                        i2 += i4;
                    }
                }
            }
            if (this.h != null) {
                sb.append('#');
                sb.append(this.h);
            }
            return sb.toString();
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Companion {
        public static int a(String str) {
            str.getClass();
            if (str.equals("http")) {
                return 80;
            }
            return str.equals("https") ? 443 : -1;
        }

        public static HttpUrl b(String str) {
            str.getClass();
            Builder builder = new Builder();
            builder.h(null, str);
            return builder.e();
        }
    }

    public HttpUrl(String str, String str2, String str3, String str4, int i, ArrayList arrayList, ArrayList arrayList2, String str5, String str6) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = i;
        this.f = arrayList2;
        this.g = str5;
        this.h = str6;
    }

    public final String a() {
        if (this.c.length() == 0) {
            return "";
        }
        int length = this.a.length() + 3;
        String str = this.h;
        return str.substring(nq7.g0(':', length, 4, str) + 1, nq7.g0('@', 0, 6, str));
    }

    public final String b() {
        int length = this.a.length() + 3;
        String str = this.h;
        int iG0 = nq7.g0('/', length, 4, str);
        return str.substring(iG0, _UtilCommonKt.d(str, iG0, str.length(), "?#"));
    }

    public final ArrayList c() {
        int length = this.a.length() + 3;
        String str = this.h;
        int iG0 = nq7.g0('/', length, 4, str);
        int iD = _UtilCommonKt.d(str, iG0, str.length(), "?#");
        ArrayList arrayList = new ArrayList();
        while (iG0 < iD) {
            int i = iG0 + 1;
            int iC = _UtilCommonKt.c(str, '/', i, iD);
            arrayList.add(str.substring(i, iC));
            iG0 = iC;
        }
        return arrayList;
    }

    public final String d() {
        if (this.f == null) {
            return null;
        }
        String str = this.h;
        int iG0 = nq7.g0('?', 0, 6, str) + 1;
        return str.substring(iG0, _UtilCommonKt.c(str, '#', iG0, str.length()));
    }

    public final String e() {
        if (this.b.length() == 0) {
            return "";
        }
        int length = this.a.length() + 3;
        String str = this.h;
        return str.substring(length, _UtilCommonKt.d(str, length, str.length(), ":@"));
    }

    public final boolean equals(Object obj) {
        return (obj instanceof HttpUrl) && ((HttpUrl) obj).h.equals(this.h);
    }

    public final boolean f() {
        return pe4.d(this.a, "https");
    }

    public final Builder g() {
        Builder builder = new Builder();
        String str = this.a;
        builder.a = str;
        builder.b = e();
        builder.c = a();
        builder.d = this.d;
        int iA = Companion.a(str);
        int i = this.e;
        if (i == iA) {
            i = -1;
        }
        builder.e = i;
        ArrayList arrayList = builder.f;
        arrayList.clear();
        arrayList.addAll(c());
        String strD = d();
        String strSubstring = null;
        builder.g = strD != null ? Builder.m(_UrlKt.a(0, 0, 83, strD, " \"'<>#", true)) : null;
        if (this.g != null) {
            String str2 = this.h;
            strSubstring = str2.substring(nq7.g0('#', 0, 6, str2) + 1);
        }
        builder.h = strSubstring;
        return builder;
    }

    public final String h() {
        Builder builder;
        try {
            builder = new Builder();
            builder.h(this, "/...");
        } catch (IllegalArgumentException unused) {
            builder = null;
        }
        builder.getClass();
        builder.b = _UrlKt.a(0, 0, 123, "", " \"':;<=>@[]^`{}|/\\?#", false);
        builder.c = _UrlKt.a(0, 0, 123, "", " \"':;<=>@[]^`{}|/\\?#", false);
        return builder.e().h;
    }

    public final int hashCode() {
        return this.h.hashCode();
    }

    public final URI i() {
        String strReplaceAll;
        Builder builderG = g();
        ArrayList arrayList = builderG.f;
        String str = builderG.d;
        if (str != null) {
            Pattern patternCompile = Pattern.compile("[\"<>^`{|}]");
            patternCompile.getClass();
            strReplaceAll = patternCompile.matcher(str).replaceAll("");
            strReplaceAll.getClass();
        } else {
            strReplaceAll = null;
        }
        builderG.d = strReplaceAll;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            arrayList.set(i, _UrlKt.a(0, 0, 99, (String) arrayList.get(i), "[]", true));
        }
        ArrayList arrayList2 = builderG.g;
        if (arrayList2 != null) {
            int size2 = arrayList2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                String str2 = (String) arrayList2.get(i2);
                arrayList2.set(i2, str2 != null ? _UrlKt.a(0, 0, 67, str2, "\\^`{|}", true) : null);
            }
        }
        String str3 = builderG.h;
        builderG.h = str3 != null ? _UrlKt.a(0, 0, 35, str3, " \"#<>\\^`{|}", true) : null;
        String string = builderG.toString();
        try {
            return new URI(string);
        } catch (URISyntaxException e) {
            try {
                Pattern patternCompile2 = Pattern.compile("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]");
                patternCompile2.getClass();
                String strReplaceAll2 = patternCompile2.matcher(string).replaceAll("");
                strReplaceAll2.getClass();
                URI uriCreate = URI.create(strReplaceAll2);
                uriCreate.getClass();
                return uriCreate;
            } catch (Exception unused) {
                y5.k(e);
                return null;
            }
        }
    }

    public final String toString() {
        return this.h;
    }
}
