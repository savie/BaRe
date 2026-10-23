package defpackage;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wl4 implements fg6 {
    public static final wl4 a = new wl4();

    @Override // defpackage.fg6
    public final qw0 u() {
        SoftReference softReference;
        ThreadLocal threadLocal = rw0.b;
        SoftReference softReference2 = (SoftReference) threadLocal.get();
        qw0 qw0Var = softReference2 == null ? null : (qw0) softReference2.get();
        if (qw0Var == null) {
            qw0Var = new qw0();
            la laVar = rw0.a;
            if (laVar != null) {
                ReferenceQueue referenceQueue = (ReferenceQueue) laVar.b;
                softReference = new SoftReference(qw0Var, referenceQueue);
                ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) laVar.a;
                concurrentHashMap.put(softReference, Boolean.TRUE);
                while (true) {
                    SoftReference softReference3 = (SoftReference) referenceQueue.poll();
                    if (softReference3 == null) {
                        break;
                    }
                    concurrentHashMap.remove(softReference3);
                }
            } else {
                softReference = new SoftReference(qw0Var);
            }
            threadLocal.set(softReference);
        }
        return qw0Var;
    }
}
