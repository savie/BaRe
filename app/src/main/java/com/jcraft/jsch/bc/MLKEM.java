package com.jcraft.jsch.bc;

import com.jcraft.jsch.KEM;
import java.security.SecureRandom;
import org.bouncycastle.crypto.generators.MLKEMKeyPairGenerator;
import org.bouncycastle.crypto.kems.MLKEMExtractor;
import org.bouncycastle.crypto.params.MLKEMKeyGenerationParameters;
import org.bouncycastle.crypto.params.MLKEMParameters;
import org.bouncycastle.crypto.params.MLKEMPrivateKeyParameters;
import org.bouncycastle.crypto.params.MLKEMPublicKeyParameters;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
abstract class MLKEM implements KEM {
    public MLKEMParameters a;
    public MLKEMExtractor b;

    @Override // com.jcraft.jsch.KEM
    public byte[] decapsulate(byte[] bArr) throws Exception {
        return this.b.extractSecret(bArr);
    }

    @Override // com.jcraft.jsch.KEM
    public byte[] getPublicKey() throws Exception {
        MLKEMPublicKeyParameters mLKEMPublicKeyParameters = null;
        mLKEMPublicKeyParameters.getEncoded();
        throw null;
    }

    @Override // com.jcraft.jsch.KEM
    public void init() throws Exception {
        MLKEMKeyPairGenerator mLKEMKeyPairGenerator = new MLKEMKeyPairGenerator();
        mLKEMKeyPairGenerator.init(new MLKEMKeyGenerationParameters(new SecureRandom(), this.a));
        mLKEMKeyPairGenerator.generateKeyPair().getClass();
        this.b = new MLKEMExtractor((MLKEMPrivateKeyParameters) null);
    }
}
