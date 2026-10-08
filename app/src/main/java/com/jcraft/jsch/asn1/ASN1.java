package com.jcraft.jsch.asn1;

import defpackage.c6;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ASN1 {
    public final byte[] a;
    public final int b;
    public final int c;

    public ASN1(byte[] bArr, int i, int i2) throws ASN1Exception {
        this.a = bArr;
        this.b = i;
        this.c = i2;
        if (i + i2 > bArr.length) {
            throw new ASN1Exception();
        }
    }

    public static int parseASN1IntegerAsInt(byte[] bArr) throws ArithmeticException {
        BigInteger bigInteger = new BigInteger(bArr);
        if (bigInteger.bitLength() <= 31) {
            return bigInteger.intValue();
        }
        throw new ArithmeticException("BigInteger out of int range");
    }

    public final int a(int[] iArr) {
        int i = iArr[0];
        int i2 = i + 1;
        byte[] bArr = this.a;
        byte b = bArr[i];
        int i3 = b & 255;
        if ((b & 128) != 0) {
            int i4 = b & 127;
            i3 = 0;
            while (true) {
                int i5 = i4 - 1;
                if (i4 <= 0) {
                    break;
                }
                int i6 = (i3 << 8) + (bArr[i2] & 255);
                i2++;
                i3 = i6;
                i4 = i5;
            }
        }
        iArr[0] = i2;
        return i3;
    }

    public final byte[] getContent() {
        int[] iArr = {this.b + 1};
        int iA = a(iArr);
        byte[] bArr = new byte[iA];
        System.arraycopy(this.a, iArr[0], bArr, 0, iA);
        return bArr;
    }

    public final ASN1[] getContents() throws ASN1Exception {
        byte[] bArr = this.a;
        int i = this.b;
        byte b = bArr[i];
        int[] iArr = {i + 1};
        int iA = a(iArr);
        if (b == 5) {
            return new ASN1[0];
        }
        int i2 = iArr[0];
        ArrayList arrayList = new ArrayList();
        while (iA > 0) {
            int i3 = i2 + 1;
            iArr[0] = i3;
            int iA2 = a(iArr);
            int i4 = iArr[0];
            int i5 = i4 - i3;
            arrayList.add(new ASN1(bArr, i2, i5 + 1 + iA2));
            i2 = i4 + iA2;
            iA = ((iA - 1) - i5) - iA2;
        }
        ASN1[] asn1Arr = new ASN1[arrayList.size()];
        arrayList.toArray(asn1Arr);
        return asn1Arr;
    }

    public final byte[] getRaw() {
        int i = this.c;
        int i2 = this.b;
        return Arrays.copyOfRange(this.a, i2, i + i2);
    }

    public final int getType() {
        return this.a[this.b] & 255;
    }

    public final boolean isBITSTRING() {
        return getType() == 3;
    }

    public final boolean isCONTEXTCONSTRUCTED(int i) {
        if ((i & (-256)) == 0 && (i & 64) == 0) {
            return getType() == ((i | 160) & 255);
        }
        c6.b();
        return false;
    }

    public final boolean isCONTEXTPRIMITIVE(int i) {
        if ((i & (-256)) == 0 && (i & 96) == 0) {
            return getType() == ((i | 128) & 255);
        }
        c6.b();
        return false;
    }

    public final boolean isINTEGER() {
        return getType() == 2;
    }

    public final boolean isNULL() {
        return getType() == 5;
    }

    public final boolean isOBJECT() {
        return getType() == 6;
    }

    public final boolean isOCTETSTRING() {
        return getType() == 4;
    }

    public final boolean isSEQUENCE() {
        return getType() == 48;
    }

    public ASN1(byte[] bArr) throws ASN1Exception {
        this(bArr, 0, bArr.length);
    }
}
