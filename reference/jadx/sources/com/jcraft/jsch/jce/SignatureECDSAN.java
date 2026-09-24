package com.jcraft.jsch.jce;

import com.jcraft.jsch.Buffer;
import com.jcraft.jsch.SignatureECDSA;
import java.math.BigInteger;
import java.security.AlgorithmParameters;
import java.security.KeyFactory;
import java.security.Signature;
import java.security.spec.ECGenParameterSpec;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.ECPrivateKeySpec;
import java.security.spec.ECPublicKeySpec;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
abstract class SignatureECDSAN implements SignatureECDSA {
    public Signature a;
    public KeyFactory b;

    public static byte[] b(byte[] bArr) {
        if ((bArr[0] & 128) == 0) {
            return bArr;
        }
        byte[] bArr2 = new byte[bArr.length + 1];
        System.arraycopy(bArr, 0, bArr2, 1, bArr.length);
        Util.a(bArr);
        return bArr2;
    }

    public static byte[] c(byte[] bArr) {
        if (bArr.length >= 2) {
            int i = 0;
            while (i < bArr.length - 1 && bArr[i] == 0) {
                int i2 = i + 1;
                if ((bArr[i2] & 128) != 0) {
                    break;
                }
                i = i2;
            }
            if (i != 0) {
                int length = bArr.length - i;
                byte[] bArr2 = new byte[length];
                System.arraycopy(bArr, i, bArr2, 0, length);
                Util.a(bArr);
                return bArr2;
            }
        }
        return bArr;
    }

    public abstract String a();

    @Override // com.jcraft.jsch.Signature
    public void init() throws Exception {
        String str;
        String strA = a();
        if (strA.equals("ecdsa-sha2-nistp384")) {
            str = "SHA384withECDSA";
        } else {
            str = strA.equals("ecdsa-sha2-nistp521") ? "SHA512withECDSA" : "SHA256withECDSA";
        }
        this.a = Signature.getInstance(str);
        this.b = KeyFactory.getInstance("EC");
    }

    @Override // com.jcraft.jsch.SignatureECDSA
    public void setPrvKey(byte[] bArr) throws Exception {
        String str;
        byte[] bArrB = b(bArr);
        if (bArrB.length >= 64) {
            str = "secp521r1";
        } else {
            str = bArrB.length >= 48 ? "secp384r1" : "secp256r1";
        }
        AlgorithmParameters algorithmParameters = AlgorithmParameters.getInstance("EC");
        algorithmParameters.init(new ECGenParameterSpec(str));
        this.a.initSign(this.b.generatePrivate(new ECPrivateKeySpec(new BigInteger(1, bArrB), (ECParameterSpec) algorithmParameters.getParameterSpec(ECParameterSpec.class))));
    }

    @Override // com.jcraft.jsch.SignatureECDSA
    public void setPubKey(byte[] bArr, byte[] bArr2) throws Exception {
        String str;
        byte[] bArrB = b(bArr);
        byte[] bArrB2 = b(bArr2);
        if (bArrB.length >= 64) {
            str = "secp521r1";
        } else {
            str = bArrB.length >= 48 ? "secp384r1" : "secp256r1";
        }
        AlgorithmParameters algorithmParameters = AlgorithmParameters.getInstance("EC");
        algorithmParameters.init(new ECGenParameterSpec(str));
        this.a.initVerify(this.b.generatePublic(new ECPublicKeySpec(new ECPoint(new BigInteger(1, bArrB), new BigInteger(1, bArrB2)), (ECParameterSpec) algorithmParameters.getParameterSpec(ECParameterSpec.class))));
    }

    @Override // com.jcraft.jsch.Signature
    public byte[] sign() throws Exception {
        byte[] bArrSign = this.a.sign();
        if (bArrSign[0] == '0') {
            int i = bArrSign[1];
            int i2 = 3;
            if (i + 2 == bArrSign.length || ((i & 128) != 0 && (bArrSign[2] & 255) + 3 == bArrSign.length)) {
                if ((i & 128) != 0 && (bArrSign[2] & 255) + 3 == bArrSign.length) {
                    i2 = 4;
                }
                int i3 = bArrSign[i2];
                byte[] bArr = new byte[i3];
                int i4 = bArrSign[i2 + 2 + i3];
                byte[] bArr2 = new byte[i4];
                System.arraycopy(bArrSign, i2 + 1, bArr, 0, i3);
                System.arraycopy(bArrSign, i2 + 3 + bArrSign[i2], bArr2, 0, i4);
                if (bArr[0] == 0) {
                    int i5 = i3 - 1;
                    byte[] bArr3 = new byte[i5];
                    System.arraycopy(bArr, 1, bArr3, 0, i5);
                    Util.a(bArr);
                    bArr = bArr3;
                }
                if (bArr2[0] == 0) {
                    int i6 = i4 - 1;
                    byte[] bArr4 = new byte[i6];
                    System.arraycopy(bArr2, 1, bArr4, 0, i6);
                    Util.a(bArr2);
                    bArr2 = bArr4;
                }
                Buffer buffer = new Buffer();
                buffer.putMPInt(bArr);
                buffer.putMPInt(bArr2);
                int length = buffer.getLength();
                byte[] bArr5 = new byte[length];
                buffer.d = 0;
                buffer.c(bArr5, 0, length);
                return bArr5;
            }
        }
        return bArrSign;
    }

