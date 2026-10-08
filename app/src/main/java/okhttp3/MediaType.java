package okhttp3;

import defpackage.ai6;
import defpackage.c6;
import defpackage.iz1;
import defpackage.nq7;
import defpackage.pe4;
import defpackage.r75;
import defpackage.s75;
import defpackage.t75;
import defpackage.u48;
import defpackage.u75;
import defpackage.uq7;
import defpackage.xs1;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class MediaType {
    public static final ai6 d = new ai6("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");
    public static final ai6 e = new ai6(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");
    public final String a;
    public final String b;
    public final String[] c;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Companion {
        public static MediaType a(String str) {
            str.getClass();
            u75 u75VarA = MediaType.d.a(0, str);
            if (u75VarA == null) {
                c6.f(u48.j('\"', "No subtype found for: \"", str));
                return null;
            }
            String str2 = (String) ((s75) u75VarA.a()).get(1);
            Locale locale = Locale.ROOT;
            String lowerCase = str2.toLowerCase(locale);
            lowerCase.getClass();
            String lowerCase2 = ((String) ((s75) u75VarA.a()).get(2)).toLowerCase(locale);
            lowerCase2.getClass();
            ArrayList arrayList = new ArrayList();
            int i = u75VarA.b().b;
            while (true) {
                int i2 = i + 1;
                if (i2 >= str.length()) {
                    return new MediaType(str, lowerCase, lowerCase2, (String[]) arrayList.toArray(new String[0]));
                }
                u75 u75VarA2 = MediaType.e.a(i2, str);
                if (u75VarA2 == null) {
                    throw new IllegalArgumentException(("Parameter is not formatted correctly: \"" + str.substring(i2) + "\" for: \"" + str + '\"').toString());
                }
                t75 t75Var = u75VarA2.c;
                r75 r75VarE = t75Var.e(1);
                String str3 = r75VarE != null ? r75VarE.a : null;
                if (str3 == null) {
                    i = u75VarA2.b().b;
                } else {
                    r75 r75VarE2 = t75Var.e(2);
                    String strG = r75VarE2 != null ? r75VarE2.a : null;
                    if (strG == null) {
                        r75 r75VarE3 = t75Var.e(3);
                        r75VarE3.getClass();
                        strG = r75VarE3.a;
                    } else if (nq7.y0(strG, '\'') && nq7.b0(strG, '\'') && strG.length() > 2) {
                        strG = xs1.g(1, 1, strG);
                    }
                    arrayList.add(str3);
                    arrayList.add(strG);
                    i = u75VarA2.b().b;
                }
            }
        }

        public static MediaType b(String str) {
            str.getClass();
            try {
                return a(str);
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }
    }

    public MediaType(String str, String str2, String str3, String[] strArr) {
        str.getClass();
        strArr.getClass();
        this.a = str;
        this.b = str2;
        this.c = strArr;
    }

    public static Charset a(MediaType mediaType) {
        String str;
        String[] strArr = mediaType.c;
        int i = 0;
        int iN = iz1.n(0, strArr.length - 1, 2);
        if (iN < 0) {
            str = null;
            break;
        }
        while (true) {
            if (!uq7.P(strArr[i], "charset", true)) {
                if (i == iN) {
                    str = null;
                    break;
                }
                i += 2;
            } else {
                str = strArr[i + 1];
                break;
            }
        }
        if (str == null) {
            return null;
        }
        try {
            return Charset.forName(str);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    public final boolean equals(Object obj) {
        return (obj instanceof MediaType) && pe4.d(((MediaType) obj).a, this.a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return this.a;
    }
}
