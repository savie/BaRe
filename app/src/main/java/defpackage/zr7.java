package defpackage;

import android.content.Context;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zr7 implements z23 {
    public final Object a;
    public final Object b;
    public final Object c;
    public final Object d;
    public final Object e;
    public final Object f;
    public final Object k;

    public zr7(km5 km5Var, us2 us2Var, ix0 ix0Var) {
        this.d = new zq7();
        this.f = new ReentrantReadWriteLock();
        this.a = km5Var;
        this.e = us2Var;
        this.k = ix0Var;
        this.b = new HashMap(256);
        this.c = new HashMap(256);
    }

    public xr7[] a(AutoCloseable autoCloseable) {
        ReentrantReadWriteLock.ReadLock lock = ((ReentrantReadWriteLock) this.f).readLock();
        try {
            lock.lock();
            return (xr7[]) ((HashMap) this.c).get(autoCloseable.getClass());
        } finally {
            lock.unlock();
        }
    }

    public void b(AutoCloseable autoCloseable, xr7[] xr7VarArr) {
        HashMap map = (HashMap) this.b;
        ReentrantReadWriteLock.WriteLock writeLock = ((ReentrantReadWriteLock) this.f).writeLock();
        try {
            writeLock.lock();
            xr7[] xr7VarArrA = a(autoCloseable);
            if (xr7VarArrA == null) {
                for (xr7 xr7Var : xr7VarArr) {
                    xr7Var.a(autoCloseable);
                    for (Class cls : xr7Var.d.a.h) {
                        ArrayList arrayList = (ArrayList) map.get(cls);
                        if (arrayList == null) {
                            arrayList = new ArrayList(8);
                            map.put(cls, arrayList);
                        }
                        arrayList.add(xr7Var);
                    }
                }
                ((HashMap) this.c).put(autoCloseable.getClass(), xr7VarArr);
            } else {
                for (xr7 xr7Var2 : xr7VarArrA) {
                    xr7Var2.a(autoCloseable);
                }
            }
            writeLock.unlock();
        } catch (Throwable th) {
            writeLock.unlock();
            throw th;
        }
    }

    @Override // defpackage.ea6
    public Object get() {
        return new fg8((Context) ((ea6) this.a).get(), (mf5) ((ea6) this.b).get(), (mw6) ((ea6) this.c).get(), (e41) ((l22) this.d).get(), (Executor) ((ea6) this.e).get(), (mw6) ((ea6) this.f).get(), new b05(), new sl4(), (mw6) ((ea6) this.k).get());
    }

    public zr7(ea6 ea6Var, ea6 ea6Var2, ea6 ea6Var3, l22 l22Var, ea6 ea6Var4, ea6 ea6Var5, ea6 ea6Var6) {
        this.a = ea6Var;
        this.b = ea6Var2;
        this.c = ea6Var3;
        this.d = l22Var;
        this.e = ea6Var4;
        this.f = ea6Var5;
        this.k = ea6Var6;
    }
}
