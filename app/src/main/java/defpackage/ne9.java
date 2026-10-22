package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ne9 {
    public static final k50 a = new k50(0);

    public static synchronized void a() {
        k50 k50Var = a;
        Iterator it = ((i50) k50Var.values()).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            throw null;
        }
        k50Var.clear();
    }
}
