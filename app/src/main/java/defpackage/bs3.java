package defpackage;

import android.util.Log;
import androidx.fragment.app.o;
import androidx.fragment.app.z;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class bs3 {
    public static final as3 a = as3.a;

    public static as3 a(o oVar) {
        while (oVar != null) {
            if (oVar.isAdded()) {
                oVar.getParentFragmentManager();
            }
            oVar = oVar.getParentFragment();
        }
        return a;
    }

    public static void b(gn8 gn8Var) {
        if (z.K(3)) {
            Log.d("FragmentManager", "StrictMode violation in ".concat(gn8Var.a.getClass().getName()), gn8Var);
        }
    }

    public static final void c(o oVar, String str) {
        oVar.getClass();
        str.getClass();
        b(new yr3(oVar, "Attempting to reuse fragment " + oVar + " with previous ID " + str));
        a(oVar).getClass();
    }
}
