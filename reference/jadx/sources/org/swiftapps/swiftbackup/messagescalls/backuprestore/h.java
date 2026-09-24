package org.swiftapps.swiftbackup.messagescalls.backuprestore;

import defpackage.be8;
import defpackage.c7;
import defpackage.el1;
import defpackage.ex6;
import defpackage.fm7;
import defpackage.gv7;
import defpackage.hl1;
import defpackage.jv1;
import defpackage.lg7;
import defpackage.qt3;
import defpackage.qv1;
import defpackage.ud5;
import defpackage.wg5;
import defpackage.ws7;
import defpackage.xx1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class h extends ws7 implements qt3 {
    public final /* synthetic */ f a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(f fVar, jv1 jv1Var) {
        super(2, jv1Var);
        this.a = fVar;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new h(this.a, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        h hVar = (h) create((xx1) obj, (jv1) obj2);
        be8 be8Var = be8.a;
        hVar.invokeSuspend(be8Var);
        return be8Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        lg7.H(obj);
        f fVar = this.a;
        ex6 ex6Var = fVar.i;
        ex6Var.k(f.a.Loading);
        gv7 gv7Var = ud5.a;
        c7 c7Var = new c7(fVar, 21);
        wg5.c cVar = (wg5.c) fVar.h.getValue();
        cVar.getClass();
        List list$default = qv1.a.getList$default(qv1.Companion, false, cVar, c7Var, 1, null);
        fVar.j.k(null);
        boolean zIsEmpty = list$default.isEmpty();
        ex6 ex6Var2 = fVar.k;
        if (zIsEmpty) {
            ex6Var2.k(new fm7((List) null, (Set) null, false, (String) null, 31));
            ex6Var.k(f.a.DataEmpty);
        } else {
            ArrayList arrayList = new ArrayList(hl1.G0(list$default, 10));
            Iterator it = list$default.iterator();
            while (it.hasNext()) {
                arrayList.add(((qv1) it.next()).getItemId());
            }
            ex6Var2.k(new fm7(list$default, el1.z1(arrayList), false, (String) null, 28));
            ex6Var.k(f.a.DataReceived);
        }
        return be8.a;
    }
}
