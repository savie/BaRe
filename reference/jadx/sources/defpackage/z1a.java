package defpackage;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class z1a implements yu9 {
    public final b2a a;
    public final String b;
    public final SecretKeySpec c;
    public final int d;

    public z1a(String str, SecretKeySpec secretKeySpec) throws GeneralSecurityException {
        b2a b2aVar = new b2a(this);
        this.a = b2aVar;
        if (!u48.c(2)) {
            m0.h("Can not use HMAC in FIPS-mode, as BoringCrypto module is not available.");
            throw null;
        }
        this.b = str;
        this.c = secretKeySpec;
        if (secretKeySpec.getEncoded().length < 16) {
            throw new InvalidAlgorithmParameterException("key size too small, need at least 16 bytes");
        }
        switch (str) {
            case "HMACSHA1":
                this.d = 20;
                break;
            case "HMACSHA224":
                this.d = 28;
                break;
            case "HMACSHA256":
                this.d = 32;
                break;
            case "HMACSHA384":
                this.d = 48;
                break;
            case "HMACSHA512":
                this.d = 64;
                break;
            default:
                throw new NoSuchAlgorithmException("unknown Hmac algorithm: ".concat(str));
        }
        b2aVar.get();
    }

    @Override // defpackage.yu9
    public final byte[] a(byte[] bArr, int i) throws InvalidAlgorithmParameterException {
        if (i > this.d) {
            throw new InvalidAlgorithmParameterException("tag size too big");
        }
        b2a b2aVar = this.a;
        ((Mac) b2aVar.get()).update(bArr);
        return Arrays.copyOf(((Mac) b2aVar.get()).doFinal(), i);
    }
}
