package com.jcraft.jsch.bc;

import com.jcraft.jsch.JSchException;
import com.jcraft.jsch.KDF;
import com.jcraft.jsch.asn1.ASN1;
import com.jcraft.jsch.asn1.ASN1Exception;
import defpackage.c6;
import defpackage.dj7;
import defpackage.ms8;
import defpackage.xx3;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class SCrypt implements KDF {
    public byte[] a;
    public int b;
    public int c;
    public int d;

    @Override // com.jcraft.jsch.KDF
    public final byte[] getKey(byte[] bArr, int i) {
        String strJ;
        byte[] bArr2 = this.a;
        int i2 = this.b;
        int i3 = this.c;
        int i4 = this.d;
        int[] iArr = null;
        if (bArr == null) {
            strJ = "Passphrase P must be provided.";
        } else if (bArr2 == null) {
            strJ = "Salt S must be provided.";
        } else if (i2 <= 1 || ((i2 - 1) & i2) != 0) {
            strJ = "Cost parameter N must be > 1 and a power of 2";
        } else if (i3 == 1 && i2 >= 65536) {
            strJ = "Cost parameter N must be > 1 and < 65536.";
        } else if (i3 >= 1) {
            int i5 = i3 * 128;
            int i6 = Integer.MAX_VALUE / (i3 * 1024);
            if (i4 < 1 || i4 > i6) {
                strJ = dj7.j("Parallelisation parameter p must be >= 1 and <= ", i6, " (based on block size r of ", ")", i3);
            } else {
                if (i >= 1) {
                    byte[] bArrF = ms8.f(i4 * i5, bArr, bArr2);
                    try {
                        int length = bArrF.length >>> 2;
                        iArr = new int[length];
                        int i7 = 0;
                        for (int i8 = 0; i8 < length; i8++) {
                            iArr[i8] = xx3.r(bArrF, i7);
                            i7 += 4;
                        }
                        int i9 = 0;
                        for (int i10 = i2 * i3; i2 - i9 > 2 && i10 > 1024; i10 >>>= 1) {
                            i9++;
                        }
                        int i11 = i5 >>> 2;
                        for (int i12 = 0; i12 < length; i12 += i11) {
                            ms8.e(i12, i2, i9, i3, iArr);
                        }
                        xx3.p(bArrF, iArr);
                        byte[] bArrF2 = ms8.f(i, bArr, bArrF);
                        Arrays.fill(bArrF, (byte) 0);
                        Arrays.fill(iArr, 0);
                        return bArrF2;
                    } catch (Throwable th) {
                        Arrays.fill(bArrF, (byte) 0);
                        if (iArr != null) {
                            Arrays.fill(iArr, 0);
                        }
                        throw th;
                    }
                }
                strJ = "Generated key length dkLen must be >= 1.";
            }
        } else {
            strJ = "Block size r must be >= 1.";
        }
        c6.f(strJ);
        return null;
    }

    @Override // com.jcraft.jsch.KDF
    public final void initWithASN1(byte[] bArr) throws Exception {
        try {
            ASN1 asn1 = new ASN1(bArr);
            if (!asn1.isSEQUENCE()) {
                throw new ASN1Exception();
            }
            ASN1[] contents = asn1.getContents();
            if (contents.length < 4 || contents.length > 5) {
                throw new ASN1Exception();
            }
            if (!contents[0].isOCTETSTRING()) {
                throw new ASN1Exception();
            }
            if (!contents[1].isINTEGER()) {
                throw new ASN1Exception();
            }
            if (!contents[2].isINTEGER()) {
                throw new ASN1Exception();
            }
            if (!contents[3].isINTEGER()) {
                throw new ASN1Exception();
            }
            if (contents.length > 4 && !contents[4].isINTEGER()) {
                throw new ASN1Exception();
            }
            this.a = contents[0].getContent();
            this.b = ASN1.parseASN1IntegerAsInt(contents[1].getContent());
            this.c = ASN1.parseASN1IntegerAsInt(contents[2].getContent());
            this.d = ASN1.parseASN1IntegerAsInt(contents[3].getContent());
        } catch (Exception | LinkageError e) {
            if (e instanceof JSchException) {
                throw ((JSchException) e);
            }
            if (!(e instanceof ASN1Exception) && !(e instanceof ArithmeticException)) {
                throw new JSchException("scrypt unavailable", e);
            }
            throw new JSchException("invalid ASN1", e);
        }
    }
}
