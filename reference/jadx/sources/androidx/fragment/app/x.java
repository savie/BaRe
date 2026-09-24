package androidx.fragment.app;

import android.util.Log;
import defpackage.ds3;
import defpackage.e6;
import defpackage.el1;
import defpackage.eq3;
import defpackage.mr3;
import defpackage.ss5;
import defpackage.xj0;
import defpackage.zj7;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class x extends ss5 {
    public final /* synthetic */ z a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x(z zVar) {
        super(false);
        this.a = zVar;
    }

    @Override // defpackage.ss5
    public final void handleOnBackCancelled() {
        boolean zK = z.K(3);
        z zVar = this.a;
        if (zK) {
            Log.d("FragmentManager", "handleOnBackCancelled. PREDICTIVE_BACK = true fragment manager " + zVar);
        }
        if (z.K(3)) {
            Log.d("FragmentManager", "cancelBackStackTransition for transition " + zVar.h);
        }
        a aVar = zVar.h;
        if (aVar != null) {
            aVar.s = false;
            aVar.d();
            a aVar2 = zVar.h;
            mr3 mr3Var = new mr3(zVar, 0);
            if (aVar2.q == null) {
                aVar2.q = new ArrayList();
            }
            aVar2.q.add(mr3Var);
            zVar.h.e();
            zVar.i = true;
            zVar.z(true);
            zVar.E();
            zVar.i = false;
            zVar.h = null;
        }
    }

    @Override // defpackage.ss5
    public final void handleOnBackPressed() {
        boolean zK = z.K(3);
        z zVar = this.a;
        if (zK) {
            Log.d("FragmentManager", "handleOnBackPressed. PREDICTIVE_BACK = true fragment manager " + zVar);
        }
        x xVar = zVar.j;
        ArrayList arrayList = zVar.n;
        zVar.i = true;
        zVar.z(true);
        zVar.i = false;
        if (zVar.h == null) {
            if (xVar.isEnabled()) {
                if (z.K(3)) {
                    Log.d("FragmentManager", "Calling popBackStackImmediate via onBackPressed callback");
                }
                zVar.R();
                return;
            } else {
                if (z.K(3)) {
                    Log.d("FragmentManager", "Calling onBackPressed via onBackPressed callback");
                }
                zVar.g.b().a();
                return;
            }
        }
        if (!arrayList.isEmpty()) {
            LinkedHashSet linkedHashSet = new LinkedHashSet(z.F(zVar.h));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                if (it.next() != null) {
                    e6.d();
                    return;
                }
                Iterator it2 = linkedHashSet.iterator();
                if (it2.hasNext()) {
                    throw null;
                }
            }
        }
        Iterator it3 = zVar.h.a.iterator();
        while (it3.hasNext()) {
            o oVar = ((ds3) it3.next()).b;
            if (oVar != null) {
                oVar.mTransitioning = false;
            }
        }
        for (g gVar : zVar.f(new ArrayList(Collections.singletonList(zVar.h)), 0, 1)) {
            ArrayList arrayList2 = gVar.c;
            if (z.K(3)) {
                Log.d("FragmentManager", "SpecialEffectsController: Completing Back ");
            }
            gVar.k(arrayList2);
            gVar.c(arrayList2);
        }
        Iterator it4 = zVar.h.a.iterator();
        while (it4.hasNext()) {
            o oVar2 = ((ds3) it4.next()).b;
            if (oVar2 != null && oVar2.mContainer == null) {
                zVar.g(oVar2).k();
            }
        }
        zVar.h = null;
        zVar.g0();
        if (z.K(3)) {
            Log.d("FragmentManager", "Op is being set to null");
            Log.d("FragmentManager", "OnBackPressedCallback enabled=" + xVar.isEnabled() + " for  FragmentManager " + zVar);
        }
    }

    @Override // defpackage.ss5
    public final void handleOnBackProgressed(xj0 xj0Var) {
        boolean zK = z.K(2);
        z zVar = this.a;
        if (zK) {
            Log.v("FragmentManager", "handleOnBackProgressed. PREDICTIVE_BACK = true fragment manager " + zVar);
        }
        if (zVar.h != null) {
            for (g gVar : zVar.f(new ArrayList(Collections.singletonList(zVar.h)), 0, 1)) {
                gVar.getClass();
                if (z.K(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: Processing Progress " + xj0Var.c);
                }
                ArrayList arrayList = gVar.c;
                ArrayList arrayList2 = new ArrayList();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    el1.K0(((h0) it.next()).k, arrayList2);
                }
                List listV1 = el1.v1(el1.z1(arrayList2));
                int size = listV1.size();
                for (int i = 0; i < size; i++) {
                    ((zj7) listV1.get(i)).c(xj0Var, gVar.a);
                }
            }
            Iterator it2 = zVar.n.iterator();
            if (it2.hasNext()) {
                throw eq3.h(it2);
            }
        }
    }

    @Override // defpackage.ss5
    public final void handleOnBackStarted(xj0 xj0Var) {
        boolean zK = z.K(3);
        z zVar = this.a;
        if (zK) {
            Log.d("FragmentManager", "handleOnBackStarted. PREDICTIVE_BACK = true fragment manager " + zVar);
        }
        zVar.w();
        zVar.x(new y(zVar), false);
    }
}
