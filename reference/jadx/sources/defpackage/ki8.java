package defpackage;

import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Array;
import java.net.URL;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Enumeration;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.atomic.AtomicReference;
import java.util.jar.Manifest;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.HttpUrl;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ki8 {
    public static final zy5 a = ig8.a;
    public static final Pattern b = Pattern.compile("^((?!-)(?!_)[a-z_\\d-]{1,63}(?<!-)(?<!_)\\.)*((?!_)(?!-)[a-z_\\d-]{1,63}(?<!-)(?<!_))$", 2);
    public static final Pattern c = Pattern.compile(".*\\.amazonaws\\.com(|\\.cn)$", 2);
    public static final Pattern d = Pattern.compile("^(((bucket\\.|accesspoint\\.)vpce(-(?!_)[a-z_\\d]+(?<!-)(?<!_))+\\.s3\\.)|((?!s3)(?!-)(?!_)[a-z_\\d-]{1,63}(?<!-)(?<!_)\\.)s3-control(-(?!_)[a-z_\\d]+(?<!-)(?<!_))*\\.|(s3(-(?!_)[a-z_\\d]+(?<!-)(?<!_))*\\.))((?!s3)(?!-)(?!_)[a-z_\\d-]{1,63}(?<!-)(?<!_)\\.)*amazonaws\\.com(|\\.cn)$", 2);
    public static final Pattern e = Pattern.compile("^(?!-)(?!_)[a-z_\\d-]{1,63}(?<!-)(?<!_)\\.(?!-)(?!_)[a-z_\\d-]{1,63}(?<!-)(?<!_)\\.elb\\.amazonaws\\.com$", 2);
    public static final Pattern f = Pattern.compile("^(((bucket\\.|accesspoint\\.)vpce(-(?!_)[a-z_\\d]+(?<!-)(?<!_))+\\.s3\\.)|((?!s3)(?!-)(?!_)[a-z_\\d-]{1,63}(?<!-)(?<!_)\\.)s3-control(-(?!_)[a-z_\\d]+(?<!-)(?<!_))*\\.|(s3(-(?!_)[a-z_\\d]+(?<!-)(?<!_))*\\.))", 2);
    public static final Pattern g = Pattern.compile("^((?!_)(?!-)[a-z_\\d-]{1,63}(?<!-)(?<!_))$", 2);
    public static final byte[] h = new byte[0];

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class a {
        public static final a b = new a();
        public final c a = new c("^(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})$");

        private a() {
        }

        public final boolean a(String str) {
            c cVar = this.a;
            String[] strArr = null;
            if (str != null) {
                int i = 0;
                while (true) {
                    Pattern[] patternArr = cVar.a;
                    if (i >= patternArr.length) {
                        break;
                    }
                    Matcher matcher = patternArr[i].matcher(str);
                    if (matcher.matches()) {
                        int iGroupCount = matcher.groupCount();
                        strArr = new String[iGroupCount];
                        int i2 = 0;
                        while (i2 < iGroupCount) {
                            int i3 = i2 + 1;
                            strArr[i2] = matcher.group(i3);
                            i2 = i3;
                        }
                        break;
                    }
                    i++;
                }
            } else {
                cVar.getClass();
            }
            if (strArr == null) {
                return false;
            }
            for (String str2 : strArr) {
                if (str2 != null && str2.length() != 0) {
                    try {
                        if (Integer.parseInt(str2) > 255) {
                            return false;
                        }
                        if (str2.length() > 1 && str2.startsWith("0")) {
                            return false;
                        }
                    } catch (NumberFormatException unused) {
                    }
                }
                return false;
            }
            return true;
        }

        public final boolean b(String str) {
            boolean zContains = str.contains("::");
            if (zContains && str.indexOf("::") != str.lastIndexOf("::")) {
                return false;
            }
            if ((str.startsWith(":") && !str.startsWith("::")) || (str.endsWith(":") && !str.endsWith("::"))) {
                return false;
            }
            String[] strArrSplit = str.split(":");
            if (zContains) {
                ArrayList arrayList = new ArrayList(Arrays.asList(strArrSplit));
                if (str.endsWith("::")) {
                    arrayList.add("");
                } else if (str.startsWith("::") && !arrayList.isEmpty()) {
                    arrayList.remove(0);
                }
                strArrSplit = (String[]) arrayList.toArray(new String[arrayList.size()]);
            }
            if (strArrSplit.length > 8) {
                return false;
            }
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < strArrSplit.length; i3++) {
                String str2 = strArrSplit[i3];
                if (str2.length() == 0) {
                    i2++;
                    if (i2 > 1) {
                        return false;
                    }
                } else {
                    if (str2.contains(".")) {
                        if (!str.endsWith(str2) || i3 > strArrSplit.length - 1 || i3 > 6 || !a(str2)) {
                            return false;
                        }
                        i += 2;
                        i2 = 0;
                    } else {
                        if (str2.length() > 4) {
                            return false;
                        }
                        try {
                            int iIntValue = Integer.valueOf(str2, 16).intValue();
                            if (iIntValue < 0 || iIntValue > 65535) {
                                return false;
                            }
                            i2 = 0;
                        } catch (NumberFormatException unused) {
                        }
                    }
                }
                i++;
            }
            return i >= 8 || zContains;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public enum b {
        INSTANCE;

        public static final Logger c = Logger.getLogger(b.class.getName());
        public final AtomicReference a = new AtomicReference(null);

        b() {
        }
    }

    /* JADX WARN: Code duplicated, block: B:160:0x01a5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:59:0x0181  */
    /* JADX WARN: Code duplicated, block: B:60:0x0184  */
    /* JADX WARN: Code duplicated, block: B:63:0x0189  */
    /* JADX WARN: Code duplicated, block: B:65:0x0194  */
    /* JADX WARN: Code duplicated, block: B:67:0x019b  */
    /* JADX WARN: Code duplicated, block: B:69:0x019f  */
    /* JADX WARN: Code duplicated, block: B:74:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:77:0x01b2  */
    /* JADX WARN: Code duplicated, block: B:81:0x01bd  */
    public static String a(String str) {
        int codePoint;
        String str2;
        int i;
        char[] cArr;
        int i2;
        int i3;
        char cCharAt;
        int i4;
        int i5;
        int length;
        int i6;
        char[] cArr2;
        String str3 = str;
        if (str3 == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        zy5 zy5Var = a;
        boolean[] zArr = zy5Var.b;
        int length2 = str3.length();
        int i7 = 0;
        int i8 = 0;
        while (i8 < length2) {
            char cCharAt2 = str3.charAt(i8);
            if (cCharAt2 >= zArr.length || !zArr[cCharAt2]) {
                int length3 = str3.length();
                char[] cArr3 = (char[]) z16.a.get();
                Objects.requireNonNull(cArr3);
                int i9 = 0;
                int length4 = 0;
                while (i8 < length3) {
                    if (i8 >= length3) {
                        a6.d("Index exceeds specified range");
                        return null;
                    }
                    int i10 = i8 + 1;
                    char cCharAt3 = str3.charAt(i8);
                    if (cCharAt3 >= 55296 && cCharAt3 <= 57343) {
                        if (cCharAt3 > 56319) {
                            codePoint = cCharAt3;
                            codePoint = cCharAt3;
                            z5.e("Unexpected low surrogate character '", cCharAt3, i8, str3);
                            return null;
                        }
                        if (i10 == length3) {
                            codePoint = -cCharAt3;
                        } else {
                            char cCharAt4 = str3.charAt(i10);
                            if (!Character.isLowSurrogate(cCharAt4)) {
                                z5.e("Expected low surrogate but got char '", cCharAt4, i10, str3);
                                return null;
                            }
                            codePoint = Character.toCodePoint(cCharAt3, cCharAt4);
                        }
                    }
                    if (codePoint < 0) {
                        c6.f("Trailing high surrogate at end of input");
                        return null;
                    }
                    if (codePoint < zArr.length && zArr[codePoint]) {
                        cArr = null;
                        str2 = null;
                    } else if (codePoint == 32 && zy5Var.a) {
                        cArr = zy5.c;
                        str2 = null;
                    } else {
                        char[] cArr4 = zy5.d;
                        str2 = null;
                        if (codePoint <= 127) {
                            cArr = new char[3];
                            cArr[i7] = '%';
                            cArr[2] = cArr4[codePoint & 15];
                            cArr[1] = cArr4[codePoint >>> 4];
                        } else {
                            i = 1;
                            if (codePoint <= 2047) {
                                cArr = new char[6];
                                cArr[i7] = '%';
                                cArr[3] = '%';
                                cArr[5] = cArr4[codePoint & 15];
                                cArr[4] = cArr4[((codePoint >>> 4) & 3) | 8];
                                cArr[2] = cArr4[(codePoint >>> 6) & 15];
                                cArr[1] = cArr4[12 | (codePoint >>> 10)];
                            } else if (codePoint <= 65535) {
                                cArr = new char[9];
                                cArr[i7] = '%';
                                cArr[1] = 'E';
                                cArr[3] = '%';
                                cArr[6] = '%';
                                cArr[8] = cArr4[codePoint & 15];
                                cArr[7] = cArr4[((codePoint >>> 4) & 3) | 8];
                                cArr[5] = cArr4[(codePoint >>> 6) & 15];
                                cArr[4] = cArr4[((codePoint >>> 10) & 3) | 8];
                                cArr[2] = cArr4[codePoint >>> 12];
                            } else {
                                if (codePoint > 1114111) {
                                    c6.f(fz5.j(codePoint, "Invalid unicode character value "));
                                    return null;
                                }
                                cArr = new char[12];
                                cArr[i7] = '%';
                                cArr[1] = 'F';
                                cArr[3] = '%';
                                cArr[6] = '%';
                                cArr[9] = '%';
                                cArr[11] = cArr4[codePoint & 15];
                                cArr[10] = cArr4[((codePoint >>> 4) & 3) | 8];
                                cArr[8] = cArr4[(codePoint >>> 6) & 15];
                                cArr[7] = cArr4[((codePoint >>> 10) & 3) | 8];
                                cArr[5] = cArr4[(codePoint >>> 12) & 15];
                                cArr[4] = cArr4[((codePoint >>> 16) & 3) | 8];
                                cArr[2] = cArr4[(codePoint >>> 18) & 7];
                            }
                        }
                        if (Character.isSupplementaryCodePoint(codePoint)) {
                            i2 = 2;
                        } else {
                            i2 = i;
                        }
                        i3 = i2 + i8;
                        if (cArr != null) {
                            i4 = i8 - i9;
                            i5 = length4 + i4;
                            length = cArr.length + i5;
                            if (cArr3.length < length) {
                                i6 = (length3 - i8) + length + 32;
                                if (i6 >= 0) {
                                    e6.e("Cannot increase internal buffer any further");
                                    return str2;
                                }
                                cArr2 = new char[i6];
                                if (length4 > 0) {
                                    System.arraycopy(cArr3, 0, cArr2, 0, length4);
                                }
                                cArr3 = cArr2;
                            }
                            if (i4 > 0) {
                                str3.getChars(i9, i8, cArr3, length4);
                                length4 = i5;
                            }
                            if (cArr.length > 0) {
                                System.arraycopy(cArr, 0, cArr3, length4, cArr.length);
                                length4 += cArr.length;
                            }
                            i9 = i3;
                        }
                        i8 = i3;
                        while (i8 < length3) {
                            cCharAt = str3.charAt(i8);
                            if (cCharAt >= zArr.length || !zArr[cCharAt]) {
                                break;
                            }
                            i8++;
                        }
                        i7 = 0;
                    }
                    i = 1;
                    if (Character.isSupplementaryCodePoint(codePoint)) {
                        i2 = 2;
                    } else {
                        i2 = i;
                    }
                    i3 = i2 + i8;
                    if (cArr != null) {
                        i4 = i8 - i9;
                        i5 = length4 + i4;
                        length = cArr.length + i5;
                        if (cArr3.length < length) {
                            i6 = (length3 - i8) + length + 32;
                            if (i6 >= 0) {
                                e6.e("Cannot increase internal buffer any further");
                                return str2;
                            }
                            cArr2 = new char[i6];
                            if (length4 > 0) {
                                System.arraycopy(cArr3, 0, cArr2, 0, length4);
                            }
                            cArr3 = cArr2;
                        }
                        if (i4 > 0) {
                            str3.getChars(i9, i8, cArr3, length4);
                            length4 = i5;
                        }
                        if (cArr.length > 0) {
                            System.arraycopy(cArr, 0, cArr3, length4, cArr.length);
                            length4 += cArr.length;
                        }
                        i9 = i3;
                    }
                    i8 = i3;
                    while (i8 < length3) {
                        cCharAt = str3.charAt(i8);
                        if (cCharAt >= zArr.length) {
                            break;
                        }
                        break;
                        break;
                    }
                    i7 = 0;
                }
                int i11 = length3 - i9;
                if (i11 > 0) {
                    int i12 = i11 + length4;
                    if (cArr3.length >= i12) {
                        i7 = 0;
                    } else {
                        if (i12 < 0) {
                            e6.e("Cannot increase internal buffer any further");
                            return null;
                        }
                        char[] cArr5 = new char[i12];
                        if (length4 > 0) {
                            i7 = 0;
                            System.arraycopy(cArr3, 0, cArr5, 0, length4);
                        } else {
                            i7 = 0;
                        }
                        cArr3 = cArr5;
                    }
                    str3.getChars(i9, length3, cArr3, length4);
                    length4 = i12;
                } else {
                    i7 = 0;
                }
                str3 = new String(cArr3, i7, length4);
                break;
            }
            i8++;
        }
        char[] charArray = str3.toCharArray();
        int length5 = charArray.length;
        while (i7 < length5) {
            char c2 = charArray[i7];
            if (c2 == '!') {
                sb.append("%21");
            } else if (c2 == '$') {
                sb.append("%24");
            } else if (c2 == '/') {
                sb.append("%2F");
            } else if (c2 == '=') {
                sb.append("%3D");
            } else if (c2 == '@') {
                sb.append("%40");
            } else if (c2 == '[') {
                sb.append("%5B");
            } else if (c2 == ']') {
                sb.append("%5D");
            } else if (c2 == ':') {
                sb.append("%3A");
            } else if (c2 != ';') {
                switch (c2) {
                    case '&':
                        sb.append("%26");
                        break;
                    case '\'':
                        sb.append("%27");
                        break;
                    case '(':
                        sb.append("%28");
                        break;
                    case ')':
                        sb.append("%29");
                        break;
                    case '*':
                        sb.append("%2A");
                        break;
                    case '+':
                        sb.append("%2B");
                        break;
                    case ',':
                        sb.append("%2C");
                        break;
                    default:
                        sb.append(c2);
                        break;
                }
            } else {
                sb.append("%3B");
            }
            i7++;
        }
        return sb.toString();
    }

    public static String b(String str) {
        StringBuilder sb = new StringBuilder();
        for (String str2 : str.split("/")) {
            if (!str2.isEmpty()) {
                if (sb.length() > 0) {
                    sb.append("/");
                }
                sb.append(a(str2));
            }
        }
        if (str.startsWith("/")) {
            sb.insert(0, "/");
        }
        if (str.endsWith("/")) {
            sb.append("/");
        }
        return sb.toString();
    }

    public static CompletableFuture c(rg5 rg5Var) {
        CompletableFuture completableFuture = new CompletableFuture();
        completableFuture.completeExceptionally(rg5Var);
        return completableFuture;
    }

    public static String d() {
        String property = System.getProperty("os.name");
        String property2 = System.getProperty("os.arch");
        b bVar = b.INSTANCE;
        String str = (String) bVar.a.get();
        if (str == null) {
            synchronized (bVar) {
                if (bVar.a.get() == null) {
                    bVar.a.set("dev");
                    ClassLoader classLoader = b.class.getClassLoader();
                    if (classLoader != null) {
                        try {
                            Enumeration<URL> resources = classLoader.getResources("META-INF/MANIFEST.MF");
                            while (true) {
                                if (!resources.hasMoreElements()) {
                                    break;
                                }
                                InputStream inputStreamOpenStream = resources.nextElement().openStream();
                                try {
                                    Manifest manifest = new Manifest(inputStreamOpenStream);
                                    if ("minio".equals(manifest.getMainAttributes().getValue("Implementation-Title"))) {
                                        bVar.a.set(manifest.getMainAttributes().getValue("Implementation-Version"));
                                        if (inputStreamOpenStream != null) {
                                            inputStreamOpenStream.close();
                                        }
                                        break;
                                    }
                                    if (inputStreamOpenStream != null) {
                                        inputStreamOpenStream.close();
                                    }
                                } catch (Throwable th) {
                                    try {
                                        throw th;
                                    } catch (Throwable th2) {
                                        if (inputStreamOpenStream != null) {
                                            try {
                                                inputStreamOpenStream.close();
                                            } catch (Throwable th3) {
                                                th.addSuppressed(th3);
                                            }
                                        }
                                        throw th2;
                                    }
                                }
                            }
                        } catch (IOException e2) {
                            b.c.log(Level.SEVERE, "IOException occurred", (Throwable) e2);
                            bVar.a.set("unknown");
                        }
                    }
                }
            }
            str = (String) bVar.a.get();
        }
        StringBuilder sbP = u48.p("MinIO (", property, "; ", property2, ") minio-java/");
        sbP.append(str);
        return sbP.toString();
    }

    public static String e(Object obj) {
        if (obj == null) {
            return "<null>";
        }
        if (!obj.getClass().isArray()) {
            if (!(obj instanceof CharSequence)) {
                return obj.toString();
            }
            return "'" + obj.toString() + "'";
        }
        StringBuilder sb = new StringBuilder("[");
        int length = Array.getLength(obj);
        int i = 0;
        if (obj.getClass().getComponentType().isPrimitive()) {
            while (i < length) {
                if (i > 0) {
                    sb.append(", ");
                }
                sb.append(Array.get(obj, i));
                i++;
            }
        } else {
            while (i < length) {
                if (i > 0) {
                    sb.append(", ");
                }
                sb.append(e(Array.get(obj, i)));
                i++;
            }
        }
        sb.append("]");
        return sb.toString();
    }

    public static List f(List list) {
        if (list == null) {
            list = new ArrayList();
        }
        return Collections.unmodifiableList(list);
    }

    public static String g(String str, String str2) {
        if (!"url".equals(str2)) {
            return str;
        }
        if (str == null) {
            return null;
        }
        try {
            return URLDecoder.decode(str, StandardCharsets.UTF_8.toString());
        } catch (UnsupportedEncodingException e2) {
            y5.k(e2);
            return null;
        }
    }

    public static void h(String str, String str2) {
        i(str, str2);
        if (str.isEmpty()) {
            c6.f(str2.concat(" must be a non-empty string."));
        }
    }

    public static void i(Object obj, String str) {
        Objects.requireNonNull(obj, str.concat(" must not be null"));
    }

    public static void j(String str, String str2) {
        if (str == null || !str.isEmpty()) {
            return;
        }
        c6.f(str2.concat(" must be a non-empty string."));
    }

    public static void k(HttpUrl httpUrl) {
        if (httpUrl.b().equals("/")) {
            return;
        }
        g84.k(httpUrl, "no path allowed in endpoint ");
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class c implements Serializable {
        public final Pattern[] a;

        public c(String[] strArr, boolean z) {
            if (strArr == null || strArr.length == 0) {
                c6.f("Regular expressions are missing");
                throw null;
            }
            this.a = new Pattern[strArr.length];
            int i = z ? 0 : 2;
            for (int i2 = 0; i2 < strArr.length; i2++) {
                String str = strArr[i2];
                if (str == null || str.length() == 0) {
                    c6.f(xs1.h(i2, "Regular expression[", "] is missing"));
                    throw null;
                }
                this.a[i2] = Pattern.compile(strArr[i2], i);
            }
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("RegexValidator{");
            int i = 0;
            while (true) {
                Pattern[] patternArr = this.a;
                if (i >= patternArr.length) {
                    sb.append("}");
                    return sb.toString();
                }
                if (i > 0) {
                    sb.append(",");
                }
                sb.append(patternArr[i].pattern());
                i++;
            }
        }

        public c(String str, boolean z) {
            this(new String[]{str}, z);
        }

        public c(String[] strArr) {
            this(strArr, true);
        }

        public c(String str) {
            this(str, true);
        }
    }
}
