package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class n77 implements Runnable {
    public Runnable a;
    public final /* synthetic */ o77 b;

    public n77(o77 o77Var) {
        this.b = o77Var;
    }

    /* JADX WARN: Code duplicated, block: B:47:0x0036 A[SYNTHETIC] */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x003b, code lost:
    
        if (r1 == false) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0044, code lost:
    
        r1 = r1 | java.lang.Thread.interrupted();
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0046, code lost:
    
        r10.a.run();
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0050, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0052, code lost:
    
        r3 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0053, code lost:
    
        defpackage.o77.f.log(java.util.logging.Level.SEVERE, "Exception while executing runnable " + r10.a, (java.lang.Throwable) r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x006e, code lost:
    
        r10.a = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0070, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:?, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a() {
        /*
            r10 = this;
            r0 = 0
            r1 = r0
        L2:
            o77 r2 = r10.b     // Catch: java.lang.Throwable -> L4e
            java.util.ArrayDeque r2 = r2.b     // Catch: java.lang.Throwable -> L4e
            monitor-enter(r2)     // Catch: java.lang.Throwable -> L4e
            r3 = 1
            if (r0 != 0) goto L28
            o77 r0 = r10.b     // Catch: java.lang.Throwable -> L1c
            int r4 = r0.c     // Catch: java.lang.Throwable -> L1c
            r5 = 4
            if (r4 != r5) goto L1e
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L1c
            if (r1 == 0) goto L3e
        L14:
            java.lang.Thread r10 = java.lang.Thread.currentThread()
            r10.interrupt()
            goto L3e
        L1c:
            r10 = move-exception
            goto L71
        L1e:
            long r6 = r0.d     // Catch: java.lang.Throwable -> L1c
            r8 = 1
            long r6 = r6 + r8
            r0.d = r6     // Catch: java.lang.Throwable -> L1c
            r0.c = r5     // Catch: java.lang.Throwable -> L1c
            r0 = r3
        L28:
            o77 r4 = r10.b     // Catch: java.lang.Throwable -> L1c
            java.util.ArrayDeque r4 = r4.b     // Catch: java.lang.Throwable -> L1c
            java.lang.Object r4 = r4.poll()     // Catch: java.lang.Throwable -> L1c
            java.lang.Runnable r4 = (java.lang.Runnable) r4     // Catch: java.lang.Throwable -> L1c
            r10.a = r4     // Catch: java.lang.Throwable -> L1c
            if (r4 != 0) goto L3f
            o77 r10 = r10.b     // Catch: java.lang.Throwable -> L1c
            r10.c = r3     // Catch: java.lang.Throwable -> L1c
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L1c
            if (r1 == 0) goto L3e
            goto L14
        L3e:
            return
        L3f:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L1c
            boolean r2 = java.lang.Thread.interrupted()     // Catch: java.lang.Throwable -> L4e
            r1 = r1 | r2
            r2 = 0
            java.lang.Runnable r3 = r10.a     // Catch: java.lang.Throwable -> L50 java.lang.RuntimeException -> L52
            r3.run()     // Catch: java.lang.Throwable -> L50 java.lang.RuntimeException -> L52
        L4b:
            r10.a = r2     // Catch: java.lang.Throwable -> L4e
            goto L2
        L4e:
            r10 = move-exception
            goto L73
        L50:
            r0 = move-exception
            goto L6e
        L52:
            r3 = move-exception
            java.util.logging.Logger r4 = defpackage.o77.f     // Catch: java.lang.Throwable -> L50
            java.util.logging.Level r5 = java.util.logging.Level.SEVERE     // Catch: java.lang.Throwable -> L50
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L50
            r6.<init>()     // Catch: java.lang.Throwable -> L50
            java.lang.String r7 = "Exception while executing runnable "
            r6.append(r7)     // Catch: java.lang.Throwable -> L50
            java.lang.Runnable r7 = r10.a     // Catch: java.lang.Throwable -> L50
            r6.append(r7)     // Catch: java.lang.Throwable -> L50
            java.lang.String r6 = r6.toString()     // Catch: java.lang.Throwable -> L50
            r4.log(r5, r6, r3)     // Catch: java.lang.Throwable -> L50
            goto L4b
        L6e:
            r10.a = r2     // Catch: java.lang.Throwable -> L4e
            throw r0     // Catch: java.lang.Throwable -> L4e
        L71:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L1c
            throw r10     // Catch: java.lang.Throwable -> L4e
        L73:
            if (r1 == 0) goto L7c
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            r0.interrupt()
        L7c:
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.n77.a():void");
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            a();
        } catch (Error e) {
            synchronized (this.b.b) {
                this.b.c = 1;
                throw e;
            }
        }
    }

    public final String toString() {
        String str;
        Runnable runnable = this.a;
        if (runnable != null) {
            return "SequentialExecutorWorker{running=" + runnable + "}";
        }
        StringBuilder sb = new StringBuilder("SequentialExecutorWorker{state=");
        int i = this.b.c;
        if (i == 1) {
            str = "IDLE";
        } else if (i == 2) {
            str = "QUEUING";
        } else if (i != 3) {
            str = i != 4 ? "null" : "RUNNING";
        } else {
            str = "QUEUED";
        }
        sb.append(str);
        sb.append("}");
        return sb.toString();
    }
}
