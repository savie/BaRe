package defpackage;

import java.util.HashMap;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wt6 extends tt6 {
    public static final l15 k = o15.b(wt6.class);
    public final jt6 e;
    public final gd f;

    public wt6(jt6 jt6Var, gd gdVar) {
        super(4, false);
        this.e = jt6Var;
        this.f = gdVar;
    }

    @Override // defpackage.tt6
    public final void H(st6 st6Var) throws va8 {
        Long lValueOf = Long.valueOf(((ut6) st6Var.a).f);
        gd gdVar = this.f;
        jk6 jk6VarJ = gdVar.j(lValueOf);
        try {
            jt6 jt6Var = this.e;
            ev6 ev6Var = jk6VarJ.b;
            jt6Var.getClass();
            rt6 rt6VarA = jt6.a(ev6Var, st6Var);
            Long lValueOf2 = Long.valueOf(((ut6) rt6VarA.c()).f);
            ReentrantReadWriteLock reentrantReadWriteLock = (ReentrantReadWriteLock) gdVar.b;
            reentrantReadWriteLock.writeLock().lock();
            try {
                jk6 jk6Var = (jk6) ((HashMap) gdVar.c).remove(lValueOf2);
                if (jk6Var == null) {
                    throw new gv6("Unable to find outstanding request for messageId " + lValueOf2);
                }
                ((HashMap) gdVar.d).remove(jk6Var.d);
                reentrantReadWriteLock.writeLock().unlock();
                m86 m86Var = jk6Var.a;
                ReentrantLock reentrantLock = (ReentrantLock) m86Var.e;
                reentrantLock.lock();
                try {
                    ((l15) m86Var.b).m((String) m86Var.c, rt6VarA, "Setting << {} >> to `{}`");
                    m86Var.k = rt6VarA;
                    ((Condition) m86Var.f).signalAll();
                } finally {
                    reentrantLock.unlock();
                }
            } catch (Throwable th) {
                reentrantReadWriteLock.writeLock().unlock();
                throw th;
            }
        } catch (iw0 e) {
            k.t(st6Var, "Failed to deserialize SMB2 Packet Data of {}");
            throw new va8("Unable to deserialize SMB2 Packet Data.", e);
        }
    }
}
