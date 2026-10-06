package defpackage;

import com.google.firebase.FirebaseApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class a97 {
    public static final double f = Math.random();
    public static final /* synthetic */ int g = 0;
    public final FirebaseApp a;
    public final qg3 b;
    public final l97 c;
    public final sy2 d;
    public final ox1 e;

    public a97(FirebaseApp firebaseApp, qg3 qg3Var, l97 l97Var, sy2 sy2Var, ox1 ox1Var) {
        firebaseApp.getClass();
        qg3Var.getClass();
        l97Var.getClass();
        sy2Var.getClass();
        ox1Var.getClass();
        this.a = firebaseApp;
        this.b = qg3Var;
        this.c = l97Var;
        this.d = sy2Var;
        this.e = ox1Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0074, code lost:
    
        if (r0.b(r1) == r5) goto L31;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object a(defpackage.a97 r6, defpackage.kv1 r7) {
        /*
            l97 r0 = r6.c
            boolean r1 = r7 instanceof defpackage.z87
            if (r1 == 0) goto L15
            r1 = r7
            z87 r1 = (defpackage.z87) r1
            int r2 = r1.c
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L15
            int r2 = r2 - r3
            r1.c = r2
            goto L1a
        L15:
            z87 r1 = new z87
            r1.<init>(r6, r7)
        L1a:
            java.lang.Object r6 = r1.a
            int r7 = r1.c
            r2 = 2
            r3 = 1
            java.lang.String r4 = "FirebaseSessions"
            yx1 r5 = defpackage.yx1.a
            if (r7 == 0) goto L39
            if (r7 == r3) goto L35
            if (r7 != r2) goto L2e
            defpackage.lg7.H(r6)
            goto L77
        L2e:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.l0.e(r6)
            r6 = 0
            return r6
        L35:
            defpackage.lg7.H(r6)
            goto L47
        L39:
            defpackage.lg7.H(r6)
            ch3 r6 = defpackage.ch3.a
            r1.c = r3
            java.lang.Object r6 = r6.b(r1)
            if (r6 != r5) goto L47
            goto L76
        L47:
            java.util.Map r6 = (java.util.Map) r6
            java.util.Collection r6 = r6.values()
            if (r6 == 0) goto L56
            boolean r7 = r6.isEmpty()
            if (r7 == 0) goto L56
            goto Lac
        L56:
            java.util.Iterator r6 = r6.iterator()
        L5a:
            boolean r7 = r6.hasNext()
            if (r7 == 0) goto Lac
            java.lang.Object r7 = r6.next()
            oy1 r7 = (defpackage.oy1) r7
            ka2 r7 = r7.a
            boolean r7 = r7.b()
            if (r7 == 0) goto L5a
            r1.c = r2
            java.lang.Object r6 = r0.b(r1)
            if (r6 != r5) goto L77
        L76:
            return r5
        L77:
            ra7 r6 = r0.a
            java.lang.Boolean r6 = r6.b()
            if (r6 == 0) goto L84
        L7f:
            boolean r3 = r6.booleanValue()
            goto L8d
        L84:
            ra7 r6 = r0.b
            java.lang.Boolean r6 = r6.b()
            if (r6 == 0) goto L8d
            goto L7f
        L8d:
            if (r3 != 0) goto L97
            java.lang.String r6 = "Sessions SDK disabled through settings API. Events will not be sent."
            android.util.Log.d(r4, r6)
            java.lang.Boolean r6 = java.lang.Boolean.FALSE
            return r6
        L97:
            double r6 = defpackage.a97.f
            double r0 = r0.a()
            int r6 = (r6 > r0 ? 1 : (r6 == r0 ? 0 : -1))
            if (r6 > 0) goto La4
            java.lang.Boolean r6 = java.lang.Boolean.TRUE
            return r6
        La4:
            java.lang.String r6 = "Sessions SDK has dropped this session due to sampling."
            android.util.Log.d(r4, r6)
            java.lang.Boolean r6 = java.lang.Boolean.FALSE
            return r6
        Lac:
            java.lang.String r6 = "Sessions SDK disabled through data collection. Events will not be sent."
            android.util.Log.d(r4, r6)
            java.lang.Boolean r6 = java.lang.Boolean.FALSE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.a97.a(a97, kv1):java.lang.Object");
    }
}
