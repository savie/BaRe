package defpackage;

import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class km7 extends j5 implements ji3, du3, li3 {
    public static final /* synthetic */ AtomicReferenceFieldUpdater e = AtomicReferenceFieldUpdater.newUpdater(km7.class, Object.class, "_state$volatile");
    public static final /* synthetic */ long f = oh6.a.objectFieldOffset(km7.class.getDeclaredField("_state$volatile"));
    private volatile /* synthetic */ Object _state$volatile;
    public int d;

    public km7(Object obj) {
        this._state$volatile = obj;
    }

    @Override // defpackage.j5
    public final lm7 a() {
        return new lm7();
    }

    @Override // defpackage.j5
    public final lm7[] b() {
        return new lm7[2];
    }

    @Override // defpackage.li3
    public final Object c(Object obj, jv1 jv1Var) {
        if (obj == null) {
            obj = ly8.c;
        }
        e(null, obj);
        return be8.a;
    }

    public final Object d() {
        du9 du9Var = ly8.c;
        e.getClass();
        Object objectVolatile = oh6.a.getObjectVolatile(this, f);
        if (objectVolatile == du9Var) {
            return null;
        }
        return objectVolatile;
    }

    public final boolean e(Object obj, Object obj2) {
        int i;
        lm7[] lm7VarArr;
        du9 du9Var;
        synchronized (this) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = e;
            Object obj3 = atomicReferenceFieldUpdater.get(this);
            if (obj != null && !pe4.d(obj3, obj)) {
                return false;
            }
            if (pe4.d(obj3, obj2)) {
                return true;
            }
            atomicReferenceFieldUpdater.set(this, obj2);
            int i2 = this.d;
            if ((i2 & 1) != 0) {
                this.d = i2 + 2;
                return true;
            }
            int i3 = i2 + 1;
            this.d = i3;
            lm7[] lm7VarArr2 = this.a;
            while (true) {
                lm7[] lm7VarArr3 = lm7VarArr2;
                if (lm7VarArr3 != null) {
                    for (lm7 lm7Var : lm7VarArr3) {
                        if (lm7Var != null) {
                            AtomicReference atomicReference = lm7Var.a;
                            while (true) {
                                Object obj4 = atomicReference.get();
                                if (obj4 == null || obj4 == (du9Var = wx3.d)) {
                                    break;
                                }
                                du9 du9Var2 = wx3.c;
                                if (obj4 != du9Var2) {
                                    do {
                                        if (atomicReference.compareAndSet(obj4, du9Var2)) {
                                            ((o21) obj4).resumeWith(be8.a);
                                            break;
                                        }
                                    } while (atomicReference.get() == obj4);
                                } else {
                                    do {
                                        if (atomicReference.compareAndSet(obj4, du9Var)) {
                                            break;
                                        }
                                    } while (atomicReference.get() == obj4);
                                }
                            }
                        }
                    }
                }
                synchronized (this) {
                    i = this.d;
                    if (i == i3) {
                        this.d = i3 + 1;
                        return true;
                    }
                    lm7VarArr = this.a;
                }
                lm7VarArr2 = lm7VarArr;
                i3 = i;
            }
        }
    }

    @Override // defpackage.du3
    public final ji3 j(ox1 ox1Var, int i, pw0 pw0Var) {
        return ((((i < 0 || i >= 2) && i != -2) || pw0Var != pw0.b) && !((i == 0 || i == -3) && pw0Var == pw0.a)) ? new p41(this, ox1Var, i, pw0Var) : this;
    }

    /* JADX WARN: Code duplicated, block: B:54:0x00c5 A[Catch: all -> 0x003d, TryCatch #2 {all -> 0x003d, blocks: (B:14:0x0037, B:52:0x00bd, B:54:0x00c5, B:57:0x00cc, B:58:0x00d0, B:60:0x00d3, B:70:0x00f4, B:73:0x0104, B:74:0x0120, B:80:0x0130, B:77:0x0127, B:79:0x012d, B:62:0x00d9, B:66:0x00e0, B:21:0x004e, B:24:0x0057, B:51:0x00ae), top: B:110:0x0027 }] */
    /* JADX WARN: Code duplicated, block: B:60:0x00d3 A[Catch: all -> 0x003d, TryCatch #2 {all -> 0x003d, blocks: (B:14:0x0037, B:52:0x00bd, B:54:0x00c5, B:57:0x00cc, B:58:0x00d0, B:60:0x00d3, B:70:0x00f4, B:73:0x0104, B:74:0x0120, B:80:0x0130, B:77:0x0127, B:79:0x012d, B:62:0x00d9, B:66:0x00e0, B:21:0x004e, B:24:0x0057, B:51:0x00ae), top: B:110:0x0027 }] */
    /* JADX WARN: Code duplicated, block: B:64:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:65:0x00df  */
    /* JADX WARN: Code duplicated, block: B:68:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:69:0x00f3 A[PHI: r4 r6 r10 r11 r12
      0x00f3: PHI (r4v14 java.lang.Object) = (r4v20 java.lang.Object), (r4v22 java.lang.Object) binds: [B:67:0x00f0, B:21:0x004e] A[DONT_GENERATE, DONT_INLINE]
      0x00f3: PHI (r6v1 int) = (r6v6 int), (r6v0 int) binds: [B:67:0x00f0, B:21:0x004e] A[DONT_GENERATE, DONT_INLINE]
      0x00f3: PHI (r10v6 oh4) = (r10v8 oh4), (r10v10 oh4) binds: [B:67:0x00f0, B:21:0x004e] A[DONT_GENERATE, DONT_INLINE]
      0x00f3: PHI (r11v8 lm7) = (r11v10 lm7), (r11v13 lm7) binds: [B:67:0x00f0, B:21:0x004e] A[DONT_GENERATE, DONT_INLINE]
      0x00f3: PHI (r12v3 li3) = (r12v5 li3), (r12v7 li3) binds: [B:67:0x00f0, B:21:0x004e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:72:0x0103  */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:72:0x0103 -> B:52:0x00bd). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // defpackage.ji3
    public final java.lang.Object t(defpackage.li3 r18, defpackage.kv1 r19) {
        /*
            Method dump skipped, instruction units count: 363
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.km7.t(li3, kv1):java.lang.Object");
    }
}
