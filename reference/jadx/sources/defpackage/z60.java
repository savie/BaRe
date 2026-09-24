package defpackage;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class z60 {
    public static final y60 h = new y60();
    public final z28 a;
    public final km8 b;
    public List e;
    public int g;
    public final CopyOnWriteArrayList d = new CopyOnWriteArrayList();
    public List f = Collections.EMPTY_LIST;
    public final y60 c = h;

    public z60(z28 z28Var, km8 km8Var) {
        this.a = z28Var;
        this.b = km8Var;
    }

    public final void a() {
        Iterator it = this.d.iterator();
        while (it.hasNext()) {
            mt4 mt4Var = ((jw4) it.next()).a;
        }
    }
}
