package androidx.fragment.app;

import android.os.Bundle;
import android.util.Log;
import defpackage.y5;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class e0 {
    public final ArrayList a = new ArrayList();
    public final HashMap b = new HashMap();
    public final HashMap c = new HashMap();
    public a0 d;

    public final void a(o oVar) {
        if (this.a.contains(oVar)) {
            y5.g(oVar, "Fragment already added: ");
            return;
        }
        synchronized (this.a) {
            this.a.add(oVar);
        }
        oVar.mAdded = true;
    }

    public final o b(String str) {
        d0 d0Var = (d0) this.b.get(str);
        if (d0Var != null) {
            return d0Var.c;
        }
        return null;
    }

    public final o c(String str) {
        for (d0 d0Var : this.b.values()) {
            if (d0Var != null) {
                o oVarC = d0Var.c;
                if (!str.equals(oVarC.mWho)) {
                    oVarC = oVarC.mChildFragmentManager.c.c(str);
                }
                if (oVarC != null) {
                    return oVarC;
                }
            }
        }
        return null;
    }

    public final ArrayList d() {
        ArrayList arrayList = new ArrayList();
        for (d0 d0Var : this.b.values()) {
            if (d0Var != null) {
                arrayList.add(d0Var);
            }
        }
        return arrayList;
    }

    public final ArrayList e() {
        ArrayList arrayList = new ArrayList();
        for (d0 d0Var : this.b.values()) {
            if (d0Var != null) {
                arrayList.add(d0Var.c);
            } else {
                arrayList.add(null);
            }
        }
        return arrayList;
    }

    public final List f() {
        ArrayList arrayList;
        if (this.a.isEmpty()) {
            return Collections.EMPTY_LIST;
        }
        synchronized (this.a) {
            arrayList = new ArrayList(this.a);
        }
        return arrayList;
    }

    public final void g(d0 d0Var) {
        o oVar = d0Var.c;
        String str = oVar.mWho;
        HashMap map = this.b;
        if (map.get(str) != null) {
            return;
        }
        map.put(oVar.mWho, d0Var);
        if (z.K(2)) {
            Log.v("FragmentManager", "Added fragment to active set " + oVar);
        }
    }

    public final void h(d0 d0Var) {
        o oVar = d0Var.c;
        if (oVar.mRetainInstance) {
            this.d.f(oVar);
        }
        String str = oVar.mWho;
        HashMap map = this.b;
        if (map.get(str) == d0Var && ((d0) map.put(oVar.mWho, null)) != null && z.K(2)) {
            Log.v("FragmentManager", "Removed fragment from active set " + oVar);
        }
    }

    public final Bundle i(Bundle bundle, String str) {
        HashMap map = this.c;
        return bundle != null ? (Bundle) map.put(str, bundle) : (Bundle) map.remove(str);
    }
}
