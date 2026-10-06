package defpackage;

import android.database.ContentObserver;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sb9 extends ContentObserver {
    public final /* synthetic */ tb9 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sb9(tb9 tb9Var) {
        super(null);
        this.a = tb9Var;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        tb9 tb9Var = this.a;
        synchronized (tb9Var.d) {
            tb9Var.e = null;
            je9.h.incrementAndGet();
        }
        synchronized (tb9Var) {
            try {
                Iterator it = tb9Var.f.iterator();
                if (it.hasNext()) {
                    if (it.next() != null) {
                        throw new ClassCastException();
                    }
                    throw null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
