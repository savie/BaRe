package defpackage;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hh7 implements os1 {
    public final /* synthetic */ lh7 a;

    public hh7(lh7 lh7Var) {
        this.a = lh7Var;
    }

    @Override // defpackage.os1
    public final void a(boolean z) {
        ArrayList arrayList;
        xh8.c();
        synchronized (this.a) {
            arrayList = new ArrayList(this.a.b);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((os1) it.next()).a(z);
        }
    }
}
