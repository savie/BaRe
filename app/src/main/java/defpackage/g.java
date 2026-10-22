package defpackage;

import java.io.IOException;
import java.io.InputStream;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class g extends InputStream {
    public final InputStream a;
    public final kk1 b;
    public final String c;
    public final byte[] d;
    public boolean e;
    public CipherInputStream f;

    public g(InputStream inputStream, kk1 kk1Var, String str, byte[] bArr) {
        this.a = inputStream;
        this.b = kk1Var;
        this.c = str;
        this.d = bArr;
    }

    public final CipherInputStream a() throws IOException {
        CipherInputStream cipherInputStream;
        byte[] bArrDigest;
        if (this.e) {
            return this.f;
        }
        kk1 kk1Var = this.b;
        byte[] bArr = kk1Var.d;
        String str = this.c;
        if (bArr == null) {
            y5.m(xs1.j("Missing AES256 properties in ", str));
            return null;
        }
        if (bArr.length < 2) {
            y5.m(xs1.j("AES256 properties too short in ", str));
            return null;
        }
        int i = bArr[0];
        int i2 = i & 255;
        int i3 = i & 63;
        int i4 = bArr[1];
        int i5 = ((i2 >> 6) & 1) + (i4 & 15);
        int i6 = ((i2 >> 7) & 1) + ((i4 & 255) >> 4);
        int i7 = i6 + 2;
        if (i7 + i5 > bArr.length) {
            y5.m(xs1.j("Salt size + IV size too long in ", str));
            return null;
        }
        byte[] bArr2 = new byte[i6];
        System.arraycopy(bArr, 2, bArr2, 0, i6);
        byte[] bArr3 = new byte[16];
        System.arraycopy(kk1Var.d, i7, bArr3, 0, i5);
        byte[] bArr4 = this.d;
        if (bArr4 == null) {
            throw new tx5(eq3.k("Cannot read encrypted content from ", str, " without a password."));
        }
        if (i3 == 63) {
            bArrDigest = new byte[32];
            System.arraycopy(bArr2, 0, bArrDigest, 0, i6);
            System.arraycopy(bArr4, 0, bArrDigest, i6, Math.min(bArr4.length, 32 - i6));
            cipherInputStream = null;
        } else {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
                byte[] bArr5 = new byte[8];
                for (long j = 0; j < (1 << i3); j++) {
                    messageDigest.update(bArr2);
                    messageDigest.update(bArr4);
                    messageDigest.update(bArr5);
                    for (int i8 = 0; i8 < 8; i8++) {
                        byte b = (byte) (bArr5[i8] + 1);
                        bArr5[i8] = b;
                        if (b != 0) {
                            break;
                        }
                    }
                }
                cipherInputStream = null;
                bArrDigest = messageDigest.digest();
            } catch (NoSuchAlgorithmException e) {
                cipherInputStream = null;
                e6.j("SHA-256 is unsupported by your Java implementation", e);
                bArrDigest = null;
            }
        }
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArrDigest, "AES");
        try {
            Cipher cipher = Cipher.getInstance("AES/CBC/NoPadding");
            cipher.init(2, secretKeySpec, new IvParameterSpec(bArr3));
            CipherInputStream cipherInputStream2 = new CipherInputStream(this.a, cipher);
            this.f = cipherInputStream2;
            this.e = true;
            return cipherInputStream2;
        } catch (GeneralSecurityException e2) {
            e6.j("Decryption error (do you have the JCE Unlimited Strength Jurisdiction Policy Files installed?)", e2);
            return cipherInputStream;
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        CipherInputStream cipherInputStream = this.f;
        if (cipherInputStream != null) {
            cipherInputStream.close();
        }
    }

    @Override // java.io.InputStream
    public final int read() {
        return a().read();
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        return a().read(bArr, i, i2);
    }
}
