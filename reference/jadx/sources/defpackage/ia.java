package defpackage;

import android.util.Base64;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ia {
    public final SecretKey a;
    public final SecretKeySpec b;

    public ia(SecretKey secretKey, SecretKeySpec secretKeySpec) {
        this.a = secretKey;
        this.b = secretKeySpec;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ia.class != obj.getClass()) {
            return false;
        }
        ia iaVar = (ia) obj;
        return this.b.equals(iaVar.b) && this.a.equals(iaVar.a);
    }

    public final int hashCode() {
        return this.b.hashCode() + ((this.a.hashCode() + 31) * 31);
    }

    public final String toString() {
        return Base64.encodeToString(this.a.getEncoded(), 2) + ":" + Base64.encodeToString(this.b.getEncoded(), 2);
    }
}
