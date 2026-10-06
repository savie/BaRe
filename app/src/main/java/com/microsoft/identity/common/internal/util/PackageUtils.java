package com.microsoft.identity.common.internal.util;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.text.TextUtils;
import android.util.Base64;
import com.microsoft.identity.common.internal.broker.PackageHelper;
import com.microsoft.identity.common.java.exception.ClientException;
import defpackage.q;
import defpackage.xs1;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertPathValidator;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.PKIXParameters;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class PackageUtils {
    private static final Pattern HEX_PATTERN = Pattern.compile("([A-Fa-f0-9]{2}:)*[A-Fa-f0-9]{2}");

    public static ArrayList readCertDataForApp(Context context, String str) throws GeneralSecurityException, PackageManager.NameNotFoundException, IOException, ClientException {
        PackageInfo packageInfo = PackageHelper.getPackageInfo(context.getPackageManager(), str);
        if (packageInfo == null) {
            q.i("App package name is not found in the package manager.", "No broker package existed.", null);
            return null;
        }
        Signature[] signatures = PackageHelper.getSignatures(packageInfo);
        if (signatures == null || signatures.length == 0) {
            q.i("Calling app could not be verified", "No signature associated with the broker package.", null);
            return null;
        }
        ArrayList arrayList = new ArrayList(signatures.length);
        for (Signature signature : signatures) {
            try {
                arrayList.add((X509Certificate) CertificateFactory.getInstance("X509").generateCertificate(new ByteArrayInputStream(signature.toByteArray())));
            } catch (CertificateException unused) {
                throw new ClientException("Calling app could not be verified", null, null);
            }
        }
        return arrayList;
    }

    public static void verifyCertificateChain(ArrayList arrayList) throws GeneralSecurityException, ClientException {
        Iterator it = arrayList.iterator();
        int i = 0;
        X509Certificate x509Certificate = null;
        while (it.hasNext()) {
            X509Certificate x509Certificate2 = (X509Certificate) it.next();
            if (x509Certificate2.getSubjectDN().equals(x509Certificate2.getIssuerDN())) {
                i++;
                x509Certificate = x509Certificate2;
            }
        }
        if (i > 1 || x509Certificate == null) {
            q.i("Calling app could not be verified", "Multiple self signed certs found or no self signed cert existed.", null);
            return;
        }
        PKIXParameters pKIXParameters = new PKIXParameters((Set<TrustAnchor>) Collections.singleton(new TrustAnchor(x509Certificate, null)));
        pKIXParameters.setRevocationEnabled(false);
        CertPathValidator.getInstance("PKIX").validate(CertificateFactory.getInstance("X.509").generateCertPath(arrayList), pKIXParameters);
    }

    public static void verifySignatureHash(ArrayList arrayList, Iterator it) throws NoSuchAlgorithmException, ClientException, CertificateEncodingException {
        StringBuilder sb = new StringBuilder();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            X509Certificate x509Certificate = (X509Certificate) it2.next();
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-512");
            messageDigest.update(x509Certificate.getEncoded());
            String strEncodeToString = Base64.encodeToString(messageDigest.digest(), 2);
            sb.append(strEncodeToString);
            sb.append(',');
            while (it.hasNext()) {
                String strEncodeToString2 = (String) it.next();
                if (HEX_PATTERN.matcher(strEncodeToString2).matches()) {
                    String[] strArrSplit = strEncodeToString2.split(":");
                    byte[] bArr = new byte[strArrSplit.length];
                    int length = strArrSplit.length;
                    int i = 0;
                    int i2 = 0;
                    while (i < length) {
                        bArr[i2] = (byte) (Long.parseLong(strArrSplit[i], 16) & 255);
                        i++;
                        i2++;
                    }
                    strEncodeToString2 = Base64.encodeToString(bArr, 2);
                }
                if (!TextUtils.isEmpty(strEncodeToString2) && strEncodeToString2.equals(strEncodeToString)) {
                    return;
                }
            }
        }
        throw new ClientException("broker_app_verification_failed", xs1.k("Calling app could not be verified SignatureHashes: ", sb), null);
    }
}
