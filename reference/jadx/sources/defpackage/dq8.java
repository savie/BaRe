package defpackage;

import java.lang.ref.WeakReference;
import java.util.Set;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dq8 extends jg4 {
    public final kg4 b;
    public final WeakReference c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dq8(kg4 kg4Var, lo6 lo6Var) {
        super(lo6Var.a);
        lo6Var.getClass();
        this.b = kg4Var;
        this.c = new WeakReference(lo6Var);
    }

    @Override // defpackage.jg4
    public final void a(Set set) {
        int i;
        set.getClass();
        jg4 jg4Var = (jg4) this.c.get();
        if (jg4Var != null) {
            jg4Var.a(set);
            return;
        }
        kg4 kg4Var = this.b;
        kg4Var.getClass();
        ReentrantLock reentrantLock = kg4Var.d;
        reentrantLock.lock();
        try {
            fs5 fs5Var = (fs5) kg4Var.c.remove(this);
            reentrantLock.unlock();
            if (fs5Var != null) {
                mb8 mb8Var = kg4Var.b;
                int[] iArr = fs5Var.b;
                mb8Var.getClass();
                iArr.getClass();
                ds5 ds5Var = mb8Var.h;
                ds5Var.getClass();
                ReentrantLock reentrantLock2 = ds5Var.a;
                reentrantLock2.lock();
                try {
                    int length = iArr.length;
                    int i2 = 0;
                    boolean z = false;
                    while (true) {
                        i = 1;
                        if (i2 >= length) {
                            break;
                        }
                        int i3 = iArr[i2];
                        long[] jArr = ds5Var.b;
                        long j = jArr[i3];
                        jArr[i3] = j - 1;
                        if (j == 1) {
                            ds5Var.d = true;
                            z = true;
                        }
                        i2++;
                    }
                    boolean z2 = z || ds5Var.d || ds5Var.f;
                    reentrantLock2.unlock();
                    if (z2) {
                        zh8.I(new lb2(kg4Var, null, i));
                    }
                } catch (Throwable th) {
                    reentrantLock2.unlock();
                    throw th;
                }
            }
        } catch (Throwable th2) {
            reentrantLock.unlock();
            throw th2;
        }
    }
}
