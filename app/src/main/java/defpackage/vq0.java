package defpackage;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class vq0 extends xh8 {
    public final /* synthetic */ String q;
    public final /* synthetic */ wb6 r;
    public final /* synthetic */ zc2 t;

    public vq0(String str, wb6 wb6Var, zc2 zc2Var) {
        this.q = str;
        this.r = wb6Var;
        this.t = zc2Var;
    }

    @Override // defpackage.xh8, defpackage.aj8
    public final void onDataChange(eb2 eb2Var) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        db2 db2VarB = eb2Var.b();
        Iterator it = (Iterator) db2VarB.b;
        while (it.hasNext()) {
            hk5 hk5Var = (hk5) it.next();
            zc2 zc2VarD = ((eb2) db2VarB.c).b.d(hk5Var.a.a);
            sb4 sb4VarD = sb4.d(hk5Var.b);
            try {
                String strE = zc2VarD.e();
                wb6 wb6Var = (wb6) t62.b(wb6.class, sb4VarD.a.getValue());
                if (strE != null && strE.length() != 0 && wb6Var != null) {
                    linkedHashMap.put(strE, wb6Var);
                }
            } catch (Exception unused) {
            }
        }
        linkedHashMap.put(this.q, this.r);
        List listP1 = el1.p1(el1.n1(linkedHashMap.values(), new nx(1)), 5);
        int iQ0 = x65.q0(hl1.G0(listP1, 10));
        if (iQ0 < 16) {
            iQ0 = 16;
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(iQ0);
        for (Object obj : listP1) {
            String orderId = ((wb6) obj).getOrderId();
            if (orderId == null) {
                orderId = "unknown";
            }
            linkedHashMap2.put(re3.m(orderId), obj);
        }
        for (Map.Entry entry : linkedHashMap2.entrySet()) {
            this.t.d((String) entry.getKey()).i(entry.getValue());
        }
    }
}
