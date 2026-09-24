package defpackage;

import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.a;
import com.google.android.flexbox.FlexboxLayoutManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class gm7 extends hg6 {
    public RecyclerView f;
    public qt3 g;
    public e7 h;
    public mt3 i;
    public qt3 j;
    public final String d = getClass().getSimpleName();
    public fm7 e = new fm7((List) null, (Set) null, false, (String) null, 31);
    public boolean k = true;

    public gm7(fm7 fm7Var) {
        if (fm7Var != null) {
            w(fm7Var, false);
        }
    }

    public static void x(gm7 gm7Var, jl0 jl0Var) {
        gm7Var.getClass();
        jl0Var.getClass();
        gm7Var.v(jl0Var, !gm7Var.q(jl0Var), true);
    }

    @Override // defpackage.hg6
    public final int b() {
        return this.e.a.size();
    }

    @Override // defpackage.hg6
    public final void g(RecyclerView recyclerView) {
        this.f = recyclerView;
    }

    @Override // defpackage.hg6
    public final void i(fh6 fh6Var, int i, List list) {
        list.getClass();
        if (fh6Var instanceof kx4) {
            ((kx4) fh6Var).r(i, b());
        }
        h(fh6Var, i);
    }

    @Override // defpackage.hg6
    public final fh6 j(ViewGroup viewGroup, int i) {
        View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(n(i), viewGroup, false);
        viewInflate.getClass();
        return o(viewInflate, i);
    }

    public final int k() {
        return this.e.b.size();
    }

    public final List l() {
        if (this.e.a.isEmpty()) {
            return ov2.a;
        }
        List list = this.e.a;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (q((jl0) obj)) {
                arrayList.add(obj);
            }
        }
        return el1.v1(arrayList);
    }

    public final jl0 m(int i) {
        return (jl0) this.e.a.get(i);
    }

    public abstract int n(int i);

    public abstract fh6 o(View view, int i);

    public final boolean p() {
        return b() > 0 && b() == k();
    }

    public final boolean q(jl0 jl0Var) {
        jl0Var.getClass();
        return this.e.b.contains(jl0Var.getItemId());
    }

    public final void r() {
        qt3 qt3Var = this.g;
        if (qt3Var != null) {
            qt3Var.invoke(Boolean.valueOf(k() == b()), Boolean.valueOf(k() == 0));
        }
    }

    public final void s(boolean z) {
        Set setZ1;
        fm7 fm7Var = this.e;
        if (z) {
            List list = fm7Var.a;
            ArrayList arrayList = new ArrayList(hl1.G0(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(((jl0) it.next()).getItemId());
            }
            setZ1 = el1.z1(arrayList);
        } else {
            setZ1 = sv2.a;
        }
        w(fm7.a(fm7Var, null, setZ1, false, 29), false);
    }

    public final void t(Set set) {
        set.getClass();
        w(fm7.a(this.e, null, set, false, 29), false);
    }

    public final void u(boolean z) {
        w(fm7.a(this.e, null, null, z, 27), false);
    }

    public final void v(jl0 jl0Var, boolean z, boolean z2) {
        jl0Var.getClass();
        fm7 fm7Var = this.e;
        LinkedHashSet linkedHashSetS = z ? sz8.S(fm7Var.b, jl0Var.getItemId()) : sz8.K(fm7Var.b, jl0Var.getItemId());
        fm7Var.getClass();
        fm7Var.b = linkedHashSetS;
        if (z2) {
            int iIndexOf = this.e.a.indexOf(jl0Var);
            Integer numValueOf = iIndexOf != -1 ? Integer.valueOf(iIndexOf) : null;
            if (numValueOf != null) {
                f(numValueOf.intValue());
            }
        }
        r();
    }

    public void w(fm7 fm7Var, boolean z) {
        mt3 mt3Var;
        RecyclerView recyclerView;
        a layoutManager;
        a layoutManager2;
        fm7Var.getClass();
        fm7 fm7VarB = this.e.b();
        List list = fm7VarB.a;
        fm7 fm7VarB2 = fm7Var.b();
        List list2 = fm7VarB2.a;
        this.e = fm7VarB2;
        boolean z2 = fm7VarB.c;
        boolean z3 = fm7VarB2.c;
        if (z2 != z3) {
            if (!z3) {
                fm7VarB2.b = sv2.a;
            }
            e7 e7Var = this.h;
            if (e7Var != null) {
                e7Var.invoke(Boolean.valueOf(z3));
            }
        }
        if (z || fm7VarB2.d || list2.isEmpty() || list.isEmpty()) {
            e();
        } else {
            bl2 bl2VarC = ji8.c(new im7(fm7VarB, fm7VarB2, this.k));
            RecyclerView recyclerView2 = this.f;
            Parcelable parcelableS0 = (recyclerView2 == null || (layoutManager2 = recyclerView2.getLayoutManager()) == null) ? null : layoutManager2.s0();
            bl2VarC.a(new z28(this, 2));
            RecyclerView recyclerView3 = this.f;
            if (!((recyclerView3 != null ? recyclerView3.getLayoutManager() : null) instanceof FlexboxLayoutManager) && parcelableS0 != null && (recyclerView = this.f) != null && (layoutManager = recyclerView.getLayoutManager()) != null) {
                layoutManager.r0(parcelableS0);
            }
        }
        if (fm7VarB.b.size() != fm7VarB2.b.size()) {
            r();
        }
        if (list.size() == list2.size() || (mt3Var = this.i) == null) {
            return;
        }
        mt3Var.invoke(Integer.valueOf(b()));
    }
}
