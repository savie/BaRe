package androidx.fragment.app;

import android.util.Log;
import defpackage.dj7;
import defpackage.ds3;
import defpackage.e6;
import defpackage.sr3;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class y implements sr3 {
    public final /* synthetic */ z a;

    public y(z zVar) {
        this.a = zVar;
    }

    @Override // defpackage.sr3
    public final boolean a(ArrayList arrayList, ArrayList arrayList2) {
        boolean zT;
        z zVar = this.a;
        ArrayList arrayList3 = zVar.n;
        if (z.K(2)) {
            Log.v("FragmentManager", "FragmentManager has the following pending actions inside of prepareBackStackState: " + zVar.a);
        }
        if (zVar.d.isEmpty()) {
            Log.i("FragmentManager", "Ignoring call to start back stack pop because the back stack is empty.");
            zT = false;
        } else {
            a aVar = (a) dj7.e(zVar.d, 1);
            zVar.h = aVar;
            Iterator it = aVar.a.iterator();
            while (it.hasNext()) {
                o oVar = ((ds3) it.next()).b;
                if (oVar != null) {
                    oVar.mTransitioning = true;
                }
            }
            zT = zVar.T(arrayList, arrayList2, -1, 0);
        }
        if (!arrayList3.isEmpty() && arrayList.size() > 0) {
            ((Boolean) arrayList2.get(arrayList.size() - 1)).getClass();
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                linkedHashSet.addAll(z.F((a) it2.next()));
            }
            Iterator it3 = arrayList3.iterator();
            while (it3.hasNext()) {
                if (it3.next() != null) {
                    e6.d();
                    return false;
                }
                Iterator it4 = linkedHashSet.iterator();
                if (it4.hasNext()) {
                    throw null;
                }
            }
        }
        return zT;
    }
}
