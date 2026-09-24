package com.nimbusds.jose.crypto.impl;

import com.nimbusds.jose.EncryptionMethod;
import com.nimbusds.jose.JWEAlgorithm;
import com.nimbusds.jose.util.StandardCharset;
import defpackage.c6;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class PasswordBasedCryptoProvider extends BaseJWEProvider {
    public static final Set<JWEAlgorithm> SUPPORTED_ALGORITHMS;
    public static final Set<EncryptionMethod> SUPPORTED_ENCRYPTION_METHODS = ContentCryptoProvider.SUPPORTED_ENCRYPTION_METHODS;
    private final byte[] password;

    static {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        linkedHashSet.add(JWEAlgorithm.PBES2_HS256_A128KW);
        linkedHashSet.add(JWEAlgorithm.PBES2_HS384_A192KW);
        linkedHashSet.add(JWEAlgorithm.PBES2_HS512_A256KW);
        SUPPORTED_ALGORITHMS = Collections.unmodifiableSet(linkedHashSet);
    }

    public PasswordBasedCryptoProvider(byte[] bArr) {
        super(SUPPORTED_ALGORITHMS, ContentCryptoProvider.SUPPORTED_ENCRYPTION_METHODS, null);
        if (bArr == null || bArr.length == 0) {
            c6.f("The password must not be null or empty");
            throw null;
        }
        this.password = bArr;
    }

    public byte[] getPassword() {
        return this.password;
    }

    public String getPasswordString() {
        return new String(this.password, StandardCharset.UTF_8);
    }
}
