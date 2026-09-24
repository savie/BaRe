package com.jcraft.jsch.jce;

import com.jcraft.jsch.JSchException;
import com.jcraft.jsch.KDF;
import com.jcraft.jsch.asn1.ASN1;
import com.jcraft.jsch.asn1.ASN1Exception;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.util.Arrays;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class PBKDF2 implements KDF {
    public static final byte[] e = {42, -122, 72, -122, -9, 13, 2, 7};
    public static final byte[] f = {42, -122, 72, -122, -9, 13, 2, 8};
    public static final byte[] g = {42, -122, 72, -122, -9, 13, 2, 9};
    public static final byte[] h = {42, -122, 72, -122, -9, 13, 2, 10};
    public static final byte[] i = {42, -122, 72, -122, -9, 13, 2, 11};
    public static final byte[] j = {42, -122, 72, -122, -9, 13, 2, 12};
    public static final byte[] k = {42, -122, 72, -122, -9, 13, 2, 13};
    public SecretKeyFactory a;
    public byte[] b;
    public int c;
    public String d;

    public static String a(byte[] bArr) throws JSchException {
        String str;
        if (bArr == null || Arrays.equals(bArr, e)) {
            str = "PBKDF2WithHmacSHA1";
        } else if (Arrays.equals(bArr, f)) {
            str = "PBKDF2WithHmacSHA224";
        } else if (Arrays.equals(bArr, g)) {
            str = "PBKDF2WithHmacSHA256";
        } else if (Arrays.equals(bArr, h)) {
            str = "PBKDF2WithHmacSHA384";
        } else if (Arrays.equals(bArr, i)) {
            str = "PBKDF2WithHmacSHA512";
        } else if (Arrays.equals(bArr, j)) {
            str = "PBKDF2WithHmacSHA512/224";
        } else {
            str = Arrays.equals(bArr, k) ? "PBKDF2WithHmacSHA512/256" : null;
        }
        if (str != null) {
            return str;
        }
        StringBuilder sb = new StringBuilder("unsupported pbkdf2 function oid: ");
        StringBuilder sb2 = new StringBuilder();
        int i2 = 0;
        while (i2 < bArr.length) {
            String hexString = Integer.toHexString(bArr[i2] & 255);
            StringBuilder sb3 = new StringBuilder("0x");
            sb3.append(hexString.length() == 1 ? "0" : "");
            sb3.append(hexString);
            sb2.append(sb3.toString());
            i2++;
            if (i2 < bArr.length) {
                sb2.append(":");
            }
        }
        sb.append(sb2.toString());
        throw new JSchException(sb.toString());
    }

    @Override // com.jcraft.jsch.KDF
    public final byte[] getKey(byte[] bArr, int i2) {
        char[] cArr = new char[bArr.length];
        for (int i3 = 0; i3 < bArr.length; i3++) {
            cArr[i3] = (char) (bArr[i3] & 255);
        }
        try {
            return this.a.generateSecret(new PBEKeySpec(cArr, this.b, this.c, i2 * 8)).getEncoded();
        } catch (InvalidKeySpecException unused) {
            return null;
        }
    }

    @Override // com.jcraft.jsch.KDF
    public final void initWithASN1(byte[] bArr) throws Exception {
        ASN1 asn1;
        try {
            ASN1 asn2 = new ASN1(bArr);
            if (!asn2.isSEQUENCE()) {
                throw new ASN1Exception();
            }
            ASN1[] contents = asn2.getContents();
            if (contents.length < 2 || contents.length > 4) {
                throw new ASN1Exception();
            }
            if (!contents[0].isOCTETSTRING()) {
                throw new ASN1Exception();
            }
            if (!contents[1].isINTEGER()) {
                throw new ASN1Exception();
            }
            byte[] content = null;
            if (contents.length == 4) {
                if (!contents[2].isINTEGER()) {
                    throw new ASN1Exception();
                }
                if (!contents[3].isSEQUENCE()) {
                    throw new ASN1Exception();
                }
                asn1 = contents[3];
            } else if (contents.length != 3) {
                asn1 = null;
            } else if (contents[2].isSEQUENCE()) {
                asn1 = contents[2];
            } else {
                if (!contents[2].isINTEGER()) {
                    throw new ASN1Exception();
                }
                asn1 = null;
            }
            this.b = contents[0].getContent();
            this.c = ASN1.parseASN1IntegerAsInt(contents[1].getContent());
            if (asn1 != null) {
                ASN1[] contents2 = asn1.getContents();
                if (contents2.length != 2) {
                    throw new ASN1Exception();
                }
                if (!contents2[0].isOBJECT()) {
                    throw new ASN1Exception();
                }
                if (!contents2[1].isNULL()) {
                    throw new ASN1Exception();
                }
                content = contents2[0].getContent();
            }
            String strA = a(content);
            this.d = strA;
            this.a = SecretKeyFactory.getInstance(strA);
        } catch (Exception e2) {
            if (e2 instanceof JSchException) {
                throw ((JSchException) e2);
            }
            if (e2 instanceof NoSuchAlgorithmException) {
                throw new JSchException("unsupported pbkdf2 algorithm: " + this.d, e2);
            }
            if (!(e2 instanceof ASN1Exception) && !(e2 instanceof ArithmeticException)) {
                throw new JSchException("pbkdf2 unavailable", e2);
            }
            throw new JSchException("invalid ASN1", e2);
        }
    }
}
