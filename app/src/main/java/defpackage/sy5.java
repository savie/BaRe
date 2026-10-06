package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sy5 implements ij7 {
    public final zw0 a;
    public final nw0 b;
    public m67 c;
    public int d;
    public boolean e;
    public long f;

    public sy5(zw0 zw0Var) {
        this.a = zw0Var;
        nw0 nw0VarC = zw0Var.c();
        this.b = nw0VarC;
        m67 m67Var = nw0VarC.a;
        this.c = m67Var;
        this.d = m67Var != null ? m67Var.b : -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001e, code lost:
    
        if (r3 == r5.b) goto L15;
     */
    @Override // defpackage.ij7
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long H(defpackage.nw0 r9, long r10) {
        /*
            r8 = this;
            r9.getClass()
            r0 = 0
            int r2 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r2 < 0) goto L65
            boolean r3 = r8.e
            if (r3 != 0) goto L5f
            m67 r3 = r8.c
            nw0 r4 = r8.b
            if (r3 == 0) goto L27
            m67 r5 = r4.a
            if (r3 != r5) goto L21
            int r3 = r8.d
            r5.getClass()
            int r5 = r5.b
            if (r3 != r5) goto L21
            goto L27
        L21:
            java.lang.String r8 = "Peek source is invalid because upstream source was used"
            defpackage.l0.e(r8)
            return r0
        L27:
            if (r2 != 0) goto L2a
            return r0
        L2a:
            long r0 = r8.f
            r2 = 1
            long r0 = r0 + r2
            zw0 r2 = r8.a
            boolean r0 = r2.request(r0)
            if (r0 != 0) goto L3a
            r8 = -1
            return r8
        L3a:
            m67 r0 = r8.c
            if (r0 != 0) goto L48
            m67 r0 = r4.a
            if (r0 == 0) goto L48
            r8.c = r0
            int r0 = r0.b
            r8.d = r0
        L48:
            long r0 = r4.b
            long r2 = r8.f
            long r0 = r0 - r2
            long r6 = java.lang.Math.min(r10, r0)
            nw0 r2 = r8.b
            long r4 = r8.f
            r3 = r9
            r2.b(r3, r4, r6)
            long r9 = r8.f
            long r9 = r9 + r6
            r8.f = r9
            return r6
        L5f:
            java.lang.String r8 = "closed"
            defpackage.l0.e(r8)
            return r0
        L65:
            java.lang.String r8 = "byteCount < 0: "
            java.lang.String r8 = defpackage.u48.l(r10, r8)
            defpackage.f6.g(r8)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.sy5.H(nw0, long):long");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.e = true;
    }

    @Override // defpackage.ij7
    public final f48 d() {
        return this.a.d();
    }
}
