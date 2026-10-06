package defpackage;

import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPublicKeySpec;
import java.util.Arrays;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class o1a implements ca9 {
    public final ECPrivateKey a;
    public final zq8 b;
    public final String c;
    public final byte[] d;
    public final r1a e;
    public final fr9 f;
    public final byte[] g;

    public o1a(ECPrivateKey eCPrivateKey, byte[] bArr, String str, r1a r1aVar, fr9 fr9Var, byte[] bArr2) {
        this.a = eCPrivateKey;
        zq8 zq8Var = new zq8(22, false);
        zq8Var.b = eCPrivateKey;
        this.b = zq8Var;
        this.d = bArr;
        this.c = str;
        this.e = r1aVar;
        this.f = fr9Var;
        this.g = bArr2;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0036  */
    /* JADX WARN: Code duplicated, block: B:17:0x0089  */
    /* JADX WARN: Code duplicated, block: B:19:0x008e  */
    /* JADX WARN: Code duplicated, block: B:20:0x009d  */
    /* JADX WARN: Code duplicated, block: B:24:0x00c9 A[LOOP:0: B:22:0x00b7->B:24:0x00c9, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:27:0x00db  */
    /* JADX WARN: Code duplicated, block: B:29:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:33:0x00d2 A[SYNTHETIC] */
    @Override // defpackage.ca9
    public final byte[] zza(byte[] bArr) throws GeneralSecurityException {
        int i;
        int i2;
        fr9 fr9Var;
        int iZza;
        byte[] bArrN;
        String str;
        Mac mac;
        byte[] bArr2;
        byte[] bArr3;
        byte[] bArrDoFinal;
        int length;
        byte[] bArr4 = this.g;
        if (!au9.b(bArr4, bArr)) {
            m0.h("Invalid ciphertext (output prefix mismatch)");
            return null;
        }
        int length2 = bArr4.length;
        int iK = zm5.K(this.a.getParams().getCurve());
        r1a r1aVar = this.e;
        int iOrdinal = r1aVar.ordinal();
        int i3 = 1;
        if (iOrdinal != 0) {
            if (iOrdinal != 1) {
                if (iOrdinal != 2) {
                    m0.h("unknown EC point format");
                    return null;
                }
                i = iK * 2;
            }
            i2 = i + length2;
            if (bArr.length >= i2) {
                m0.h("ciphertext too short");
                return null;
            }
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, length2, i2);
            fr9Var = this.f;
            iZza = fr9Var.zza();
            ECPrivateKey eCPrivateKey = (ECPrivateKey) this.b.b;
            ECParameterSpec params = eCPrivateKey.getParams();
            bArrN = z85.N(bArrCopyOfRange, zm5.P(eCPrivateKey, (ECPublicKey) ((KeyFactory) s1a.f.a.zza("EC")).generatePublic(new ECPublicKeySpec(zm5.N(params.getCurve(), r1aVar, bArrCopyOfRange), params))));
            t1a t1aVar = s1a.c.a;
            str = this.c;
            mac = (Mac) t1aVar.zza(str);
            if (iZza <= mac.getMacLength() * 255) {
                m0.h("size too large");
                return null;
            }
            bArr2 = this.d;
            if (bArr2.length == 0) {
                mac.init(new SecretKeySpec(new byte[mac.getMacLength()], str));
            } else {
                mac.init(new SecretKeySpec(bArr2, str));
            }
            byte[] bArrDoFinal2 = mac.doFinal(bArrN);
            bArr3 = new byte[iZza];
            mac.init(new SecretKeySpec(bArrDoFinal2, str));
            bArrDoFinal = new byte[0];
            length = 0;
            while (true) {
                mac.update(bArrDoFinal);
                mac.update((byte[]) null);
                mac.update((byte) i3);
                bArrDoFinal = mac.doFinal();
                if (bArrDoFinal.length + length < iZza) {
                    System.arraycopy(bArrDoFinal, 0, bArr3, length, iZza - length);
                    return fr9Var.a(i2, bArr3, bArr);
                }
                System.arraycopy(bArrDoFinal, 0, bArr3, length, bArrDoFinal.length);
                length += bArrDoFinal.length;
                i3++;
            }
        } else {
            iK *= 2;
        }
        i = iK + 1;
        i2 = i + length2;
        if (bArr.length >= i2) {
            m0.h("ciphertext too short");
            return null;
        }
        byte[] bArrCopyOfRange2 = Arrays.copyOfRange(bArr, length2, i2);
        fr9Var = this.f;
        iZza = fr9Var.zza();
        ECPrivateKey eCPrivateKey2 = (ECPrivateKey) this.b.b;
        ECParameterSpec params2 = eCPrivateKey2.getParams();
        bArrN = z85.N(bArrCopyOfRange2, zm5.P(eCPrivateKey2, (ECPublicKey) ((KeyFactory) s1a.f.a.zza("EC")).generatePublic(new ECPublicKeySpec(zm5.N(params2.getCurve(), r1aVar, bArrCopyOfRange2), params2))));
        t1a t1aVar2 = s1a.c.a;
        str = this.c;
        mac = (Mac) t1aVar2.zza(str);
        if (iZza <= mac.getMacLength() * 255) {
            m0.h("size too large");
            return null;
        }
        bArr2 = this.d;
        if (bArr2.length == 0) {
            mac.init(new SecretKeySpec(new byte[mac.getMacLength()], str));
        } else {
            mac.init(new SecretKeySpec(bArr2, str));
        }
        byte[] bArrDoFinal3 = mac.doFinal(bArrN);
        bArr3 = new byte[iZza];
        mac.init(new SecretKeySpec(bArrDoFinal3, str));
        bArrDoFinal = new byte[0];
        length = 0;
        while (true) {
            mac.update(bArrDoFinal);
            mac.update((byte[]) null);
            mac.update((byte) i3);
            bArrDoFinal = mac.doFinal();
            if (bArrDoFinal.length + length < iZza) {
                System.arraycopy(bArrDoFinal, 0, bArr3, length, iZza - length);
                return fr9Var.a(i2, bArr3, bArr);
            }
            System.arraycopy(bArrDoFinal, 0, bArr3, length, bArrDoFinal.length);
            length += bArrDoFinal.length;
            i3++;
        }
    }
}
