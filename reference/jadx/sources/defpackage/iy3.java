package defpackage;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class iy3 implements ThreadFactory {
    public final hy3 a;
    public final String b;
    public final lk c;
    public final boolean d;
    public final AtomicInteger e;

    public iy3(hy3 hy3Var, String str, boolean z) {
        lk lkVar = lk.a;
        this.e = new AtomicInteger();
        this.a = hy3Var;
        this.b = str;
        this.c = lkVar;
        this.d = z;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        i8 i8Var = new i8(4, this, runnable);
        this.a.getClass();
        gy3 gy3Var = new gy3(i8Var);
        gy3Var.setName("glide-" + this.b + "-thread-" + this.e.getAndIncrement());
        return gy3Var;
    }
}
