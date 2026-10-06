package defpackage;

import com.google.android.gms.common.api.internal.BasePendingResult;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class i19 {
    public static final Set b = Collections.newSetFromMap(new WeakHashMap());
    public final kz3 a;

    public i19(kz3 kz3Var) {
        this.a = kz3Var;
    }

    public final j39 a(j39 j39Var) {
        boolean z = true;
        if (!j39Var.i && !((Boolean) BasePendingResult.j.get()).booleanValue()) {
            z = false;
        }
        j39Var.i = z;
        kz3 kz3Var = this.a;
        pz3 pz3Var = kz3Var.j;
        pz3Var.getClass();
        p19 p19Var = new p19(new v19(j39Var), pz3Var.i.get(), kz3Var);
        n29 n29Var = pz3Var.n;
        n29Var.sendMessage(n29Var.obtainMessage(4, p19Var));
        return j39Var;
    }
}
