package org.swiftapps.swiftbackup.cloud.orphans;

import defpackage.be8;
import defpackage.jd4;
import defpackage.jv1;
import defpackage.kc;
import defpackage.qh4;
import defpackage.qt3;
import defpackage.ws7;
import defpackage.xx1;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class c extends ws7 implements qt3 {
    public jd4 a;
    public int b;
    public /* synthetic */ Object c;
    public final /* synthetic */ kc d;
    public final /* synthetic */ ArrayList e;
    public final /* synthetic */ a f;
    public final /* synthetic */ long k;
    public final /* synthetic */ String n;
    public final /* synthetic */ long p;
    public final /* synthetic */ qh4 q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(kc kcVar, ArrayList arrayList, a aVar, long j, String str, long j2, qh4 qh4Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.d = kcVar;
        this.e = arrayList;
        this.f = aVar;
        this.k = j;
        this.n = str;
        this.p = j2;
        this.q = qh4Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        c cVar = new c(this.d, this.e, this.f, this.k, this.n, this.p, this.q, jv1Var);
        cVar.c = obj;
        return cVar;
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((c) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x0117, code lost:
    
        if (r0 == r10) goto L61;
     */
    @Override // defpackage.ml0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r20) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.swiftapps.swiftbackup.cloud.orphans.c.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
