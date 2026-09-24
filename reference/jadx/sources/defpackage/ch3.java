package defpackage;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ch3 {
    public static final ch3 a = new ch3();
    public static final Map b = Collections.synchronizedMap(new LinkedHashMap());

    public static ah3 a(h97 h97Var) {
        Map map = b;
        map.getClass();
        Object obj = map.get(h97Var);
        if (obj != null) {
            return (ah3) obj;
        }
        f6.o(h97Var, ". Dependencies should be added at class load time.", "Cannot get dependency ");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0061  */
    /* JADX WARN: Code duplicated, block: B:19:0x00a0 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:20:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:23:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x00a1 -> B:21:0x00a2). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object b(defpackage.kv1 r9) {
        /*
            r8 = this;
            boolean r0 = r9 instanceof defpackage.bh3
            if (r0 == 0) goto L13
            r0 = r9
            bh3 r0 = (defpackage.bh3) r0
            int r1 = r0.n
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.n = r1
            goto L18
        L13:
            bh3 r0 = new bh3
            r0.<init>(r8, r9)
        L18:
            java.lang.Object r8 = r0.f
            int r9 = r0.n
            r1 = 0
            r2 = 1
            if (r9 == 0) goto L3c
            if (r9 != r2) goto L36
            java.lang.Object r9 = r0.e
            java.util.Map r3 = r0.d
            java.util.Map r3 = (java.util.Map) r3
            h97 r4 = r0.c
            java.util.Iterator r5 = r0.b
            java.util.Iterator r5 = (java.util.Iterator) r5
            java.util.Map r6 = r0.a
            java.util.Map r6 = (java.util.Map) r6
            defpackage.lg7.H(r8)
            goto La2
        L36:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.l0.e(r8)
            return r1
        L3c:
            defpackage.lg7.H(r8)
            java.util.Map r8 = defpackage.ch3.b
            r8.getClass()
            java.util.LinkedHashMap r9 = new java.util.LinkedHashMap
            int r3 = r8.size()
            int r3 = defpackage.x65.q0(r3)
            r9.<init>(r3)
            java.util.Set r8 = r8.entrySet()
            java.util.Iterator r8 = r8.iterator()
            r5 = r8
            r3 = r9
        L5b:
            boolean r8 = r5.hasNext()
            if (r8 == 0) goto Lba
            java.lang.Object r8 = r5.next()
            java.util.Map$Entry r8 = (java.util.Map.Entry) r8
            java.lang.Object r9 = r8.getKey()
            java.lang.Object r4 = r8.getKey()
            h97 r4 = (defpackage.h97) r4
            java.lang.Object r8 = r8.getValue()
            ah3 r8 = (defpackage.ah3) r8
            fj r6 = new fj
            r7 = 23
            r6.<init>(r8, r7)
            r8 = r3
            java.util.Map r8 = (java.util.Map) r8
            r0.a = r8
            r7 = r5
            java.util.Iterator r7 = (java.util.Iterator) r7
            r0.b = r7
            r0.c = r4
            r0.d = r8
            r0.e = r9
            r0.n = r2
            oe4 r8 = new oe4
            r7 = 0
            r8.<init>(r6, r1, r7)
            lv2 r6 = defpackage.lv2.a
            java.lang.Object r8 = defpackage.l73.G(r6, r8, r0)
            yx1 r6 = defpackage.yx1.a
            if (r8 != r6) goto La1
            return r6
        La1:
            r6 = r3
        La2:
            r4.getClass()
            ah3 r8 = a(r4)
            oy1 r8 = r8.b
            if (r8 == 0) goto Lb2
            r3.put(r9, r8)
            r3 = r6
            goto L5b
        Lb2:
            java.lang.String r8 = "Subscriber "
            java.lang.String r9 = " has not been registered."
            defpackage.f6.o(r4, r9, r8)
            return r1
        Lba:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ch3.b(kv1):java.lang.Object");
    }
}
