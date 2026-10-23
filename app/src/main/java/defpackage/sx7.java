package defpackage;

import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sx7 implements du4 {
    public final Set a = Collections.newSetFromMap(new WeakHashMap());

    @Override // defpackage.du4
    public final void e() {
        Iterator it = xh8.p(this.a).iterator();
        while (it.hasNext()) {
            ((px7) it.next()).e();
        }
    }

    @Override // defpackage.du4
    public final void h() {
        Iterator it = xh8.p(this.a).iterator();
        while (it.hasNext()) {
            ((px7) it.next()).h();
        }
    }

    @Override // defpackage.du4
    public final void m() {
        Iterator it = xh8.p(this.a).iterator();
        while (it.hasNext()) {
            ((px7) it.next()).m();
        }
    }
}
