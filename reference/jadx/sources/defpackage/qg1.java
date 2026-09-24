package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class qg1 extends cu3 implements bt3 {
    public final /* synthetic */ int a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ qg1(int i, Object obj, Class cls, String str, String str2, int i2, int i3) {
        super(i, obj, cls, str, str2, i2);
        this.a = i3;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0048  */
    /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v12 java.lang.Object, still in use, count: 2, list:
          (r0v12 java.lang.Object) from 0x0043: PHI (r0 I:??) = (r0v8 java.lang.Object), (r0v12 java.lang.Object) binds: [B:13:0x0042, B:31:0x0043] A[DONT_GENERATE, DONT_INLINE]
          (r0v12 java.lang.Object) from 0x002d: CHECK_CAST (zn7) (r0v12 java.lang.Object)
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
        	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:93)
        	at jadx.core.dex.visitors.regions.TernaryMod.makeTernaryInsn(TernaryMod.java:132)
        	at jadx.core.dex.visitors.regions.TernaryMod.processRegion(TernaryMod.java:67)
        	at jadx.core.dex.visitors.regions.TernaryMod.enterRegion(TernaryMod.java:50)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:96)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
        	at jadx.core.dex.visitors.regions.TernaryMod.process(TernaryMod.java:36)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.process(IfRegionVisitor.java:44)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.visit(IfRegionVisitor.java:30)
        */
    @Override // defpackage.bt3
    public final java.lang.Object invoke() {
        /*
            r4 = this;
            int r0 = r4.a
            r1 = 0
            switch(r0) {
                case 0: goto L6f;
                case 1: goto L52;
                default: goto L6;
            }
        L6:
            java.lang.Object r4 = r4.receiver
            yn7 r4 = (defpackage.yn7) r4
            r4.getClass()
            java.util.List r4 = defpackage.yn7.a()
            java.lang.Object r0 = defpackage.el1.S0(r4)
            zn7 r0 = (defpackage.zn7) r0
            q63 r1 = defpackage.yn7.e()
            if (r1 != 0) goto L1e
            goto L47
        L1e:
            java.util.Iterator r4 = r4.iterator()
        L22:
            boolean r0 = r4.hasNext()
            if (r0 == 0) goto L42
            java.lang.Object r0 = r4.next()
            r2 = r0
            zn7 r2 = (defpackage.zn7) r2
            q63 r2 = r2.l()
            java.lang.String r2 = r2.v()
            java.lang.String r3 = r1.v()
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto L22
            goto L43
        L42:
            r0 = 0
        L43:
            zn7 r0 = (defpackage.zn7) r0
            if (r0 == 0) goto L48
        L47:
            return r0
        L48:
            w46 r4 = new w46
            java.lang.String r0 = r1.v()
            r4.<init>(r0)
            throw r4
        L52:
            java.lang.Object r4 = r4.receiver
            r02 r4 = (defpackage.r02) r4
            r4.getClass()
            java.lang.Thread r4 = java.lang.Thread.currentThread()
            java.lang.String r4 = r4.getName()
            r4.getClass()
            java.lang.String r0 = "Firebase Blocking Thread #"
            boolean r4 = defpackage.nq7.Z(r4, r0, r1)
            java.lang.Boolean r4 = java.lang.Boolean.valueOf(r4)
            return r4
        L6f:
            java.lang.Object r4 = r4.receiver
            hy7 r4 = (defpackage.hy7) r4
            r4.getClass()
            gz7 r4 = org.swiftapps.swiftbackup.tasks.TaskService.b
            gz7 r4 = org.swiftapps.swiftbackup.tasks.TaskService.b
            boolean r0 = org.swiftapps.swiftbackup.tasks.TaskService.c
            r4.getClass()
            if (r0 != 0) goto L8d
            boolean r0 = r4.isRunning()
            if (r0 != 0) goto L8d
            boolean r4 = r4.isCancelling()
            if (r4 == 0) goto L8e
        L8d:
            r1 = 1
        L8e:
            java.lang.Boolean r4 = java.lang.Boolean.valueOf(r1)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.qg1.invoke():java.lang.Object");
    }
}
