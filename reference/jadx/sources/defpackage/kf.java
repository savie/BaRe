package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class kf implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ kf(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    /* JADX WARN: Code duplicated, block: B:138:0x03a5 A[PHI: r1
      0x03a5: PHI (r1v69 int) = (r1v68 int), (r1v70 int), (r1v71 int) binds: [B:130:0x0377, B:132:0x0387, B:134:0x0393] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:161:0x0409  */
    /* JADX WARN: Code duplicated, block: B:162:0x040e  */
    /* JADX WARN: Code duplicated, block: B:197:0x04db A[PHI: r1
      0x04db: PHI (r1v43 int) = (r1v42 int), (r1v44 int), (r1v45 int), (r1v46 int), (r1v47 int) binds: [B:175:0x0453, B:177:0x045f, B:179:0x046b, B:181:0x0477, B:183:0x0484] A[DONT_GENERATE, DONT_INLINE]] */
    /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r2v48 java.lang.Object, still in use, count: 2, list:
          (r2v48 java.lang.Object) from 0x0405: PHI (r2 I:??) = (r2v45 java.lang.Object), (r2v48 java.lang.Object) binds: [B:158:0x0404, B:297:0x0405] A[DONT_GENERATE, DONT_INLINE]
          (r2v48 java.lang.Object) from 0x03f3: CHECK_CAST (ji) (r2v48 java.lang.Object)
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
            Method dump skipped, instruction units count: 1832
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.kf.invoke():java.lang.Object");
    }
}
