package defpackage;

import java.util.ArrayList;
import java.util.List;
import okhttp3.Request;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class oh0 extends xh2 {
    public final kh0 c;
    public final String d;

    public oh0(kh0 kh0Var, zv1 zv1Var) {
        super(zv1Var);
        this.c = kh0Var;
        this.d = "BDeleteSession";
    }

    @Override // defpackage.xh2
    public final boolean b(List list) throws Exception {
        ArrayList<String> arrayList = new ArrayList();
        for (Object obj : list) {
            if (((String) obj).length() > 0) {
                arrayList.add(obj);
            }
        }
        for (String str : arrayList) {
            Exception exc = null;
            try {
                kh0 kh0Var = this.c;
                kh0Var.getClass();
                str.getClass();
                mv0 mv0VarS = kh0Var.s();
                mv0VarS.getClass();
                Request.Builder builderB = mv0.b(mv0VarS.a("/2.0/files/".concat(str)));
                Request.Builder.a(builderB);
                Request request = new Request(builderB);
                mv0VarS.e(request, mv0.j(request), null).close();
            } catch (Exception e) {
                hv0 hv0Var = e instanceof hv0 ? (hv0) e : null;
                Integer numValueOf = hv0Var != null ? Integer.valueOf(hv0Var.a) : null;
                if (numValueOf == null || numValueOf.intValue() != 404) {
                    vr6.e$default(vr6.INSTANCE, this.d, "deleteFilesByIds: ".concat(dv0.a(e)), null, 4, null);
                    exc = e;
                }
            }
            if (exc != null) {
                throw exc;
            }
            List list2 = gv0.a;
            gv0.c(nc8.I(str));
        }
        return true;
    }

    @Override // defpackage.xh2
    public final String d() {
        return this.d;
    }
}
