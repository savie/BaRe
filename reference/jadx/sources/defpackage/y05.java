package defpackage;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class y05 {
    private volatile /* synthetic */ Object _next$volatile;
    private volatile /* synthetic */ long _state$volatile;
    public final int a;
    public final boolean b;
    public final int c;
    public final /* synthetic */ AtomicReferenceArray d;
    public static final /* synthetic */ AtomicReferenceFieldUpdater e = AtomicReferenceFieldUpdater.newUpdater(y05.class, Object.class, "_next$volatile");
    public static final /* synthetic */ long h = oh6.a.objectFieldOffset(y05.class.getDeclaredField("_next$volatile"));
    public static final /* synthetic */ AtomicLongFieldUpdater f = AtomicLongFieldUpdater.newUpdater(y05.class, "_state$volatile");
    public static final du9 g = new du9("REMOVE_FROZEN", 2);

    public y05(int i, boolean z) {
        this.a = i;
        this.b = z;
        int i2 = i - 1;
        this.c = i2;
        this.d = new AtomicReferenceArray(i);
        if (i2 > 1073741823) {
            l0.e("Check failed.");
            throw null;
        }
        if ((i & i2) == 0) {
            return;
        }
        l0.e("Check failed.");
        throw null;
    }

    public final int a(Object obj) {
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = f;
            long j = atomicLongFieldUpdater.get(this);
            if ((3458764513820540928L & j) != 0) {
                return (2305843009213693952L & j) != 0 ? 2 : 1;
            }
            int i = (int) (1073741823 & j);
            int i2 = (int) ((1152921503533105152L & j) >> 30);
            int i3 = this.c;
            if (((i2 + 2) & i3) == (i & i3)) {
                return 1;
            }
            boolean z = this.b;
            AtomicReferenceArray atomicReferenceArray = this.d;
            if (z || atomicReferenceArray.get(i2 & i3) == null) {
                y05 y05Var = this;
                if (f.compareAndSet(y05Var, j, ((-1152921503533105153L) & j) | (((long) ((i2 + 1) & 1073741823)) << 30))) {
                    atomicReferenceArray.set(i2 & i3, obj);
                    y05 y05VarD = y05Var;
                    while ((atomicLongFieldUpdater.get(y05VarD) & 1152921504606846976L) != 0) {
                        y05VarD = y05VarD.d();
                        AtomicReferenceArray atomicReferenceArray2 = y05VarD.d;
                        int i4 = y05VarD.c & i2;
                        Object obj2 = atomicReferenceArray2.get(i4);
                        if ((obj2 instanceof x05) && ((x05) obj2).a == i2) {
                            atomicReferenceArray2.set(i4, obj);
                        } else {
                            y05VarD = null;
                        }
                        if (y05VarD == null) {
                            return 0;
                        }
                    }
                    return 0;
                }
                this = y05Var;
            } else {
                int i5 = this.a;
                if (i5 < 1024 || ((i2 - i) & 1073741823) > (i5 >> 1)) {
                    return 1;
                }
            }
        }
    }

    public final y05 b(long j) {
        y05 y05Var;
        while (true) {
            e.getClass();
            Unsafe unsafe = oh6.a;
            long j2 = h;
            y05 y05Var2 = (y05) unsafe.getObjectVolatile(this, j2);
            if (y05Var2 != null) {
                return y05Var2;
            }
            y05 y05Var3 = new y05(this.a * 2, this.b);
            int i = (int) (1073741823 & j);
            int i2 = (int) ((1152921503533105152L & j) >> 30);
            while (true) {
                int i3 = this.c;
                int i4 = i & i3;
                if (i4 == (i3 & i2)) {
                    break;
                }
                Object x05Var = this.d.get(i4);
                if (x05Var == null) {
                    x05Var = new x05(i);
                }
                y05Var3.d.set(y05Var3.c & i, x05Var);
                i++;
            }
            f.set(y05Var3, (-1152921504606846977L) & j);
            while (true) {
                Unsafe unsafe2 = oh6.a;
                y05Var = this;
                if (unsafe2.compareAndSwapObject(y05Var, h, (Object) null, y05Var3) || unsafe2.getObjectVolatile(y05Var, j2) != null) {
                    break;
                }
                this = y05Var;
            }
            this = y05Var;
        }
    }

    public final boolean c() {
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = f;
            long j = atomicLongFieldUpdater.get(this);
            if ((j & 2305843009213693952L) != 0) {
                return true;
            }
            if ((1152921504606846976L & j) != 0) {
                return false;
            }
            y05 y05Var = this;
            if (atomicLongFieldUpdater.compareAndSet(y05Var, j, 2305843009213693952L | j)) {
                return true;
            }
            this = y05Var;
        }
    }

    public final y05 d() {
        long j;
        y05 y05Var;
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = f;
            j = atomicLongFieldUpdater.get(this);
            if ((j & 1152921504606846976L) != 0) {
                y05Var = this;
                break;
            }
            long j2 = 1152921504606846976L | j;
            y05Var = this;
            if (atomicLongFieldUpdater.compareAndSet(y05Var, j, j2)) {
                j = j2;
                break;
            }
            this = y05Var;
        }
        return y05Var.b(j);
    }

    public final Object e() {
        y05 y05VarD = this;
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = f;
            long j = atomicLongFieldUpdater.get(y05VarD);
            if ((j & 1152921504606846976L) != 0) {
                return g;
            }
            int i = (int) (j & 1073741823);
            int i2 = y05VarD.c;
            int i3 = i & i2;
            if ((((int) ((1152921503533105152L & j) >> 30)) & i2) != i3) {
                AtomicReferenceArray atomicReferenceArray = y05VarD.d;
                Object obj = atomicReferenceArray.get(i3);
                boolean z = y05VarD.b;
                if (obj == null) {
                    if (z) {
                    }
                } else if (!(obj instanceof x05)) {
                    long j2 = (i + 1) & 1073741823;
                    if (f.compareAndSet(y05VarD, j, (j & (-1073741824)) | j2)) {
                        atomicReferenceArray.set(i3, null);
                        return obj;
                    }
                    y05VarD = this;
                    if (z) {
                        while (true) {
                            long j3 = atomicLongFieldUpdater.get(y05VarD);
                            int i4 = (int) (j3 & 1073741823);
                            if ((j3 & 1152921504606846976L) != 0) {
                                y05VarD = y05VarD.d();
                            } else {
                                y05 y05Var = y05VarD;
                                if (f.compareAndSet(y05Var, j3, (j3 & (-1073741824)) | j2)) {
                                    y05Var.d.set(i4 & y05Var.c, null);
                                    y05VarD = null;
                                } else {
                                    y05VarD = y05Var;
                                }
                            }
                            if (y05VarD == null) {
                                return obj;
                            }
                        }
                    }
                }
            }
            return null;
        }
    }
}
