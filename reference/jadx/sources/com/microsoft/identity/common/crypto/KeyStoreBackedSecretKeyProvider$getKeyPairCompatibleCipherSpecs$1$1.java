package com.microsoft.identity.common.crypto;

import defpackage.gs4;
import defpackage.mt3;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class KeyStoreBackedSecretKeyProvider$getKeyPairCompatibleCipherSpecs$1$1 extends gs4 implements mt3 {
    public static final KeyStoreBackedSecretKeyProvider$getKeyPairCompatibleCipherSpecs$1$1 INSTANCE = new KeyStoreBackedSecretKeyProvider$getKeyPairCompatibleCipherSpecs$1$1(1);

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        CipherSpec cipherSpec = (CipherSpec) obj;
        cipherSpec.getClass();
        return cipherSpec.getTransformation();
    }
}
