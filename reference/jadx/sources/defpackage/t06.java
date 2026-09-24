package defpackage;

import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGeneratorSpi;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class t06 extends KeyPairGeneratorSpi {
    @Override // java.security.KeyPairGeneratorSpi
    public final KeyPair generateKeyPair() {
        throw new IllegalStateException("KeyPairGenerator not initialized!");
    }

    @Override // java.security.KeyPairGeneratorSpi
    public final void initialize(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        throw new InvalidAlgorithmParameterException("Must be instance of PivAlgorithmParameterSpec");
    }

    @Override // java.security.KeyPairGeneratorSpi
    public final void initialize(int i, SecureRandom secureRandom) {
        throw new IllegalArgumentException("Initialize with PivAlgorithmParameterSpec!");
    }
}
