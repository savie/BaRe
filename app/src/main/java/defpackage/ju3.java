package defpackage;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ju3 extends xh2 {
    public final d04 c;
    public final String d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ju3(d04 d04Var, zv1 zv1Var) {
        super(zv1Var);
        d04Var.getClass();
        this.c = d04Var;
        this.d = "GRestDeleteSession";
    }

    @Override // defpackage.xh2
    public final boolean b(List list) {
        return e(list, true);
    }

    @Override // defpackage.xh2
    public final String d() {
        return this.d;
    }

    public final boolean e(List list, boolean z) throws IOException {
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((String) obj).length() > 0) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            return true;
        }
        ArrayList arrayList2 = new ArrayList();
        Long l = null;
        try {
            xz3 xz3VarB = this.c.b(arrayList);
            ArrayList arrayList3 = xz3VarB.c;
            el1.K0(xz3VarB.a, arrayList2);
            l = xz3VarB.b;
            if (!arrayList3.isEmpty()) {
                vr6.e$default(vr6.INSTANCE, this.d, "deleteFilesByIds: Failed Google Drive batch parts: " + el1.Y0(arrayList3, "; ", null, null, new nu(5), 30), null, 4, null);
            }
        } catch (Exception e) {
            vr6 vr6Var = vr6.INSTANCE;
            vr6.e$default(vr6Var, this.d, "deleteFilesByIds: Error during batch deletion", e, null, 8, null);
            if (e instanceof vz3) {
                vz3 vz3Var = (vz3) e;
                vr6.e$default(vr6Var, this.d, rs9.w(vz3Var), null, 4, null);
                l = vz3Var.d;
            }
            arrayList2.addAll(arrayList);
        }
        if (z && !arrayList2.isEmpty()) {
            try {
                Thread.sleep(l != null ? l.longValue() : 5000L);
            } catch (Exception unused) {
            }
            vr6.i$default(vr6.INSTANCE, this.d, xs1.h(arrayList2.size(), "Retrying deletion for ", " file ids"), null, 4, null);
            return e(arrayList2, false);
        }
        if (arrayList2.isEmpty()) {
            return true;
        }
        y5.m(dj7.j("Failed deleting ", arrayList2.size(), "/", " Google Drive files", arrayList.size()));
        return false;
    }
}
