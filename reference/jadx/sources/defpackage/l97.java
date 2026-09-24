package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class l97 {
    public final ra7 a;
    public final ra7 b;

    public l97(ra7 ra7Var, ra7 ra7Var2) {
        ra7Var.getClass();
        ra7Var2.getClass();
        this.a = ra7Var;
        this.b = ra7Var2;
    }

    public final double a() {
        Double d = this.a.d();
        if (d != null) {
            double dDoubleValue = d.doubleValue();
            if (0.0d <= dDoubleValue && dDoubleValue <= 1.0d) {
                return dDoubleValue;
            }
        }
        Double d2 = this.b.d();
        if (d2 != null) {
            double dDoubleValue2 = d2.doubleValue();
            if (0.0d <= dDoubleValue2 && dDoubleValue2 <= 1.0d) {
                return dDoubleValue2;
            }
        }
        return 1.0d;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x004b, code lost:
    
        if (r5.b.a(r0) == r4) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(defpackage.kv1 r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof defpackage.k97
            if (r0 == 0) goto L13
            r0 = r6
            k97 r0 = (defpackage.k97) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            k97 r0 = new k97
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.a
            int r1 = r0.c
            r2 = 2
            r3 = 1
            yx1 r4 = defpackage.yx1.a
            if (r1 == 0) goto L35
            if (r1 == r3) goto L31
            if (r1 != r2) goto L2a
            defpackage.lg7.H(r6)
            goto L4e
        L2a:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.l0.e(r5)
            r5 = 0
            return r5
        L31:
            defpackage.lg7.H(r6)
            goto L43
        L35:
            defpackage.lg7.H(r6)
            r0.c = r3
            ra7 r6 = r5.a
            java.lang.Object r6 = r6.a(r0)
            if (r6 != r4) goto L43
            goto L4d
        L43:
            r0.c = r2
            ra7 r5 = r5.b
            java.lang.Object r5 = r5.a(r0)
            if (r5 != r4) goto L4e
        L4d:
            return r4
        L4e:
            be8 r5 = defpackage.be8.a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.l97.b(kv1):java.lang.Object");
    }
}
