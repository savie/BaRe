package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xa2 extends ws7 implements qt3 {
    public Iterator a;
    public cd7 b;
    public Object c;
    public int d;
    public /* synthetic */ Object e;
    public final /* synthetic */ List f;
    public final /* synthetic */ ArrayList k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xa2(List list, ArrayList arrayList, jv1 jv1Var) {
        super(2, jv1Var);
        this.f = list;
        this.k = arrayList;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        xa2 xa2Var = new xa2(this.f, this.k, jv1Var);
        xa2Var.e = obj;
        return xa2Var;
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((xa2) create(obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0045  */
    /* JADX WARN: Code duplicated, block: B:16:0x005f  */
    /* JADX WARN: Code duplicated, block: B:19:0x006c  */
    /* JADX WARN: Code duplicated, block: B:22:0x0099  */
    /* JADX WARN: Code duplicated, block: B:23:0x009b  */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // defpackage.ml0
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            r11 = this;
            int r0 = r11.d
            r1 = 2
            r2 = 1
            r3 = 0
            yx1 r4 = defpackage.yx1.a
            if (r0 == 0) goto L32
            if (r0 == r2) goto L1f
            if (r0 != r1) goto L19
            java.util.Iterator r0 = r11.a
            java.util.Iterator r0 = (java.util.Iterator) r0
            java.lang.Object r5 = r11.e
            java.util.List r5 = (java.util.List) r5
            defpackage.lg7.H(r12)
            goto L3f
        L19:
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.l0.e(r11)
            return r3
        L1f:
            java.lang.Object r0 = r11.c
            cd7 r5 = r11.b
            java.util.Iterator r6 = r11.a
            java.util.Iterator r6 = (java.util.Iterator) r6
            java.lang.Object r7 = r11.e
            java.util.List r7 = (java.util.List) r7
            defpackage.lg7.H(r12)
            r10 = r7
            r7 = r5
            r5 = r10
            goto L64
        L32:
            defpackage.lg7.H(r12)
            java.lang.Object r12 = r11.e
            java.util.List r0 = r11.f
            java.util.Iterator r0 = r0.iterator()
            java.util.ArrayList r5 = r11.k
        L3f:
            boolean r6 = r0.hasNext()
            if (r6 == 0) goto L9d
            java.lang.Object r6 = r0.next()
            cd7 r6 = (defpackage.cd7) r6
            r11.e = r5
            r7 = r0
            java.util.Iterator r7 = (java.util.Iterator) r7
            r11.a = r7
            r11.b = r6
            r11.c = r12
            r11.d = r2
            java.lang.Object r7 = r6.a(r12, r11)
            if (r7 != r4) goto L5f
            goto L98
        L5f:
            r10 = r0
            r0 = r12
            r12 = r7
            r7 = r6
            r6 = r10
        L64:
            java.lang.Boolean r12 = (java.lang.Boolean) r12
            boolean r12 = r12.booleanValue()
            if (r12 == 0) goto L9b
            wa2 r12 = new wa2
            r12.<init>(r7, r3)
            r5.add(r12)
            r11.e = r5
            r12 = r6
            java.util.Iterator r12 = (java.util.Iterator) r12
            r11.a = r12
            r11.b = r3
            r11.c = r3
            r11.d = r1
            dd7 r12 = r7.b
            gd7 r8 = new gd7
            gv7 r9 = r7.e
            java.lang.Object r9 = r9.getValue()
            android.content.SharedPreferences r9 = (android.content.SharedPreferences) r9
            java.util.Set r7 = r7.f
            r8.<init>(r9, r7)
            java.lang.Object r12 = r12.a(r8, r0, r11)
            if (r12 != r4) goto L99
        L98:
            return r4
        L99:
            r0 = r6
            goto L3f
        L9b:
            r12 = r0
            goto L99
        L9d:
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.xa2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
