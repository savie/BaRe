package defpackage;

import java.security.MessageDigest;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ia2 implements jo4 {
    public final jo4 b;
    public final jo4 c;

    public ia2(jo4 jo4Var, jo4 jo4Var2) {
        this.b = jo4Var;
        this.c = jo4Var2;
    }

    @Override // defpackage.jo4
    public final void b(MessageDigest messageDigest) {
        this.b.b(messageDigest);
        this.c.b(messageDigest);
    }

    @Override // defpackage.jo4
    public final boolean equals(Object obj) {
        if (obj instanceof ia2) {
            ia2 ia2Var = (ia2) obj;
            if (this.b.equals(ia2Var.b) && this.c.equals(ia2Var.c)) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.jo4
    public final int hashCode() {
        return this.c.hashCode() + (this.b.hashCode() * 31);
    }

    public final String toString() {
        return "DataCacheKey{sourceKey=" + this.b + ", signature=" + this.c + '}';
    }
}
