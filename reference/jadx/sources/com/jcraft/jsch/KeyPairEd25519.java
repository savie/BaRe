package com.jcraft.jsch;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
class KeyPairEd25519 extends KeyPairEdDSA {
    public KeyPairEd25519(JSch.InstanceLogger instanceLogger) {
        super(instanceLogger, null, null);
    }

    public static KeyPair A(JSch.InstanceLogger instanceLogger, Buffer buffer) throws JSchException {
        byte[][] bArrD = buffer.d(4, "invalid key format");
        KeyPairEd25519 keyPairEd25519 = new KeyPairEd25519(instanceLogger, bArrD[1], Arrays.copyOf(bArrD[2], 32));
        keyPairEd25519.b = Util.c(bArrD[3]);
        keyPairEd25519.a = 0;
        return keyPairEd25519;
    }

    @Override // com.jcraft.jsch.KeyPair
    public final int getKeySize() {
        return 32;
    }

    @Override // com.jcraft.jsch.KeyPair
    public final int getKeyType() {
        return 5;
    }

    @Override // com.jcraft.jsch.KeyPairEdDSA
    public final String y() {
        return "Ed25519";
    }

    @Override // com.jcraft.jsch.KeyPairEdDSA
    public final String z() {
        return "ssh-ed25519";
    }

    public KeyPairEd25519(JSch.InstanceLogger instanceLogger, byte[] bArr, byte[] bArr2) {
        super(instanceLogger, bArr, bArr2);
    }
}
