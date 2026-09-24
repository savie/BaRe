package defpackage;

import java.util.HashMap;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ft6 extends tt6 {
    public static final l15 f = o15.b(ft6.class);
    public gd e;

    @Override // defpackage.tt6
    public final void H(st6 st6Var) {
        dv6 dv6Var = st6Var.a;
        dv6 dv6Var2 = st6Var.a;
        long j = ((ut6) dv6Var).f;
        gd gdVar = this.e;
        Long lValueOf = Long.valueOf(j);
        ReentrantReadWriteLock reentrantReadWriteLock = (ReentrantReadWriteLock) gdVar.b;
        reentrantReadWriteLock.readLock().lock();
        try {
            boolean zContainsKey = ((HashMap) gdVar.c).containsKey(lValueOf);
            reentrantReadWriteLock.readLock().unlock();
            if (!zContainsKey) {
                ut6 ut6Var = (ut6) dv6Var2;
                if (ut6Var.f != -1 || ut6Var.e != it6.SMB2_OPLOCK_BREAK) {
                    f.t(Long.valueOf(j), "Received response with unknown sequence number << {} >>");
                    ((ol1) this.b).t(new kd2(dv6Var2));
                    return;
                }
            }
            ((ol1) this.b).t(st6Var);
        } catch (Throwable th) {
            reentrantReadWriteLock.readLock().unlock();
            throw th;
        }
    }
}
