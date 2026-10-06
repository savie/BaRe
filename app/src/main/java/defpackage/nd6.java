package defpackage;

import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import defpackage.jk8;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class nd6<Binding extends jk8> extends rl0<Binding> {
    public final l90 c;

    public nd6() {
        super(0);
        os4 os4VarX = jd4.x(ys4.c, new di5(new mo3(this, 10), 1));
        this.c = new l90(ph6.a(od6.class), new w93(os4VarX, 2), new md6(this, os4VarX), new j7(os4VarX, 1));
    }

    public static void j(nd6 nd6Var, List list, xc6 xc6Var, int i, int i2, boolean z, bh bhVar, int i3) {
        sa1 sa1Var;
        if ((i3 & 16) != 0) {
            z = false;
        }
        boolean z2 = (i3 & 32) == 0;
        if ((i3 & 64) != 0) {
            bhVar = null;
        }
        nd6Var.getClass();
        list.getClass();
        boolean z3 = !list.isEmpty();
        ConstraintLayout constraintLayout = xc6Var.a;
        sz8.d0(constraintLayout, z3);
        if (sz8.I(constraintLayout)) {
            if (i != -1) {
                xc6Var.d.setText(i);
            }
            ImageView imageView = xc6Var.b;
            sz8.d0(imageView, i2 != 0);
            if (i2 != 0) {
                imageView.setImageResource(i2);
            }
            QuickRecyclerView quickRecyclerView = xc6Var.c;
            int i4 = QuickRecyclerView.c1;
            quickRecyclerView.setLinearLayoutManager(1);
            cf2 cf2Var = (cf2) quickRecyclerView.getItemAnimator();
            if (cf2Var != null) {
                cf2Var.g = false;
            }
            sa1 sa1Var2 = (sa1) nd6Var.getActivity();
            if (sa1Var2 == null) {
                return;
            }
            dd6 dd6Var = new dd6(sa1Var2, z2);
            k(bhVar, dd6Var, xc6Var, list);
            dd6Var.j = new ss(nd6Var, 3);
            dd6Var.n = new kd6(dd6Var, bhVar, dd6Var, xc6Var);
            dd6Var.o = bhVar;
            quickRecyclerView.setAdapter(dd6Var);
            TextView textView = xc6Var.e;
            sz8.d0(textView, z);
            if (!sz8.I(textView) || (sa1Var = (sa1) nd6Var.getActivity()) == null) {
                return;
            }
            mp6 mp6Var = mp6.a;
            if (mp6.f()) {
                textView.setText(R.string.uses_root_access_or_shizuku);
                textView.setTextColor(sz8.x(sa1Var));
            } else {
                textView.setText(R.string.root_access_or_shizuku_needed);
                textView.setTextColor(sz8.r(sa1Var));
            }
        }
    }

    public static final void k(bt3 bt3Var, dd6 dd6Var, xc6 xc6Var, List list) {
        if (list.isEmpty()) {
            xc6Var.a.setVisibility(8);
            return;
        }
        if (bt3Var != null) {
            list = el1.f1(new zc6("ID_MORE_QUICK_ACTIONS", 0, R.string.more_quick_actions, 0, false, false, false, false, 1994), list);
        }
        dd6Var.w(new fm7(list, (Set) null, false, (String) null, 30), true);
    }

    public final od6 i() {
        return (od6) this.c.getValue();
    }

    @Override // androidx.fragment.app.o
    public void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        od6 od6VarI = i();
        sa1 sa1Var = (sa1) getActivity();
        sa1Var.getClass();
        od6VarI.i = sa1Var.G();
        int i = 6;
        ((ix6) i().e.getValue()).e(getViewLifecycleOwner(), new y20(i, new k3(this, 19)));
        i().k().e(getViewLifecycleOwner(), new y20(i, new cz(this, 14)));
        ((ix6) i().g.getValue()).e(getViewLifecycleOwner(), new y20(i, new u10(this, 16)));
        i().j().e(getViewLifecycleOwner(), new y20(i, new v10(this, 17)));
    }
}
