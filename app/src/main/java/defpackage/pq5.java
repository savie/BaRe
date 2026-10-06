package defpackage;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class pq5 extends xh2 {
    public final kq5 c;
    public final st5 d;
    public final String e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pq5(kq5 kq5Var, st5 st5Var, zv1 zv1Var) {
        super(zv1Var);
        st5Var.getClass();
        this.c = kq5Var;
        this.d = st5Var;
        this.e = "ODeleteSession";
    }

    @Override // defpackage.xh2
    public final boolean b(List list) {
        return e(list, true);
    }

    @Override // defpackage.xh2
    public final String d() {
        return this.e;
    }

    public final boolean e(List list, boolean z) throws IOException {
        Long l;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((String) obj).length() > 0) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            return true;
        }
        this.c.invoke();
        ArrayList arrayList2 = new ArrayList();
        try {
            nt5 nt5VarB = this.d.b(arrayList);
            el1.K0(nt5VarB.a, arrayList2);
            l = nt5VarB.b;
        } catch (Exception e) {
            vr6 vr6Var = vr6.INSTANCE;
            vr6.e$default(vr6Var, this.e, "deleteFilesByIds: Error during batch deletion", e, null, 8, null);
            if (e instanceof mt5) {
                mt5 mt5Var = (mt5) e;
                vr6.e$default(vr6Var, this.e, l73.E(mt5Var), null, 4, null);
                l = mt5Var.c;
            } else {
                l = null;
            }
            arrayList2.addAll(arrayList);
        }
        if (z && !arrayList2.isEmpty()) {
            try {
                Thread.sleep(l != null ? l.longValue() : 5000L);
            } catch (Exception unused) {
            }
            vr6.i$default(vr6.INSTANCE, this.e, xs1.h(arrayList2.size(), "Retrying deletion for ", " file ids"), null, 4, null);
            return e(arrayList2, false);
        }
        if (arrayList2.isEmpty()) {
            return true;
        }
        y5.m(dj7.j("Failed deleting ", arrayList2.size(), "/", " OneDrive files", arrayList.size()));
        return false;
    }
}
