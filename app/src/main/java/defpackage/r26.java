package defpackage;

import com.jcraft.jsch.SftpATTRS;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class r26 {
    public final int a;
    public final bt3 b;
    public final ReentrantLock c = new ReentrantLock();
    public int d;
    public boolean e;
    public final ns1[] f;
    public final z67 g;
    public final w40 h;

    public r26(int i, bt3 bt3Var) {
        this.a = i;
        this.b = bt3Var;
        this.f = new ns1[i];
        int i2 = a77.a;
        this.g = new z67(i);
        this.h = new w40(i);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    public final Object a(kv1 kv1Var) {
        o26 o26Var;
        w40 w40Var = this.h;
        if (kv1Var instanceof o26) {
            o26Var = (o26) kv1Var;
            int i = o26Var.c;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                o26Var.c = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                o26Var = new o26(this, kv1Var);
            }
        } else {
            o26Var = new o26(this, kv1Var);
        }
        Object obj = o26Var.a;
        int i2 = o26Var.c;
        z67 z67Var = this.g;
        if (i2 == 0) {
            lg7.H(obj);
            o26Var.c = 1;
            Object objC = z67Var.c(o26Var);
            yx1 yx1Var = yx1.a;
            if (objC == yx1Var) {
                return yx1Var;
            }
        } else {
            if (i2 != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            lg7.H(obj);
        }
        try {
            ReentrantLock reentrantLock = this.c;
            reentrantLock.lock();
            try {
                if (this.e) {
                    ly8.P(21, "Connection pool is closed");
                    throw null;
                }
                if (w40Var.isEmpty() && this.d < this.a) {
                    ns1 ns1Var = new ns1((fw6) this.b.invoke());
                    ns1[] ns1VarArr = this.f;
                    int i3 = this.d;
                    this.d = i3 + 1;
                    ns1VarArr[i3] = ns1Var;
                    w40Var.addLast(ns1Var);
                }
                ns1 ns1Var2 = (ns1) w40Var.removeLast();
                reentrantLock.unlock();
                return ns1Var2;
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        } catch (Throwable th2) {
            z67Var.e();
            throw th2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0053  */
    /* JADX WARN: Code duplicated, block: B:23:0x0055  */
    /* JADX WARN: Code duplicated, block: B:33:0x007b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:40:0x008d A[Catch: all -> 0x0098, TRY_ENTER, TryCatch #1 {all -> 0x0098, blocks: (B:20:0x003d, B:25:0x0058, B:29:0x006c, B:31:0x0072, B:34:0x007d, B:32:0x0074, B:40:0x008d, B:41:0x0092), top: B:63:0x003d }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00a3 A[Catch: all -> 0x00a7, TryCatch #0 {all -> 0x00a7, blocks: (B:46:0x009f, B:48:0x00a3, B:52:0x00ab, B:56:0x00b2), top: B:61:0x009f }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:52:0x00ab A[Catch: all -> 0x00a7, TryCatch #0 {all -> 0x00a7, blocks: (B:46:0x009f, B:48:0x00a3, B:52:0x00ab, B:56:0x00b2), top: B:61:0x009f }] */
    /* JADX WARN: Code duplicated, block: B:54:0x00af A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:56:0x00b2 A[Catch: all -> 0x00a7, TRY_LEAVE, TryCatch #0 {all -> 0x00a7, blocks: (B:46:0x009f, B:48:0x00a3, B:52:0x00ab, B:56:0x00b2), top: B:61:0x009f }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x0086 -> B:39:0x0088). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object b(long r10, defpackage.ds1 r12, defpackage.kv1 r13) {
        /*
            r9 = this;
            boolean r0 = r13 instanceof defpackage.p26
            if (r0 == 0) goto L13
            r0 = r13
            p26 r0 = (defpackage.p26) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            p26 r0 = new p26
            r0.<init>(r9, r13)
        L18:
            java.lang.Object r13 = r0.d
            int r1 = r0.f
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L35
            if (r1 != r2) goto L2f
            long r10 = r0.a
            lh6 r12 = r0.c
            bt3 r1 = r0.b
            defpackage.lg7.H(r13)     // Catch: java.lang.Throwable -> L2c
            goto L88
        L2c:
            r13 = move-exception
            goto L9a
        L2f:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.l0.e(r9)
            return r3
        L35:
            defpackage.lg7.H(r13)
        L38:
            lh6 r13 = new lh6
            r13.<init>()
            q26 r1 = new q26     // Catch: java.lang.Throwable -> L98
            r1.<init>(r13, r9, r3)     // Catch: java.lang.Throwable -> L98
            r0.b = r12     // Catch: java.lang.Throwable -> L98
            r0.c = r13     // Catch: java.lang.Throwable -> L98
            r0.a = r10     // Catch: java.lang.Throwable -> L98
            r0.f = r2     // Catch: java.lang.Throwable -> L98
            ma2 r4 = defpackage.mr2.b     // Catch: java.lang.Throwable -> L98
            r4 = 0
            int r6 = (r10 > r4 ? 1 : (r10 == r4 ? 0 : -1))
            r7 = 0
            if (r6 <= 0) goto L55
            r6 = r2
            goto L56
        L55:
            r6 = r7
        L56:
            if (r6 != r2) goto L7b
            or2 r4 = defpackage.or2.NANOSECONDS     // Catch: java.lang.Throwable -> L98
            r5 = 999999(0xf423f, double:4.94065E-318)
            long r4 = defpackage.pe4.H(r5, r4)     // Catch: java.lang.Throwable -> L98
            long r4 = defpackage.mr2.e(r10, r4)     // Catch: java.lang.Throwable -> L98
            int r6 = (int) r4     // Catch: java.lang.Throwable -> L98
            r6 = r6 & r2
            if (r6 != r2) goto L6a
            r7 = r2
        L6a:
            if (r7 == 0) goto L74
            boolean r6 = defpackage.mr2.d(r4)     // Catch: java.lang.Throwable -> L98
            if (r6 != 0) goto L74
            long r4 = r4 >> r2
            goto L7d
        L74:
            or2 r6 = defpackage.or2.MILLISECONDS     // Catch: java.lang.Throwable -> L98
            long r4 = defpackage.mr2.f(r4, r6)     // Catch: java.lang.Throwable -> L98
            goto L7d
        L7b:
            if (r6 != 0) goto L8d
        L7d:
            java.lang.Object r1 = defpackage.tu0.D(r4, r1, r0)     // Catch: java.lang.Throwable -> L98
            yx1 r4 = defpackage.yx1.a
            if (r1 != r4) goto L86
            return r4
        L86:
            r1 = r12
            r12 = r13
        L88:
            r13 = r12
            r12 = r1
            r1 = r0
            r0 = r3
            goto L9f
        L8d:
            mn5 r1 = new mn5     // Catch: java.lang.Throwable -> L98
            r1.<init>()     // Catch: java.lang.Throwable -> L98
            throw r1     // Catch: java.lang.Throwable -> L98
        L93:
            r8 = r1
            r1 = r12
            r12 = r13
            r13 = r8
            goto L9a
        L98:
            r1 = move-exception
            goto L93
        L9a:
            r8 = r13
            r13 = r12
            r12 = r1
            r1 = r0
            r0 = r8
        L9f:
            boolean r4 = r0 instanceof defpackage.g48     // Catch: java.lang.Throwable -> La7
            if (r4 == 0) goto La9
            r12.invoke()     // Catch: java.lang.Throwable -> La7
            goto Lb0
        La7:
            r10 = move-exception
            goto Lb3
        La9:
            if (r0 != 0) goto Lb2
            java.lang.Object r13 = r13.a     // Catch: java.lang.Throwable -> La7
            if (r13 == 0) goto Lb0
            return r13
        Lb0:
            r0 = r1
            goto L38
        Lb2:
            throw r0     // Catch: java.lang.Throwable -> La7
        Lb3:
            java.lang.Object r11 = r13.a
            ns1 r11 = (defpackage.ns1) r11
            if (r11 == 0) goto Lbc
            r9.e(r11)
        Lbc:
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.r26.b(long, ds1, kv1):java.lang.Object");
    }

    public final void c() {
        ReentrantLock reentrantLock = this.c;
        reentrantLock.lock();
        try {
            this.e = true;
            for (ns1 ns1Var : this.f) {
                if (ns1Var != null) {
                    ns1Var.close();
                }
            }
            reentrantLock.unlock();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public final void d(StringBuilder sb) {
        w40 w40Var = this.h;
        ReentrantLock reentrantLock = this.c;
        reentrantLock.lock();
        try {
            ww4 ww4VarP = nc8.p();
            int i = w40Var.c;
            for (int i2 = 0; i2 < i; i2++) {
                ww4VarP.add(w40Var.get(i2));
            }
            ww4 ww4VarH = nc8.h(ww4VarP);
            sb.append('\t' + toString() + " (");
            sb.append("capacity=" + this.a + ", ");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("permits=");
            z67 z67Var = this.g;
            z67Var.getClass();
            sb2.append(Math.max(y67.k.get(z67Var), 0));
            sb2.append(", ");
            sb.append(sb2.toString());
            sb.append("queue=(size=" + ww4VarH.d() + ")[" + el1.Y0(ww4VarH, null, null, null, null, 63) + ']');
            sb.append(")");
            sb.append('\n');
            ns1[] ns1VarArr = this.f;
            int length = ns1VarArr.length;
            int i3 = 0;
            for (int i4 = 0; i4 < length; i4++) {
                ns1 ns1Var = ns1VarArr[i4];
                i3++;
                StringBuilder sb3 = new StringBuilder();
                sb3.append("\t\t[");
                sb3.append(i3);
                sb3.append("] - ");
                sb3.append(ns1Var != null ? ns1Var.a.toString() : null);
                sb.append(sb3.toString());
                sb.append('\n');
                if (ns1Var != null) {
                    ns1Var.g(sb);
                }
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void e(ns1 ns1Var) {
        ns1Var.getClass();
        ReentrantLock reentrantLock = this.c;
        reentrantLock.lock();
        try {
            this.h.addLast(ns1Var);
            reentrantLock.unlock();
            this.g.e();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }
}
