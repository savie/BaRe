package org.swiftapps.swiftbackup.messagescalls.backuprestore;

import defpackage.be8;
import defpackage.d01;
import defpackage.el1;
import defpackage.ex6;
import defpackage.fm7;
import defpackage.hl1;
import defpackage.jv1;
import defpackage.lg7;
import defpackage.qt3;
import defpackage.ws7;
import defpackage.xx1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.model.provider.CallLogItem;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class d extends ws7 implements qt3 {
    public final /* synthetic */ b a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(b bVar, jv1 jv1Var) {
        super(2, jv1Var);
        this.a = bVar;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new d(this.a, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        d dVar = (d) create((xx1) obj, (jv1) obj2);
        be8 be8Var = be8.a;
        dVar.invokeSuspend(be8Var);
        return be8Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        lg7.H(obj);
        b bVar = this.a;
        ex6 ex6Var = bVar.h;
        ex6Var.k(b.a.Loading);
        ArrayList arrayListG = d01.g();
        boolean zIsEmpty = arrayListG.isEmpty();
        ex6 ex6Var2 = bVar.i;
        if (zIsEmpty) {
            ex6Var2.k(new fm7((List) null, (Set) null, false, (String) null, 31));
            ex6Var.k(b.a.DataEmpty);
        } else {
            ArrayList arrayList = new ArrayList(hl1.G0(arrayListG, 10));
            Iterator it = arrayListG.iterator();
            while (it.hasNext()) {
                arrayList.add(((CallLogItem) it.next()).getItemId());
            }
            ex6Var2.k(new fm7((List) arrayListG, el1.z1(arrayList), false, (String) null, 28));
            ex6Var.k(b.a.DataReceived);
        }
        return be8.a;
    }
}
