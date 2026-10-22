package defpackage;

import java.security.GeneralSecurityException;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class k48 {
    public final int a;
    public final List b;

    public k48(int i, List list) {
        this.a = i;
        this.b = list;
    }

    public final i48 a() throws GeneralSecurityException {
        Object next;
        Iterator it = this.b.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            i48 i48Var = (i48) next;
            if (i48Var.c == this.a && i48Var.d == 1) {
                break;
            }
        }
        i48 i48Var2 = (i48) next;
        if (i48Var2 != null) {
            return i48Var2;
        }
        m0.h("Primary key not found");
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k48)) {
            return false;
        }
        k48 k48Var = (k48) obj;
        return this.a == k48Var.a && this.b.equals(k48Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "TinkKeyset(primaryKeyId=" + this.a + ", keys=" + this.b + ")";
    }
}
