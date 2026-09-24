package com.nimbusds.jose.crypto;

import com.nimbusds.jose.ActionRequiredForJWSCompletionException;
import com.nimbusds.jose.CompletableJWSObjectSigning;
import com.nimbusds.jose.JOSEException;
import com.nimbusds.jose.JWSHeader;
import com.nimbusds.jose.JWSSigner;
import com.nimbusds.jose.JWSSignerOption;
import com.nimbusds.jose.crypto.impl.RSAKeyUtils;
import com.nimbusds.jose.crypto.impl.RSASSA;
import com.nimbusds.jose.crypto.impl.RSASSAProvider;
import com.nimbusds.jose.crypto.opts.AllowWeakRSAKey;
import com.nimbusds.jose.crypto.opts.OptionUtils;
import com.nimbusds.jose.crypto.opts.UserAuthenticationRequired;
import com.nimbusds.jose.jwk.RSAKey;
import com.nimbusds.jose.shaded.jcip.ThreadSafe;
import com.nimbusds.jose.util.Base64URL;
import defpackage.c6;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.interfaces.RSAPrivateKey;
import java.util.Collections;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@ThreadSafe
public class RSASSASigner extends RSASSAProvider implements JWSSigner {
    private final Set<JWSSignerOption> opts;
    private final PrivateKey privateKey;

    public RSASSASigner(PrivateKey privateKey, Set<JWSSignerOption> set) {
        int iKeyBitLength;
        if (!(privateKey instanceof RSAPrivateKey) && !"RSA".equalsIgnoreCase(privateKey.getAlgorithm())) {
            c6.f("The private key algorithm must be RSA");
            throw null;
        }
        this.privateKey = privateKey;
        set = set == null ? Collections.EMPTY_SET : set;
        this.opts = set;
        if (OptionUtils.optionIsPresent(set, AllowWeakRSAKey.class) || (iKeyBitLength = RSAKeyUtils.keyBitLength(privateKey)) <= 0 || iKeyBitLength >= 2048) {
            return;
        }
        c6.f("The RSA key size must be at least 2048 bits");
        throw null;
    }

    private Signature getInitiatedSignature(JWSHeader jWSHeader) throws JOSEException {
        Signature signerAndVerifier = RSASSA.getSignerAndVerifier(jWSHeader.getAlgorithm(), getJCAContext().getProvider());
        try {
            signerAndVerifier.initSign(this.privateKey);
            return signerAndVerifier;
        } catch (InvalidKeyException e) {
            throw new JOSEException("Invalid private RSA key: " + e.getMessage(), e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Base64URL sign(byte[] bArr, Signature signature) throws JOSEException {
        try {
            signature.update(bArr);
            return Base64URL.encode(signature.sign());
        } catch (SignatureException e) {
            throw new JOSEException("RSA signature exception: " + e.getMessage(), e);
        }
    }

    public PrivateKey getPrivateKey() {
        return this.privateKey;
    }

    @Override // com.nimbusds.jose.JWSSigner
    public Base64URL sign(JWSHeader jWSHeader, final byte[] bArr) throws JOSEException {
        final Signature initiatedSignature = getInitiatedSignature(jWSHeader);
        if (!OptionUtils.optionIsPresent(this.opts, UserAuthenticationRequired.class)) {
            return sign(bArr, initiatedSignature);
        }
        throw new ActionRequiredForJWSCompletionException("Authenticate user to complete signing", UserAuthenticationRequired.getInstance(), new CompletableJWSObjectSigning() { // from class: com.nimbusds.jose.crypto.RSASSASigner.1
            @Override // com.nimbusds.jose.CompletableJWSObjectSigning
            public Base64URL complete() throws JOSEException {
                return RSASSASigner.this.sign(bArr, initiatedSignature);
            }

            @Override // com.nimbusds.jose.CompletableJWSObjectSigning
            public Signature getInitializedSignature() {
                return initiatedSignature;
            }
        });
    }

    @Deprecated
    public RSASSASigner(PrivateKey privateKey, boolean z) {
        this(privateKey, (Set<JWSSignerOption>) (z ? Collections.singleton(AllowWeakRSAKey.getInstance()) : Collections.EMPTY_SET));
    }

    public RSASSASigner(PrivateKey privateKey) {
        this(privateKey, false);
    }

    public RSASSASigner(RSAKey rSAKey) throws JOSEException {
        this(rSAKey, (Set<JWSSignerOption>) null);
    }

    @Deprecated
    public RSASSASigner(RSAKey rSAKey, boolean z) throws JOSEException {
        this(RSAKeyUtils.toRSAPrivateKey(rSAKey), z);
    }

    public RSASSASigner(RSAKey rSAKey, Set<JWSSignerOption> set) throws JOSEException {
        this(RSAKeyUtils.toRSAPrivateKey(rSAKey), set);
    }
}
