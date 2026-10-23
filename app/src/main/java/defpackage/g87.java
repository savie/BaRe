package defpackage;

import java.security.MessageDigest;
import javax.crypto.SecretKey;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class g87 {

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class a extends g87 {
        public final v64.c a;
        public final v64.c b;

        public a(SecretKey secretKey) throws rg5 {
            if (secretKey == null || !secretKey.getAlgorithm().equals("AES") || secretKey.getEncoded().length != 32) {
                c6.f("Secret key must be 256 bit AES key");
                throw null;
            }
            if (secretKey.isDestroyed()) {
                c6.f("Secret key already destroyed");
                throw null;
            }
            byte[] encoded = secretKey.getEncoded();
            String strA = y51.a(encoded);
            int length = encoded.length;
            MessageDigest messageDigest = new y51.e().a;
            messageDigest.update(encoded, 0, length);
            String strA2 = y51.a(messageDigest.digest());
            this.a = new v64.c("X-Amz-Server-Side-Encryption-Customer-Algorithm", "AES256", "X-Amz-Server-Side-Encryption-Customer-Key", strA, "X-Amz-Server-Side-Encryption-Customer-Key-Md5", strA2);
            this.b = new v64.c("X-Amz-Copy-Source-Server-Side-Encryption-Customer-Algorithm", "AES256", "X-Amz-Copy-Source-Server-Side-Encryption-Customer-Key", strA, "X-Amz-Copy-Source-Server-Side-Encryption-Customer-Key-Md5", strA2);
        }

        @Override // defpackage.g87
        public final v64.c a() {
            return this.a;
        }

        public final String toString() {
            return "SSE-C";
        }
    }

    static {
        new v64.c();
    }

    public abstract v64.c a();
}
