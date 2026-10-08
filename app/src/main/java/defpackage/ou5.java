package defpackage;

import java.security.MessageDigest;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ou5 implements jo4 {
    public final iz0 b = new iz0(0);

    @Override // defpackage.jo4
    public final void b(MessageDigest messageDigest) {
        int i = 0;
        while (true) {
            iz0 iz0Var = this.b;
            if (i >= iz0Var.c) {
                return;
            }
            iu5 iu5Var = (iu5) iz0Var.g(i);
            Object objK = this.b.k(i);
            hu5 hu5Var = iu5Var.b;
            if (iu5Var.d == null) {
                iu5Var.d = iu5Var.c.getBytes(jo4.a);
            }
            hu5Var.b(iu5Var.d, objK, messageDigest);
            i++;
        }
    }

    public final Object c(iu5 iu5Var) {
        iz0 iz0Var = this.b;
        return iz0Var.containsKey(iu5Var) ? iz0Var.get(iu5Var) : iu5Var.a;
    }

    @Override // defpackage.jo4
    public final boolean equals(Object obj) {
        if (obj instanceof ou5) {
            return this.b.equals(((ou5) obj).b);
        }
        return false;
    }

    @Override // defpackage.jo4
    public final int hashCode() {
        return this.b.hashCode();
    }

    public final String toString() {
        return "Options{values=" + this.b + '}';
    }
}
