package defpackage;

import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ln2 extends v3 {
    public final Iterator c;
    public final HashSet d;

    public ln2(Iterator it, hi hiVar) {
        it.getClass();
        this.c = it;
        this.d = new HashSet();
    }

    @Override // defpackage.v3
    public final void a() {
        Object next;
        do {
            Iterator it = this.c;
            if (!it.hasNext()) {
                this.a = 2;
                return;
            }
            next = it.next();
        } while (!this.d.add(next));
        this.b = next;
        this.a = 1;
    }
}
