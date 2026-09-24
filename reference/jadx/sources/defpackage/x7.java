package defpackage;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.card.MaterialCardView;
import org.swiftapps.swiftbackup.appslist.ui.list.AppListActivity;
import org.swiftapps.swiftbackup.home.HomeActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class x7 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ x7(View view, Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) obj;
                actionBarOverlayLayout.h();
                actionBarOverlayLayout.O = actionBarOverlayLayout.d.animate().translationY(-actionBarOverlayLayout.d.getHeight()).setListener(actionBarOverlayLayout.P);
                break;
            case 1:
                AppListActivity appListActivity = (AppListActivity) ((id2) obj).m;
                if (!appListActivity.isFinishing()) {
                    appListActivity.h0();
                }
                break;
            case 2:
                HomeActivity homeActivity = (HomeActivity) obj;
                ViewGroup.LayoutParams layoutParams = ((ImageView) homeActivity.Z().c.c).getLayoutParams();
                layoutParams.getClass();
                int marginStart = ((ViewGroup.MarginLayoutParams) layoutParams).getMarginStart();
                ViewGroup.LayoutParams layoutParams2 = ((MaterialCardView) homeActivity.Z().c.d).getLayoutParams();
                layoutParams2.getClass();
                int marginEnd = ((ViewGroup.MarginLayoutParams) layoutParams2).getMarginEnd();
                int left = homeActivity.Z().f.getLeft() - marginStart;
                if (left < 0) {
                    left = 0;
                }
                int right = (((MaterialToolbar) homeActivity.Z().c.e).getRight() - homeActivity.Z().f.getRight()) - marginEnd;
                int i2 = right >= 0 ? right : 0;
                ConstraintLayout constraintLayout = (ConstraintLayout) homeActivity.Z().c.f;
                ViewGroup.LayoutParams layoutParams3 = constraintLayout.getLayoutParams();
                if (layoutParams3 == null) {
                    f6.n("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                } else {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams3;
                    int i3 = marginLayoutParams.topMargin;
                    int i4 = marginLayoutParams.bottomMargin;
                    marginLayoutParams.setMarginStart(left);
                    marginLayoutParams.topMargin = i3;
                    marginLayoutParams.setMarginEnd(i2);
                    marginLayoutParams.bottomMargin = i4;
                    constraintLayout.setLayoutParams(marginLayoutParams);
                }
                break;
            case 3:
                wz5 wz5Var = (wz5) obj;
                wz5Var.E = null;
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (wz5Var.d() && jCurrentTimeMillis > wz5Var.F + 60000) {
                    wz5Var.c("connection_idle");
                } else {
                    wz5Var.b();
                }
                break;
            default:
                ((jl8) obj).invoke();
                break;
        }
    }

    public /* synthetic */ x7(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }
}
