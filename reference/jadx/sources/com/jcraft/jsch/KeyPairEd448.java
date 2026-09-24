package com.jcraft.jsch;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
class KeyPairEd448 extends KeyPairEdDSA {
    public KeyPairEd448(JSch.InstanceLogger instanceLogger) {
        super(instanceLogger, null, null);
    }

    public static KeyPair A(JSch.InstanceLogger instanceLogger, Buffer buffer) throws JSchException {
        byte[][] bArrD = buffer.d(4, "invalid key format");
        KeyPairEd448 keyPairEd448 = new KeyPairEd448(instanceLogger, bArrD[1], Arrays.copyOf(bArrD[2], 57));
        keyPairEd448.b = Util.c(bArrD[3]);
        keyPairEd448.a = 0;
        return keyPairEd448;
    }

    @Override // com.jcraft.jsch.KeyPair
    public final int getKeySize() {
        return 57;
    }

    @Override // com.jcraft.jsch.KeyPair
    public final int getKeyType() {
        return 6;
    }

    @Override // com.jcraft.jsch.KeyPairEdDSA
    public final String y() {
        return "Ed448";
    }

    @Override // com.jcraft.jsch.KeyPairEdDSA
    public final String z() {
        return "ssh-ed448";
    }

    public KeyPairEd448(JSch.InstanceLogger instanceLogger, byte[] bArr, byte[] bArr2) {
        super(instanceLogger, bArr, bArr2);
    }
}
