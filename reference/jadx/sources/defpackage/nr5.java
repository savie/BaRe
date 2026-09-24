package defpackage;

import java.security.MessageDigest;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nr5 implements jo4 {
    public final Object b;

    public nr5(Object obj) {
        ms8.j(obj, "Argument must not be null");
        this.b = obj;
    }

    @Override // defpackage.jo4
    public final void b(MessageDigest messageDigest) {
        messageDigest.update(this.b.toString().getBytes(jo4.a));
    }

    @Override // defpackage.jo4
    public final boolean equals(Object obj) {
        if (obj instanceof nr5) {
            return this.b.equals(((nr5) obj).b);
        }
        return false;
    }

    @Override // defpackage.jo4
    public final int hashCode() {
        return this.b.hashCode();
    }

    public final String toString() {
        return "ObjectKey{object=" + this.b + '}';
    }
}
