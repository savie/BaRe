package defpackage;

import android.view.View;
import androidx.drawerlayout.widget.DrawerLayout;
import java.util.ArrayList;
import org.swiftapps.swiftbackup.appslist.ui.list.AppListActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qp2 extends ly8 {
    public final int f;
    public gl8 g;
    public final ib0 h = new ib0(this, 2);
    public final /* synthetic */ DrawerLayout i;

    public qp2(DrawerLayout drawerLayout, int i) {
        this.i = drawerLayout;
        this.f = i;
    }

    @Override // defpackage.ly8
    public final void E(int i, int i2) {
        int i3 = i & 1;
        DrawerLayout drawerLayout = this.i;
        View viewD = i3 == 1 ? drawerLayout.d(3) : drawerLayout.d(5);
        if (viewD == null || drawerLayout.f(viewD) != 0) {
            return;
        }
        this.g.b(viewD, i2);
    }

    @Override // defpackage.ly8
    public final void F() {
        this.i.postDelayed(this.h, 160L);
    }

    @Override // defpackage.ly8
    public final void G(View view, int i) {
        ((np2) view.getLayoutParams()).c = false;
        int i2 = this.f == 3 ? 5 : 3;
        DrawerLayout drawerLayout = this.i;
        View viewD = drawerLayout.d(i2);
        if (viewD != null) {
            drawerLayout.b(viewD);
        }
    }

    @Override // defpackage.ly8
    public final void H(int i) {
        int i2;
        View rootView;
        View view = this.g.t;
        DrawerLayout drawerLayout = this.i;
        int i3 = drawerLayout.f.a;
        int i4 = drawerLayout.k.a;
        if (i3 == 1 || i4 == 1) {
            i2 = 1;
        } else {
            i2 = 2;
            if (i3 != 2 && i4 != 2) {
                i2 = 0;
            }
        }
        if (view != null && i == 0) {
            float f = ((np2) view.getLayoutParams()).b;
            if (f == 0.0f) {
                np2 np2Var = (np2) view.getLayoutParams();
                if ((np2Var.d & 1) == 1) {
                    np2Var.d = 0;
                    ArrayList arrayList = drawerLayout.K;
                    if (arrayList != null) {
                        for (int size = arrayList.size() - 1; size >= 0; size--) {
                            ks ksVar = (ks) ((mp2) drawerLayout.K.get(size));
                            ksVar.getClass();
                            AppListActivity appListActivity = ksVar.a;
                            int i5 = AppListActivity.q0;
                            appListActivity.j0().setDrawerLockMode(1);
                            appListActivity.A(false);
                        }
                    }
                    drawerLayout.p(view, false);
                    drawerLayout.o(view);
                    if (drawerLayout.hasWindowFocus() && (rootView = drawerLayout.getRootView()) != null) {
                        rootView.sendAccessibilityEvent(32);
                    }
                }
            } else if (f == 1.0f) {
                np2 np2Var2 = (np2) view.getLayoutParams();
                if ((np2Var2.d & 1) == 0) {
                    np2Var2.d = 1;
                    ArrayList arrayList2 = drawerLayout.K;
                    if (arrayList2 != null) {
                        for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
                            ks ksVar2 = (ks) ((mp2) drawerLayout.K.get(size2));
                            ksVar2.getClass();
                            AppListActivity appListActivity2 = ksVar2.a;
                            int i6 = AppListActivity.q0;
                            appListActivity2.j0().setDrawerLockMode(3);
                            appListActivity2.A(true);
                        }
                    }
                    drawerLayout.p(view, true);
                    drawerLayout.o(view);
                    if (drawerLayout.hasWindowFocus()) {
                        drawerLayout.sendAccessibilityEvent(32);
                    }
                }
            }
        }
        if (i2 != drawerLayout.q) {
            drawerLayout.q = i2;
            ArrayList arrayList3 = drawerLayout.K;
            if (arrayList3 != null) {
                for (int size3 = arrayList3.size() - 1; size3 >= 0; size3--) {
                    ((mp2) drawerLayout.K.get(size3)).getClass();
                }
            }
        }
    }

    @Override // defpackage.ly8
    public final void I(View view, int i, int i2) {
        int width = view.getWidth();
        DrawerLayout drawerLayout = this.i;
        float width2 = (drawerLayout.a(view, 3) ? i + width : drawerLayout.getWidth() - i) / width;
        drawerLayout.n(view, width2);
        view.setVisibility(width2 == 0.0f ? 4 : 0);
        drawerLayout.invalidate();
    }

    @Override // defpackage.ly8
    public final void J(View view, float f, float f2) {
        int i;
        int[] iArr = DrawerLayout.U;
        float f3 = ((np2) view.getLayoutParams()).b;
        int width = view.getWidth();
        DrawerLayout drawerLayout = this.i;
        if (drawerLayout.a(view, 3)) {
            i = (f > 0.0f || (f == 0.0f && f3 > 0.5f)) ? 0 : -width;
        } else {
            int width2 = drawerLayout.getWidth();
            if (f < 0.0f || (f == 0.0f && f3 > 0.5f)) {
                width2 -= width;
            }
            i = width2;
        }
        this.g.p(i, view.getTop());
        drawerLayout.invalidate();
    }

    @Override // defpackage.ly8
    public final boolean Q(View view, int i) {
        if (!DrawerLayout.k(view)) {
            return false;
        }
        int i2 = this.f;
        DrawerLayout drawerLayout = this.i;
        return drawerLayout.a(view, i2) && drawerLayout.f(view) == 0;
    }

    @Override // defpackage.ly8
    public final int l(View view, int i) {
        DrawerLayout drawerLayout = this.i;
        if (drawerLayout.a(view, 3)) {
            return Math.max(-view.getWidth(), Math.min(i, 0));
        }
        int width = drawerLayout.getWidth();
        return Math.max(width - view.getWidth(), Math.min(i, width));
    }

    @Override // defpackage.ly8
    public final int m(View view, int i) {
        return view.getTop();
    }

    @Override // defpackage.ly8
    public final int y(View view) {
        if (DrawerLayout.k(view)) {
            return view.getWidth();
        }
        return 0;
    }
}
