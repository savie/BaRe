package defpackage;

import java.io.Closeable;
import java.io.IOException;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class av6 implements Closeable {
    public static final l15 e = o15.b(av6.class);
    public ConcurrentHashMap a;
    public yf1 b;
    public di7 c;
    public cv6 d;

    @o24
    private void a(wr1 wr1Var) {
        synchronized (this) {
            try {
                String str = wr1Var.a + ":" + wr1Var.b;
                this.a.remove(str);
                yf1 yf1Var = this.b;
                String str2 = wr1Var.a;
                ReentrantLock reentrantLock = (ReentrantLock) yf1Var.b;
                reentrantLock.lock();
                try {
                    ((HashMap) yf1Var.c).remove(str2);
                    reentrantLock.unlock();
                    e.D(str, "Connection to << {} >> closed");
                } catch (Throwable th) {
                    reentrantLock.unlock();
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final ur1 b(int i, String str) {
        synchronized (this) {
            try {
                String str2 = str + ":" + i;
                ur1 ur1Var = (ur1) this.a.get(str2);
                if (ur1Var != null && ur1Var.a.getAndIncrement() <= 0) {
                    ur1Var = null;
                }
                if (ur1Var != null && ur1Var.y.e()) {
                    return ur1Var;
                }
                ur1 ur1Var2 = new ur1(this.c, this, this.d, this.b);
                try {
                    ur1Var2.g(i, str);
                    this.a.put(str2, ur1Var2);
                    return ur1Var2;
                } catch (IOException e2) {
                    AutoCloseable[] autoCloseableArr = {ur1Var2};
                    int i2 = o84.a;
                    AutoCloseable autoCloseable = autoCloseableArr[0];
                    if (autoCloseable != null) {
                        try {
                            eq3.r(autoCloseable);
                        } catch (Exception unused) {
                        }
                    }
                    throw e2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        l15 l15Var = e;
        l15Var.w("Going to close all remaining connections");
        for (ur1 ur1Var : this.a.values()) {
            try {
                ur1Var.b(false);
            } catch (Exception e2) {
                l15Var.D(ur1Var.h(), "Error closing connection to host {}");
                l15Var.v("Exception was: ", e2);
            }
        }
    }
}
