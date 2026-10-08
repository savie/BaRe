package defpackage;

import java.math.BigInteger;
import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lr9 implements ca9 {
    public static final byte[] g = new byte[0];
    public final la a;
    public final mr9 b;
    public final ia9 c;
    public final hr9 d;
    public final int e;
    public final byte[] f;

    public lr9(la laVar, mr9 mr9Var, ia9 ia9Var, hr9 hr9Var, int i, d2a d2aVar) {
        this.a = laVar;
        this.b = mr9Var;
        this.c = ia9Var;
        this.d = hr9Var;
        this.e = i;
        this.f = d2aVar.b();
    }

    @Override // defpackage.ca9
    public final byte[] zza(byte[] bArr) throws GeneralSecurityException {
        byte[] bArr2;
        byte[] bArrL;
        byte[] bArr3 = this.f;
        int length = bArr3.length + this.e;
        if (bArr.length < length) {
            m0.h("Ciphertext is too short.");
            return null;
        }
        if (!au9.b(bArr3, bArr)) {
            m0.h("Invalid ciphertext (output prefix mismatch)");
            return null;
        }
        byte b = 0;
        byte[] bArr4 = new byte[0];
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, this.f.length, length);
        la laVar = this.a;
        mr9 mr9Var = this.b;
        ia9 ia9Var = this.c;
        hr9 hr9Var = this.d;
        byte[] bArrB = mr9Var.b(bArrCopyOfRange, laVar);
        byte[] bArr5 = or9.a;
        byte[] bArrZza = mr9Var.zza();
        String str = ia9Var.b;
        switch (str.hashCode()) {
            case 984523022:
                if (!str.equals("HmacSha256")) {
                    b = -1;
                }
                break;
            case 984524074:
                b = !str.equals("HmacSha384") ? (byte) -1 : (byte) 1;
                break;
            case 984525777:
                b = !str.equals("HmacSha512") ? (byte) -1 : (byte) 2;
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
                bArr2 = or9.f;
                break;
            case 1:
                bArr2 = or9.g;
                break;
            case 2:
                bArr2 = or9.h;
                break;
            default:
                m0.h("Could not determine HPKE KDF ID");
                return null;
        }
        byte[] bArrN = z85.N(or9.n, bArrZza, bArr2, hr9Var.zzc());
        byte[] bArr6 = or9.l;
        byte[] bArr7 = ny1.k;
        byte[] bArr8 = or9.o;
        Charset charset = au9.a;
        byte[] bArrN2 = z85.N(bArr5, ia9Var.b(z85.N(bArr8, bArrN, "psk_id_hash".getBytes(charset), bArr7), bArr6), ia9Var.b(z85.N(bArr8, bArrN, "info_hash".getBytes(charset), bArr4), bArr6));
        byte[] bArrB2 = ia9Var.b(z85.N(bArr8, bArrN, "secret".getBytes(charset), bArr7), bArrB);
        int iZza = hr9Var.zza();
        byte[] bArrA = ia9Var.a(iZza, bArrB2, z85.N(or9.b(2, iZza), bArr8, bArrN, "key".getBytes(charset), bArrN2));
        byte[] bArrA2 = ia9Var.a(12, bArrB2, z85.N(or9.b(2, 12), bArr8, bArrN, "base_nonce".getBytes(charset), bArrN2));
        BigInteger bigInteger = BigInteger.ONE;
        ny1 ny1Var = new ny1(bArrA, bArrA2, bigInteger.shiftLeft(96).subtract(bigInteger), hr9Var);
        byte[] bArr9 = g;
        synchronized (ny1Var) {
            BigInteger bigInteger2 = (BigInteger) ny1Var.d;
            ((hr9) ny1Var.b).getClass();
            bArrL = z85.L(bArrA2, wx3.I(12, bigInteger2));
            if (((BigInteger) ny1Var.d).compareTo((BigInteger) ny1Var.c) >= 0) {
                throw new GeneralSecurityException("message limit reached");
            }
            ny1Var.d = ((BigInteger) ny1Var.d).add(bigInteger);
        }
        return ((hr9) ny1Var.b).c(bArrA, bArrL, bArr, length, bArr9);
    }
}
