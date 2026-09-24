package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wm9 extends ih9 {
    private static final wm9 zzb;
    private oh9 zzd = gk9.d;

    static {
        wm9 wm9Var = new wm9();
        zzb = wm9Var;
        ih9.e(wm9Var);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x003e, code lost:
    
        if (r7 != false) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static defpackage.wm9 j(byte[] r7) throws defpackage.xh9 {
        /*
            wm9 r0 = defpackage.wm9.zzb
            int r5 = r7.length
            ih9 r2 = r0.b()
            dk9 r0 = defpackage.dk9.c     // Catch: java.lang.IndexOutOfBoundsException -> L54 java.io.IOException -> L59 defpackage.cl9 -> L74 defpackage.xh9 -> L80
            java.lang.Class r1 = r2.getClass()     // Catch: java.lang.IndexOutOfBoundsException -> L54 java.io.IOException -> L59 defpackage.cl9 -> L74 defpackage.xh9 -> L80
            jk9 r1 = r0.a(r1)     // Catch: java.lang.IndexOutOfBoundsException -> L54 java.io.IOException -> L59 defpackage.cl9 -> L74 defpackage.xh9 -> L80
            of9 r6 = new of9     // Catch: java.lang.IndexOutOfBoundsException -> L54 java.io.IOException -> L59 defpackage.cl9 -> L74 defpackage.xh9 -> L80
            r6.<init>()     // Catch: java.lang.IndexOutOfBoundsException -> L54 java.io.IOException -> L59 defpackage.cl9 -> L74 defpackage.xh9 -> L80
            r4 = 0
            r3 = r7
            r1.d(r2, r3, r4, r5, r6)     // Catch: java.lang.IndexOutOfBoundsException -> L54 java.io.IOException -> L59 defpackage.cl9 -> L74 defpackage.xh9 -> L80
            r1.a(r2)     // Catch: java.lang.IndexOutOfBoundsException -> L54 java.io.IOException -> L59 defpackage.cl9 -> L74 defpackage.xh9 -> L80
            r7 = 1
            java.lang.Object r1 = r2.h(r7)
            java.lang.Byte r1 = (java.lang.Byte) r1
            byte r1 = r1.byteValue()
            if (r1 != r7) goto L2c
            goto L40
        L2c:
            if (r1 == 0) goto L43
            java.lang.Class r7 = r2.getClass()
            jk9 r7 = r0.a(r7)
            boolean r7 = r7.f(r2)
            r0 = 2
            r2.h(r0)
            if (r7 == 0) goto L43
        L40:
            wm9 r2 = (defpackage.wm9) r2
            return r2
        L43:
            cl9 r7 = new cl9
            java.lang.String r0 = "Message was missing required fields.  (Lite runtime could not determine which fields were missing)."
            r7.<init>(r0)
            xh9 r0 = new xh9
            java.lang.String r7 = r7.getMessage()
            r0.<init>(r7)
            throw r0
        L54:
            xh9 r7 = defpackage.xh9.c()
            throw r7
        L59:
            r0 = move-exception
            r7 = r0
            java.lang.Throwable r0 = r7.getCause()
            boolean r0 = r0 instanceof defpackage.xh9
            if (r0 == 0) goto L6a
            java.lang.Throwable r7 = r7.getCause()
            xh9 r7 = (defpackage.xh9) r7
            throw r7
        L6a:
            xh9 r0 = new xh9
            java.lang.String r1 = r7.getMessage()
            r0.<init>(r1, r7)
            throw r0
        L74:
            r0 = move-exception
            r7 = r0
            xh9 r0 = new xh9
            java.lang.String r7 = r7.getMessage()
            r0.<init>(r7)
            throw r0
        L80:
            r0 = move-exception
            r7 = r0
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.wm9.j(byte[]):wm9");
    }

    @Override // defpackage.ih9
    public final Object h(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new hk9(zzb, new Object[]{"zzd"});
        }
        if (i2 == 3) {
            return new wm9();
        }
        if (i2 == 4) {
            return new um9();
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }

    public final oh9 k() {
        return this.zzd;
    }
}
