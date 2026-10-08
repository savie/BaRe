package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zg {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3, types: [java.lang.Iterable] */
    /* JADX WARN: Type inference failed for: r10v4, types: [ov2] */
    /* JADX WARN: Type inference failed for: r10v5, types: [java.util.ArrayList] */
    public static List a(q63 q63Var, q63 q63Var2, boolean z, bt3 bt3Var, fv fvVar, gv gvVar) {
        q63Var.getClass();
        boolean zA = ky.a(q63Var, q63Var2, bt3Var, fvVar);
        ?? arrayList = 0;
        if (!zA) {
            vr6.e$default(vr6.INSTANCE, "ApkInstallSetPreparer", xs1.i(q63Var, "Extracting splits failed: "), null, 4, null);
            return null;
        }
        ArrayList arrayListB = q63Var2.B();
        if (arrayListB == null || arrayListB.isEmpty()) {
            vr6.e$default(vr6.INSTANCE, "ApkInstallSetPreparer", xs1.i(q63Var, "No split files unpacked from "), null, 4, null);
            return null;
        }
        if (z) {
            arrayListB = th5.b(arrayListB, q63Var2, gvVar);
        }
        if (arrayListB.isEmpty()) {
            vr6.e$default(vr6.INSTANCE, "ApkInstallSetPreparer", xs1.i(q63Var, "No decompressed split files from "), null, 4, null);
            return null;
        }
        ArrayList arrayListB2 = q63Var2.B();
        if (arrayListB2 != null) {
            arrayList = new ArrayList();
            for (Object obj : arrayListB2) {
                if (((q63) obj).m().equals("apk")) {
                    arrayList.add(obj);
                }
            }
        }
        if (arrayList == 0) {
            arrayList = ov2.a;
        }
        return el1.n1(arrayList, new yg(new xg(0), 0));
    }
}
