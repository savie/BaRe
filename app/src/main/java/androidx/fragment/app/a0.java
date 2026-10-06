package androidx.fragment.app;

import android.util.Log;
import defpackage.tl8;
import defpackage.wr3;
import defpackage.yl8;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class a0 extends tl8 {
    public static final wr3 h = new wr3();
    public final boolean e;
    public final HashMap b = new HashMap();
    public final HashMap c = new HashMap();
    public final HashMap d = new HashMap();
    public boolean f = false;
    public boolean g = false;

    public a0(boolean z) {
        this.e = z;
    }

    @Override // defpackage.tl8
    public final void b() {
        if (z.K(3)) {
            Log.d("FragmentManager", "onCleared called for " + this);
        }
        this.f = true;
    }

    public final void c(o oVar, boolean z) {
        if (z.K(3)) {
            Log.d("FragmentManager", "Clearing non-config state for " + oVar);
        }
        e(oVar.mWho, z);
    }

    public final void d(String str, boolean z) {
        if (z.K(3)) {
            Log.d("FragmentManager", "Clearing non-config state for saved state of Fragment " + str);
        }
        e(str, z);
    }

    public final void e(String str, boolean z) {
        HashMap map = this.c;
        a0 a0Var = (a0) map.get(str);
        if (a0Var != null) {
            if (z) {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll(a0Var.c.keySet());
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    a0Var.d((String) it.next(), true);
                }
            }
            a0Var.b();
            map.remove(str);
        }
        HashMap map2 = this.d;
        yl8 yl8Var = (yl8) map2.get(str);
        if (yl8Var != null) {
            yl8Var.a();
            map2.remove(str);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && a0.class == obj.getClass()) {
            a0 a0Var = (a0) obj;
            if (this.b.equals(a0Var.b) && this.c.equals(a0Var.c) && this.d.equals(a0Var.d)) {
                return true;
            }
        }
        return false;
    }

    public final void f(o oVar) {
        if (this.g) {
            if (z.K(2)) {
                Log.v("FragmentManager", "Ignoring removeRetainedFragment as the state is already saved");
            }
        } else {
            if (this.b.remove(oVar.mWho) == null || !z.K(2)) {
                return;
            }
            Log.v("FragmentManager", "Updating retained Fragments: Removed " + oVar);
        }
    }

    public final int hashCode() {
        return this.d.hashCode() + ((this.c.hashCode() + (this.b.hashCode() * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FragmentManagerViewModel{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} Fragments (");
        Iterator it = this.b.values().iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") Child Non Config (");
        Iterator it2 = this.c.keySet().iterator();
        while (it2.hasNext()) {
            sb.append((String) it2.next());
            if (it2.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") ViewModelStores (");
        Iterator it3 = this.d.keySet().iterator();
        while (it3.hasNext()) {
            sb.append((String) it3.next());
            if (it3.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(')');
        return sb.toString();
    }
}
