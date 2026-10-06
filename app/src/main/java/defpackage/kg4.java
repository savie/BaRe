package defpackage;

import java.util.LinkedHashMap;
import java.util.concurrent.locks.ReentrantLock;
import org.swiftapps.swiftbackup.database.MDatabase_Impl;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class kg4 {
    public final MDatabase_Impl a;
    public final mb8 b;
    public final LinkedHashMap c;
    public final ReentrantLock d;
    public final cl e;
    public final dl f;
    public final h80 g;
    public final Object h;

    public kg4(MDatabase_Impl mDatabase_Impl, LinkedHashMap linkedHashMap, LinkedHashMap linkedHashMap2, String... strArr) {
        this.a = mDatabase_Impl;
        mb8 mb8Var = new mb8(mDatabase_Impl, linkedHashMap, linkedHashMap2, strArr, mDatabase_Impl.j, new oh1(1, this, kg4.class, "notifyInvalidatedObservers", "notifyInvalidatedObservers(Ljava/util/Set;)V", 0, 5));
        this.b = mb8Var;
        this.c = new LinkedHashMap();
        this.d = new ReentrantLock();
        this.e = new cl(this, 11);
        this.f = new dl(this);
        this.g = new h80(mDatabase_Impl);
        this.h = new Object();
        mb8Var.k = new ck(this, 27);
    }

    public final void a() {
        mb8 mb8Var = this.b;
        mb8Var.getClass();
        this.e.getClass();
        dl dlVar = this.f;
        dlVar.getClass();
        if (mb8Var.j.compareAndSet(false, true)) {
            dv1 dv1Var = mb8Var.a.a;
            if (dv1Var != null) {
                l73.v(dv1Var, new tx1(), new hb8(mb8Var, dlVar, null), 2);
            } else {
                pe4.F("coroutineScope");
                throw null;
            }
        }
    }
}
