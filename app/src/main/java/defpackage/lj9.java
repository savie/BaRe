package defpackage;

import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lj9 extends jb9 implements Serializable {
    public final MessageDigest M;
    public final int N;
    public final boolean O;
    public final String P;

    public lj9() {
        boolean z;
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            this.M = messageDigest;
            this.N = messageDigest.getDigestLength();
            this.P = "Hashing.sha256()";
            try {
                messageDigest.clone();
                z = true;
            } catch (CloneNotSupportedException unused) {
                z = false;
            }
            this.O = z;
        } catch (NoSuchAlgorithmException e) {
            e6.e(e);
            throw null;
        }
    }

    public final String toString() {
        return this.P;
    }
}
