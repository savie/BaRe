package defpackage;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ah5 extends ArrayList {
    public final void c(db8 db8Var) {
        int i = db8Var.t;
        int size = size();
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 >= size) {
                add(null);
            }
            int i3 = i - 1;
            if (i2 == i3) {
                set(i3, db8Var);
            }
        }
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        Iterator<E> it = iterator();
        while (it.hasNext()) {
            db8 db8Var = (db8) it.next();
            if (db8Var != null && !db8Var.isEmpty()) {
                return false;
            }
        }
        return true;
    }
}
