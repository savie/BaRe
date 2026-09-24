package okhttp3.internal.tls;

import defpackage.b6;
import defpackage.dj7;
import defpackage.f6;
import defpackage.nq7;
import defpackage.ov2;
import defpackage.pe4;
import defpackage.uq7;
import defpackage.xs1;
import java.io.EOFException;
import java.security.cert.Certificate;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import okhttp3.internal._HostnamesCommonKt;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class OkHostnameVerifier implements HostnameVerifier {
    public static final OkHostnameVerifier a = new OkHostnameVerifier();

    public static List a(X509Certificate x509Certificate, int i) {
        Object obj;
        try {
            Collection<List<?>> subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
            if (subjectAlternativeNames != null) {
                ArrayList arrayList = new ArrayList();
                for (List<?> list : subjectAlternativeNames) {
                    if (list != null && list.size() >= 2 && pe4.d(list.get(0), Integer.valueOf(i)) && (obj = list.get(1)) != null) {
                        arrayList.add((String) obj);
                    }
                }
                return arrayList;
            }
        } catch (CertificateParsingException unused) {
        }
        return ov2.a;
    }

    public static boolean b(String str) {
        long j;
        int length = str.length();
        int length2 = str.length();
        if (length2 < 0) {
            f6.g(xs1.h(length2, "endIndex < beginIndex: ", " < 0"));
            return false;
        }
        if (length2 > str.length()) {
            b6.b(str.length(), dj7.r(length2, "endIndex > string.length: ", " > "));
            return false;
        }
        long j2 = 0;
        int i = 0;
        while (i < length2) {
            char cCharAt = str.charAt(i);
            if (cCharAt < 128) {
                j2++;
            } else {
                if (cCharAt < 2048) {
                    j = 2;
                } else if (cCharAt < 55296 || cCharAt > 57343) {
                    j = 3;
                } else {
                    int i2 = i + 1;
                    char cCharAt2 = i2 < length2 ? str.charAt(i2) : (char) 0;
                    if (cCharAt > 56319 || cCharAt2 < 56320 || cCharAt2 > 57343) {
                        j2++;
                        i = i2;
                    } else {
                        j2 += 4;
                        i += 2;
                    }
                }
                j2 += j;
            }
            i++;
        }
        return length == ((int) j2);
    }

    /* JADX WARN: Code duplicated, block: B:59:0x00de  */
    public static boolean c(String str, X509Certificate x509Certificate) throws EOFException {
        boolean zEquals;
        int length;
        str.getClass();
        if (_HostnamesCommonKt.a.b(str)) {
            String strB = _HostnamesCommonKt.b(str);
            List listA = a(x509Certificate, 7);
            if (!listA.isEmpty()) {
                Iterator it = listA.iterator();
                while (it.hasNext()) {
                    if (pe4.d(strB, _HostnamesCommonKt.b((String) it.next()))) {
                        return true;
                    }
                }
            }
            return false;
        }
        if (b(str)) {
            Locale locale = Locale.US;
            str = dj7.q(locale, str, locale);
        }
        List<String> listA2 = a(x509Certificate, 2);
        if (!listA2.isEmpty()) {
            for (String strQ : listA2) {
                if (str.length() == 0 || uq7.V(str, ".", false) || uq7.O(str, "..", false) || strQ == null || strQ.length() == 0 || uq7.V(strQ, ".", false) || uq7.O(strQ, "..", false)) {
                    zEquals = false;
                } else {
                    String strConcat = !uq7.O(str, ".", false) ? str.concat(".") : str;
                    if (!uq7.O(strQ, ".", false)) {
                        strQ = strQ.concat(".");
                    }
                    if (b(strQ)) {
                        Locale locale2 = Locale.US;
                        strQ = dj7.q(locale2, strQ, locale2);
                    }
                    if (!nq7.Z(strQ, "*", false)) {
                        zEquals = strConcat.equals(strQ);
                    } else if (!uq7.V(strQ, "*.", false) || nq7.g0('*', 1, 4, strQ) != -1 || strConcat.length() < strQ.length() || "*.".equals(strQ)) {
                        zEquals = false;
                    } else {
                        String strSubstring = strQ.substring(1);
                        if (uq7.O(strConcat, strSubstring, false) && ((length = strConcat.length() - strSubstring.length()) <= 0 || nq7.k0('.', length - 1, 4, strConcat) == -1)) {
                            zEquals = true;
                        } else {
                            zEquals = false;
                        }
                    }
                }
                if (zEquals) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // javax.net.ssl.HostnameVerifier
    public final boolean verify(String str, SSLSession sSLSession) {
        str.getClass();
        sSLSession.getClass();
        if (b(str)) {
            try {
                Certificate certificate = sSLSession.getPeerCertificates()[0];
                certificate.getClass();
                return c(str, (X509Certificate) certificate);
            } catch (SSLException unused) {
            }
        }
        return false;
    }
}
