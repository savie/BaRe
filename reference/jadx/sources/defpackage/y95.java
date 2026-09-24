package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class y95 extends xh2 {
    public final nb5 c;
    public final String d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y95(nb5 nb5Var, zv1 zv1Var) {
        super(zv1Var);
        nb5Var.getClass();
        this.c = nb5Var;
        this.d = "MDeleteSession";
    }

    @Override // defpackage.xh2
    public final boolean b(List list) {
        ArrayList<String> arrayList = new ArrayList();
        for (Object obj : list) {
            if (((String) obj).length() > 0) {
                arrayList.add(obj);
            }
        }
        for (String str : arrayList) {
            this.c.getClass();
            nb5.a(str);
        }
        return true;
    }

    @Override // defpackage.xh2
    public final String d() {
        return this.d;
    }
}
