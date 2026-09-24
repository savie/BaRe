package com.microsoft.identity.common.crypto;

import defpackage.bt3;
import defpackage.fl1;
import defpackage.gs4;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class CryptoParameterSpecFactory$keyGenParamSpecWithoutPurposeWrapKey$2 extends gs4 implements bt3 {
    final /* synthetic */ CryptoParameterSpecFactory this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CryptoParameterSpecFactory$keyGenParamSpecWithoutPurposeWrapKey$2(CryptoParameterSpecFactory cryptoParameterSpecFactory) {
        super(0);
        this.this$0 = cryptoParameterSpecFactory;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        return new KeyGenSpec(3, fl1.A0("SHA-256", "SHA-512"), "modern_spec_without_wrap_key", CryptoParameterSpecFactory.access$getEncryptionPaddingsForKeyGen(this.this$0));
    }
}
