package com.nimbusds.jose.crypto;

import com.nimbusds.jose.CriticalHeaderParamsAware;
import com.nimbusds.jose.JOSEException;
import com.nimbusds.jose.JWEAlgorithm;
import com.nimbusds.jose.JWEDecrypter;
import com.nimbusds.jose.JWEHeader;
import com.nimbusds.jose.crypto.impl.AAD;
import com.nimbusds.jose.crypto.impl.AESKW;
import com.nimbusds.jose.crypto.impl.ContentCryptoProvider;
import com.nimbusds.jose.crypto.impl.CriticalHeaderParamsDeferral;
import com.nimbusds.jose.crypto.impl.JWEHeaderValidation;
import com.nimbusds.jose.crypto.impl.PBKDF2;
import com.nimbusds.jose.crypto.impl.PRFParams;
import com.nimbusds.jose.crypto.impl.PasswordBasedCryptoProvider;
import com.nimbusds.jose.shaded.jcip.ThreadSafe;
import com.nimbusds.jose.util.Base64URL;
import com.nimbusds.jose.util.StandardCharset;
import defpackage.f6;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@ThreadSafe
public class PasswordBasedDecrypter extends PasswordBasedCryptoProvider implements JWEDecrypter, CriticalHeaderParamsAware {
    public static final int MAX_ALLOWED_ITERATION_COUNT = 1000000;
    private final CriticalHeaderParamsDeferral critPolicy;

    public PasswordBasedDecrypter(String str) {
        super(str.getBytes(StandardCharset.UTF_8));
        this.critPolicy = new CriticalHeaderParamsDeferral();
    }

    @Override // com.nimbusds.jose.JWEDecrypter
    public byte[] decrypt(JWEHeader jWEHeader, Base64URL base64URL, Base64URL base64URL2, Base64URL base64URL3, Base64URL base64URL4, byte[] bArr) throws JOSEException {
        if (base64URL == null) {
            f6.j("Missing JWE encrypted key");
            return null;
        }
        if (base64URL2 == null) {
            f6.j("Missing JWE initialization vector (IV)");
            return null;
        }
        if (base64URL4 == null) {
            f6.j("Missing JWE authentication tag");
            return null;
        }
        if (jWEHeader.getPBES2Salt() == null) {
            f6.j("Missing JWE p2s header parameter");
            return null;
        }
        byte[] bArrDecode = jWEHeader.getPBES2Salt().decode();
        if (jWEHeader.getPBES2Count() < 1) {
            f6.j("Missing JWE p2c header parameter");
            return null;
        }
        int pBES2Count = jWEHeader.getPBES2Count();
        if (pBES2Count > 1000000) {
            f6.j("The JWE p2c header exceeds the maximum allowed 1000000 count");
            return null;
        }
        this.critPolicy.ensureHeaderPasses(jWEHeader);
        JWEAlgorithm algorithmAndEnsureNotNull = JWEHeaderValidation.getAlgorithmAndEnsureNotNull(jWEHeader);
        return ContentCryptoProvider.decrypt(jWEHeader, bArr, base64URL, base64URL2, base64URL3, base64URL4, AESKW.unwrapCEK(PBKDF2.deriveKey(getPassword(), PBKDF2.formatSalt(algorithmAndEnsureNotNull, bArrDecode), pBES2Count, PRFParams.resolve(algorithmAndEnsureNotNull, getJCAContext().getMACProvider()), getJCAContext().getProvider()), base64URL.decode(), getJCAContext().getKeyEncryptionProvider()), getJCAContext());
    }

    @Override // com.nimbusds.jose.CriticalHeaderParamsAware
    public Set<String> getDeferredCriticalHeaderParams() {
        return this.critPolicy.getProcessedCriticalHeaderParams();
    }

    @Override // com.nimbusds.jose.CriticalHeaderParamsAware
    public Set<String> getProcessedCriticalHeaderParams() {
        return this.critPolicy.getProcessedCriticalHeaderParams();
    }

    public PasswordBasedDecrypter(byte[] bArr) {
        super(bArr);
        this.critPolicy = new CriticalHeaderParamsDeferral();
    }

    @Deprecated
    public byte[] decrypt(JWEHeader jWEHeader, Base64URL base64URL, Base64URL base64URL2, Base64URL base64URL3, Base64URL base64URL4) throws JOSEException {
        return decrypt(jWEHeader, base64URL, base64URL2, base64URL3, base64URL4, AAD.compute(jWEHeader));
    }
}
