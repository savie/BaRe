package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rb0 implements a98 {
    public final List a;

    public rb0(List list) {
        if (list != null) {
            this.a = list;
        } else {
            f6.n("Null entries");
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof rb0) {
            return this.a.equals(((rb0) obj).a);
        }
        return false;
    }

    @Override // defpackage.a98
    public final void forEach(qn8 qn8Var) {
        int i = 0;
        while (true) {
            List list = this.a;
            if (i >= list.size()) {
                return;
            }
            qn8Var.accept((String) list.get(i), (String) list.get(i + 1));
            i += 2;
        }
    }

    public final int hashCode() {
        return this.a.hashCode() ^ 1000003;
    }

    @Override // defpackage.a98
    public final boolean isEmpty() {
        return this.a.isEmpty();
    }

    public final String toString() {
        return dj7.o(new StringBuilder("ArrayBasedTraceState{entries="), this.a, "}");
    }
}
