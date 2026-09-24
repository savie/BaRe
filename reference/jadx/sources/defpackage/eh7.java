package defpackage;

import com.jcraft.jsch.SftpATTRS;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class eh7 implements sd4 {
    public final mj5 a = new mj5();
    public final tr9 b = new tr9(2);
    public final tr9 c = new tr9(new dh7(2, null, 0), 15);

    public eh7(String str) {
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x005d, code lost:
    
        if (r8 == r5) goto L25;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [eh7] */
    /* JADX WARN: Type inference failed for: r6v1, types: [kj5] */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v4, types: [kj5] */
    /* JADX WARN: Type inference failed for: r6v9 */
    @Override // defpackage.sd4
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(defpackage.mt3 r7, defpackage.kv1 r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof defpackage.bh7
            if (r0 == 0) goto L13
            r0 = r8
            bh7 r0 = (defpackage.bh7) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            bh7 r0 = new bh7
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.c
            int r1 = r0.e
            r2 = 2
            r3 = 1
            r4 = 0
            yx1 r5 = defpackage.yx1.a
            if (r1 == 0) goto L41
            if (r1 == r3) goto L37
            if (r1 != r2) goto L31
            java.lang.Object r6 = r0.a
            kj5 r6 = (defpackage.kj5) r6
            defpackage.lg7.H(r8)     // Catch: java.lang.Throwable -> L2f
            goto L60
        L2f:
            r7 = move-exception
            goto L64
        L31:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.l0.e(r6)
            return r4
        L37:
            mj5 r6 = r0.b
            java.lang.Object r7 = r0.a
            mt3 r7 = (defpackage.mt3) r7
            defpackage.lg7.H(r8)
            goto L53
        L41:
            defpackage.lg7.H(r8)
            r0.a = r7
            mj5 r6 = r6.a
            r0.b = r6
            r0.e = r3
            java.lang.Object r8 = r6.a(r0)
            if (r8 != r5) goto L53
            goto L5f
        L53:
            r0.a = r6     // Catch: java.lang.Throwable -> L2f
            r0.b = r4     // Catch: java.lang.Throwable -> L2f
            r0.e = r2     // Catch: java.lang.Throwable -> L2f
            java.lang.Object r8 = r7.invoke(r0)     // Catch: java.lang.Throwable -> L2f
            if (r8 != r5) goto L60
        L5f:
            return r5
        L60:
            r6.b(r4)
            return r8
        L64:
            r6.b(r4)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.eh7.a(mt3, kv1):java.lang.Object");
    }

    @Override // defpackage.sd4
    public final Object b(kv1 kv1Var) {
        return new Integer(((AtomicInteger) this.b.b).get());
    }

    @Override // defpackage.sd4
    public final Object c(hc2 hc2Var) {
        return new Integer(((AtomicInteger) this.b.b).incrementAndGet());
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0054  */
    /* JADX WARN: Code duplicated, block: B:30:0x005f  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.sd4
    public final Object d(qt3 qt3Var, kv1 kv1Var) throws Throwable {
        ch7 ch7Var;
        mj5 mj5Var;
        boolean z;
        Throwable th;
        if (kv1Var instanceof ch7) {
            ch7Var = (ch7) kv1Var;
            int i = ch7Var.e;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                ch7Var.e = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                ch7Var = new ch7(this, kv1Var);
            }
        } else {
            ch7Var = new ch7(this, kv1Var);
        }
        Object obj = ch7Var.c;
        int i2 = ch7Var.e;
        if (i2 != 0) {
            if (i2 != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            z = ch7Var.b;
            mj5Var = ch7Var.a;
            try {
                lg7.H(obj);
                if (z) {
                    mj5Var.b(null);
                }
                return obj;
            } catch (Throwable th2) {
                th = th2;
                if (z) {
                    mj5Var.b(null);
                }
                throw th;
            }
        }
        lg7.H(obj);
        mj5 mj5Var2 = this.a;
        boolean zH = mj5Var2.h();
        try {
            Object objValueOf = Boolean.valueOf(zH);
            ch7Var.a = mj5Var2;
            ch7Var.b = zH;
            ch7Var.e = 1;
            Object objInvoke = qt3Var.invoke(objValueOf, ch7Var);
            Object obj2 = yx1.a;
            if (objInvoke == obj2) {
                return obj2;
            }
            mj5Var = mj5Var2;
            z = zH;
            obj = objInvoke;
            if (z) {
                mj5Var.b(null);
            }
            return obj;
        } catch (Throwable th3) {
            mj5Var = mj5Var2;
            z = zH;
            th = th3;
            if (z) {
                mj5Var.b(null);
            }
            throw th;
        }
    }

    @Override // defpackage.sd4
    public final ji3 e() {
        return this.c;
    }
}