    @Override // com.jcraft.jsch.Signature
    public void update(byte[] bArr) throws Exception {
        this.a.update(bArr);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001d  */
    /* JADX WARN: Code duplicated, block: B:12:0x0047  */
    /* JADX WARN: Code duplicated, block: B:14:0x0074  */
    @Override // com.jcraft.jsch.Signature
    public boolean verify(byte[] bArr) throws Exception {
        byte[] bArrC;
        byte[] bArrC2;
        byte[] bArr2;
        if (bArr[0] == 48) {
            byte b = bArr[1];
            if (b + 2 != bArr.length && ((b & 128) == 0 || (bArr[2] & 255) + 3 != bArr.length)) {
                Buffer buffer = new Buffer(bArr);
                buffer.getString();
                buffer.getInt();
                byte[] mPInt = buffer.getMPInt();
                byte[] mPInt2 = buffer.getMPInt();
                bArrC = c(b(mPInt));
                bArrC2 = c(b(mPInt2));
                if (bArrC.length < 64) {
                    bArr2 = new byte[bArrC.length + 6 + bArrC2.length];
                    bArr2[0] = 48;
                    bArr2[1] = (byte) (bArrC.length + 4 + bArrC2.length);
                    bArr2[2] = 2;
                    bArr2[3] = (byte) bArrC.length;
                    System.arraycopy(bArrC, 0, bArr2, 4, bArrC.length);
                    bArr2[bArrC.length + 4] = 2;
                    bArr2[bArrC.length + 5] = (byte) bArrC2.length;
                    System.arraycopy(bArrC2, 0, bArr2, bArrC.length + 6, bArrC2.length);
                } else {
                    bArr2 = new byte[bArrC.length + 6 + bArrC2.length + 1];
                    bArr2[0] = 48;
                    bArr2[1] = -127;
                    bArr2[2] = (byte) (bArrC.length + 4 + bArrC2.length);
                    bArr2[3] = 2;
                    bArr2[4] = (byte) bArrC.length;
                    System.arraycopy(bArrC, 0, bArr2, 5, bArrC.length);
                    bArr2[bArrC.length + 5] = 2;
                    bArr2[bArrC.length + 6] = (byte) bArrC2.length;
                    System.arraycopy(bArrC2, 0, bArr2, bArrC.length + 7, bArrC2.length);
                }
                bArr = bArr2;
            }
        } else {
            Buffer buffer2 = new Buffer(bArr);
            buffer2.getString();
            buffer2.getInt();
            byte[] mPInt3 = buffer2.getMPInt();
            byte[] mPInt4 = buffer2.getMPInt();
            bArrC = c(b(mPInt3));
            bArrC2 = c(b(mPInt4));
            if (bArrC.length < 64) {
                bArr2 = new byte[bArrC.length + 6 + bArrC2.length];
                bArr2[0] = 48;
                bArr2[1] = (byte) (bArrC.length + 4 + bArrC2.length);
                bArr2[2] = 2;
                bArr2[3] = (byte) bArrC.length;
                System.arraycopy(bArrC, 0, bArr2, 4, bArrC.length);
                bArr2[bArrC.length + 4] = 2;
                bArr2[bArrC.length + 5] = (byte) bArrC2.length;
                System.arraycopy(bArrC2, 0, bArr2, bArrC.length + 6, bArrC2.length);
            } else {
                bArr2 = new byte[bArrC.length + 6 + bArrC2.length + 1];
                bArr2[0] = 48;
                bArr2[1] = -127;
                bArr2[2] = (byte) (bArrC.length + 4 + bArrC2.length);
                bArr2[3] = 2;
                bArr2[4] = (byte) bArrC.length;
                System.arraycopy(bArrC, 0, bArr2, 5, bArrC.length);
                bArr2[bArrC.length + 5] = 2;
                bArr2[bArrC.length + 6] = (byte) bArrC2.length;
                System.arraycopy(bArrC2, 0, bArr2, bArrC.length + 7, bArrC2.length);
            }
            bArr = bArr2;
        }
        return this.a.verify(bArr);
    }
}
