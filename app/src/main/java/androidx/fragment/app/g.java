package androidx.fragment.app;

import android.animation.AnimatorSet;
import android.content.Context;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import defpackage.bg2;
import defpackage.c6;
import defpackage.dr3;
import defpackage.el1;
import defpackage.fz5;
import defpackage.la;
import defpackage.ln;
import defpackage.pe4;
import defpackage.xu1;
import defpackage.zj7;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class g {
    public final ViewGroup a;
    public final ArrayList b;
    public final ArrayList c;
    public boolean d;
    public boolean e;
    public boolean f;

    public g(ViewGroup viewGroup) {
        viewGroup.getClass();
        this.a = viewGroup;
        this.b = new ArrayList();
        this.c = new ArrayList();
    }

    public static final g i(ViewGroup viewGroup, z zVar) {
        viewGroup.getClass();
        zVar.getClass();
        zVar.I().getClass();
        Object tag = viewGroup.getTag(R.id.special_effects_controller_view_tag);
        if (tag instanceof g) {
            return (g) tag;
        }
        g gVar = new g(viewGroup);
        viewGroup.setTag(R.id.special_effects_controller_view_tag, gVar);
        return gVar;
    }

    public static boolean j(ArrayList arrayList) {
        boolean z;
        zj7 zj7Var;
        Iterator it = arrayList.iterator();
        loop0: while (true) {
            z = true;
            while (true) {
                if (!it.hasNext()) {
                    break loop0;
                }
                h0 h0Var = (h0) it.next();
                if (!h0Var.k.isEmpty()) {
                    ArrayList arrayList2 = h0Var.k;
                    if (arrayList2 != null && arrayList2.isEmpty()) {
                        break;
                    }
                    Iterator it2 = arrayList2.iterator();
                    do {
                        if (!it2.hasNext()) {
                            break;
                        }
                        zj7Var = (zj7) it2.next();
                        zj7Var.getClass();
                    } while (zj7Var instanceof e);
                }
                z = false;
            }
        }
        if (z) {
            ArrayList arrayList3 = new ArrayList();
            Iterator it3 = arrayList.iterator();
            while (it3.hasNext()) {
                el1.K0(((h0) it3.next()).k, arrayList3);
            }
            if (!arrayList3.isEmpty()) {
                return true;
            }
        }
        return false;
    }

    public final void a(h0 h0Var) {
        h0Var.getClass();
        if (h0Var.i) {
            fz5.b(h0Var.a, h0Var.c.requireView(), this.a);
            h0Var.i = false;
        }
    }

    public final void b(ArrayList arrayList, boolean z) {
        Object obj;
        Object next;
        if (z.K(2)) {
            Log.v("FragmentManager", "Collecting Effects");
        }
        Iterator it = arrayList.iterator();
        while (true) {
            obj = null;
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            h0 h0Var = (h0) next;
            View view = h0Var.c.mView;
            view.getClass();
            if (view.getAlpha() != 0.0f || view.getVisibility() != 0) {
                int visibility = view.getVisibility();
                if (visibility == 0) {
                    if (h0Var.a != 2) {
                        break;
                    }
                } else {
                    if (visibility != 4 && visibility != 8) {
                        c6.f(fz5.j(visibility, "Unknown visibility "));
                        return;
                    }
                }
            }
        }
        h0 h0Var2 = (h0) next;
        ListIterator listIterator = arrayList.listIterator(arrayList.size());
        while (listIterator.hasPrevious()) {
            Object objPrevious = listIterator.previous();
            h0 h0Var3 = (h0) objPrevious;
            View view2 = h0Var3.c.mView;
            view2.getClass();
            if (view2.getAlpha() != 0.0f || view2.getVisibility() != 0) {
                int visibility2 = view2.getVisibility();
                if (visibility2 == 0) {
                    continue;
                } else if (visibility2 != 4 && visibility2 != 8) {
                    c6.f(fz5.j(visibility2, "Unknown visibility "));
                    return;
                }
            }
            if (h0Var3.a == 2) {
                obj = objPrevious;
                break;
            }
        }
        h0 h0Var4 = (h0) obj;
        if (z.K(2)) {
            Log.v("FragmentManager", "Executing operations from " + h0Var2 + " to " + h0Var4);
        }
        ArrayList<d> arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        o oVar = ((h0) el1.a1(arrayList)).c;
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            dr3 dr3Var = ((h0) it2.next()).c.mAnimationInfo;
            dr3 dr3Var2 = oVar.mAnimationInfo;
            dr3Var.b = dr3Var2.b;
            dr3Var.c = dr3Var2.c;
            dr3Var.d = dr3Var2.d;
            dr3Var.e = dr3Var2.e;
        }
        Iterator it3 = arrayList.iterator();
        while (true) {
            boolean z2 = false;
            if (!it3.hasNext()) {
                break;
            }
            h0 h0Var5 = (h0) it3.next();
            arrayList2.add(new d(h0Var5, z));
            if (!z ? h0Var5 == h0Var4 : h0Var5 == h0Var2) {
                z2 = true;
            }
            o oVar2 = h0Var5.c;
            bg2 bg2Var = new bg2(h0Var5);
            if (h0Var5.a == 2) {
                if (z) {
                    dr3 dr3Var3 = oVar2.mAnimationInfo;
                } else {
                    oVar2.getClass();
                }
            } else if (z) {
                dr3 dr3Var4 = oVar2.mAnimationInfo;
            } else {
                oVar2.getClass();
            }
            if (h0Var5.a == 2) {
                if (z) {
                    dr3 dr3Var5 = oVar2.mAnimationInfo;
                } else {
                    dr3 dr3Var6 = oVar2.mAnimationInfo;
                }
            }
            if (z2) {
                if (z) {
                    dr3 dr3Var7 = oVar2.mAnimationInfo;
                } else {
                    oVar2.getClass();
                }
            }
            arrayList3.add(bg2Var);
            h0Var5.d.add(new xu1(7, this, h0Var5));
        }
        ArrayList arrayList4 = new ArrayList();
        for (Object obj2 : arrayList3) {
            if (!((bg2) obj2).a()) {
                arrayList4.add(obj2);
            }
        }
        ArrayList arrayList5 = new ArrayList();
        Iterator it4 = arrayList4.iterator();
        while (it4.hasNext()) {
            ((bg2) it4.next()).getClass();
        }
        Iterator it5 = arrayList5.iterator();
        while (it5.hasNext()) {
            ((bg2) it5.next()).getClass();
        }
        ArrayList<d> arrayList6 = new ArrayList();
        ArrayList arrayList7 = new ArrayList();
        Iterator it6 = arrayList2.iterator();
        while (it6.hasNext()) {
            el1.K0(((d) it6.next()).a.k, arrayList7);
        }
        boolean zIsEmpty = arrayList7.isEmpty();
        boolean z3 = false;
        for (d dVar : arrayList2) {
            Context context = this.a.getContext();
            h0 h0Var6 = dVar.a;
            context.getClass();
            la laVarB = dVar.b(context);
            if (laVarB != null) {
                if (((AnimatorSet) laVarB.b) == null) {
                    arrayList6.add(dVar);
                } else {
                    o oVar3 = h0Var6.c;
                    if (h0Var6.k.isEmpty()) {
                        if (h0Var6.a == 3) {
                            h0Var6.i = false;
                        }
                        h0Var6.j.add(new e(dVar));
                        z3 = true;
                    } else if (z.K(2)) {
                        Log.v("FragmentManager", "Ignoring Animator set on " + oVar3 + " as this Fragment was involved in a Transition.");
                    }
                }
            }
        }
        for (d dVar2 : arrayList6) {
            h0 h0Var7 = dVar2.a;
            o oVar4 = h0Var7.c;
            if (zIsEmpty) {
                if (!z3) {
                    h0Var7.j.add(new c(dVar2));
                } else if (z.K(2)) {
                    Log.v("FragmentManager", "Ignoring Animation set on " + oVar4 + " as Animations cannot run alongside Animators.");
                }
            } else if (z.K(2)) {
                Log.v("FragmentManager", "Ignoring Animation set on " + oVar4 + " as Animations cannot run alongside Transitions.");
            }
        }
    }

    public final void c(List list) {
        list.getClass();
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            el1.K0(((h0) it.next()).k, arrayList);
        }
        List listV1 = el1.v1(el1.z1(arrayList));
        int size = listV1.size();
        for (int i = 0; i < size; i++) {
            ((zj7) listV1.get(i)).b(this.a);
        }
        int size2 = list.size();
        for (int i2 = 0; i2 < size2; i2++) {
            a((h0) list.get(i2));
        }
        List listV2 = el1.v1(list);
        int size3 = listV2.size();
        for (int i3 = 0; i3 < size3; i3++) {
            h0 h0Var = (h0) listV2.get(i3);
            if (h0Var.k.isEmpty()) {
                h0Var.b();
            }
        }
    }

    public final void d(int i, int i2, d0 d0Var) {
        synchronized (this.b) {
            try {
                o oVar = d0Var.c;
                oVar.getClass();
                h0 h0VarF = f(oVar);
                if (h0VarF == null) {
                    o oVar2 = d0Var.c;
                    h0VarF = (oVar2.mTransitioning || oVar2.mRemoving) ? g(oVar2) : null;
                }
                if (h0VarF != null) {
                    h0VarF.d(i, i2);
                    return;
                }
                final h0 h0Var = new h0(i, i2, d0Var);
                this.b.add(h0Var);
                h0Var.d.add(new Runnable() { // from class: androidx.fragment.app.g0
                    @Override // java.lang.Runnable
                    public final void run() {
                        g gVar = this.a;
                        ArrayList arrayList = gVar.b;
                        h0 h0Var2 = h0Var;
                        if (arrayList.contains(h0Var2)) {
                            int i3 = h0Var2.a;
                            View view = h0Var2.c.mView;
                            view.getClass();
                            fz5.b(i3, view, gVar.a);
                        }
                    }
                });
                h0Var.d.add(new ln(5, this, h0Var));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void e() {
        boolean z;
        if (this.f) {
            return;
        }
        if (!this.a.isAttachedToWindow()) {
            h();
            this.e = false;
            return;
        }
        synchronized (this.b) {
            try {
                ArrayList<h0> arrayListX1 = el1.x1(this.c);
                this.c.clear();
                Iterator it = arrayListX1.iterator();
                while (true) {
                    z = true;
                    if (!it.hasNext()) {
                        break;
                    }
                    h0 h0Var = (h0) it.next();
                    if (this.b.isEmpty() || !h0Var.c.mTransitioning) {
                        z = false;
                    }
                    h0Var.g = z;
                }
                for (h0 h0Var2 : arrayListX1) {
                    if (this.d) {
                        if (z.K(2)) {
                            Log.v("FragmentManager", "SpecialEffectsController: Completing non-seekable operation " + h0Var2);
                        }
                        h0Var2.b();
                    } else {
                        if (z.K(2)) {
                            Log.v("FragmentManager", "SpecialEffectsController: Cancelling operation " + h0Var2);
                        }
                        h0Var2.a(this.a);
                    }
                    this.d = false;
                    if (!h0Var2.f) {
                        this.c.add(h0Var2);
                    }
                }
                if (!this.b.isEmpty()) {
                    l();
                    ArrayList arrayListX2 = el1.x1(this.b);
                    if (arrayListX2.isEmpty()) {
                        return;
                    }
                    this.b.clear();
                    this.c.addAll(arrayListX2);
                    if (z.K(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Executing pending operations");
                    }
                    b(arrayListX2, this.e);
                    boolean zJ = j(arrayListX2);
                    Iterator it2 = arrayListX2.iterator();
                    boolean z2 = true;
                    while (it2.hasNext()) {
                        if (!((h0) it2.next()).c.mTransitioning) {
                            z2 = false;
                        }
                    }
                    if (!z2 || zJ) {
                        z = false;
                    }
                    this.d = z;
                    if (z.K(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Operation seekable = " + zJ + " \ntransition = " + z2);
                    }
                    if (!z2) {
                        k(arrayListX2);
                        c(arrayListX2);
                    } else if (zJ) {
                        k(arrayListX2);
                        int size = arrayListX2.size();
                        for (int i = 0; i < size; i++) {
                            a((h0) arrayListX2.get(i));
                        }
                    }
                    this.e = false;
                    if (z.K(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Finished executing pending operations");
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final h0 f(o oVar) {
        Object next;
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            next = it.next();
            h0 h0Var = (h0) next;
            if (pe4.d(h0Var.c, oVar) && !h0Var.e) {
                return (h0) next;
            }
        }
        next = null;
        return (h0) next;
    }

    public final h0 g(o oVar) {
        Object next;
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            next = it.next();
            h0 h0Var = (h0) next;
            if (pe4.d(h0Var.c, oVar) && !h0Var.e) {
                return (h0) next;
            }
        }
        next = null;
        return (h0) next;
    }

    public final void h() {
        if (z.K(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Forcing all operations to complete");
        }
        boolean zIsAttachedToWindow = this.a.isAttachedToWindow();
        synchronized (this.b) {
            try {
                l();
                k(this.b);
                ArrayList<h0> arrayListX1 = el1.x1(this.c);
                Iterator it = arrayListX1.iterator();
                while (it.hasNext()) {
                    ((h0) it.next()).g = false;
                }
                for (h0 h0Var : arrayListX1) {
                    if (z.K(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: " + (zIsAttachedToWindow ? "" : "Container " + this.a + " is not attached to window. ") + "Cancelling running operation " + h0Var);
                    }
                    h0Var.a(this.a);
                }
                ArrayList<h0> arrayListX2 = el1.x1(this.b);
                Iterator it2 = arrayListX2.iterator();
                while (it2.hasNext()) {
                    ((h0) it2.next()).g = false;
                }
                for (h0 h0Var2 : arrayListX2) {
                    if (z.K(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: " + (zIsAttachedToWindow ? "" : "Container " + this.a + " is not attached to window. ") + "Cancelling pending operation " + h0Var2);
                    }
                    h0Var2.a(this.a);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void k(List list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            h0 h0Var = (h0) list.get(i);
            d0 d0Var = h0Var.l;
            if (!h0Var.h) {
                h0Var.h = true;
                int i2 = h0Var.b;
                if (i2 == 2) {
                    o oVar = d0Var.c;
                    oVar.getClass();
                    View viewFindFocus = oVar.mView.findFocus();
                    if (viewFindFocus != null) {
                        oVar.e().k = viewFindFocus;
                        if (z.K(2)) {
                            Log.v("FragmentManager", "requestFocus: Saved focused view " + viewFindFocus + " for Fragment " + oVar);
                        }
                    }
                    View viewRequireView = h0Var.c.requireView();
                    if (viewRequireView.getParent() == null) {
                        if (z.K(2)) {
                            Log.v("FragmentManager", "Adding fragment " + oVar + " view " + viewRequireView + " to container in onStart");
                        }
                        d0Var.b();
                        viewRequireView.setAlpha(0.0f);
                    }
                    if (viewRequireView.getAlpha() == 0.0f && viewRequireView.getVisibility() == 0) {
                        if (z.K(2)) {
                            Log.v("FragmentManager", "Making view " + viewRequireView + " INVISIBLE in onStart");
                        }
                        viewRequireView.setVisibility(4);
                    }
                    dr3 dr3Var = oVar.mAnimationInfo;
                    viewRequireView.setAlpha(dr3Var == null ? 1.0f : dr3Var.j);
                    if (z.K(2)) {
                        StringBuilder sb = new StringBuilder("Setting view alpha to ");
                        dr3 dr3Var2 = oVar.mAnimationInfo;
                        sb.append(dr3Var2 != null ? dr3Var2.j : 1.0f);
                        sb.append(" in onStart");
                        Log.v("FragmentManager", sb.toString());
                    }
                } else if (i2 == 3) {
                    o oVar2 = d0Var.c;
                    oVar2.getClass();
                    View viewRequireView2 = oVar2.requireView();
                    if (z.K(2)) {
                        Log.v("FragmentManager", "Clearing focus " + viewRequireView2.findFocus() + " on view " + viewRequireView2 + " for Fragment " + oVar2);
                    }
                    viewRequireView2.clearFocus();
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            el1.K0(((h0) it.next()).k, arrayList);
        }
        List listV1 = el1.v1(el1.z1(arrayList));
        int size2 = listV1.size();
        for (int i3 = 0; i3 < size2; i3++) {
            zj7 zj7Var = (zj7) listV1.get(i3);
            zj7Var.getClass();
            ViewGroup viewGroup = this.a;
            viewGroup.getClass();
            if (!zj7Var.a) {
                zj7Var.d(viewGroup);
            }
            zj7Var.a = true;
        }
    }

    public final void l() {
        for (h0 h0Var : this.b) {
            int i = 2;
            if (h0Var.b == 2) {
                int visibility = h0Var.c.requireView().getVisibility();
                if (visibility != 0) {
                    i = 4;
                    if (visibility != 4) {
                        if (visibility != 8) {
                            c6.f(fz5.j(visibility, "Unknown visibility "));
                            return;
                        }
                        i = 3;
                    }
                }
                h0Var.d(i, 1);
            }
        }
    }
}
