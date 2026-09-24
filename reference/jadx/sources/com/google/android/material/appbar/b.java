package com.google.android.material.appbar;

import android.os.Bundle;
import android.view.View;
import android.widget.ScrollView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import defpackage.g6;
import defpackage.jm;
import defpackage.m6;
import defpackage.w5;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class b extends w5 {
    public final /* synthetic */ AppBarLayout d;
    public final /* synthetic */ CoordinatorLayout e;
    public final /* synthetic */ AppBarLayout.BaseBehavior f;

    public b(CoordinatorLayout coordinatorLayout, AppBarLayout.BaseBehavior baseBehavior, AppBarLayout appBarLayout) {
        this.f = baseBehavior;
        this.d = appBarLayout;
        this.e = coordinatorLayout;
    }

    @Override // defpackage.w5
    public final void d(View view, m6 m6Var) {
        this.a.onInitializeAccessibilityNodeInfo(view, m6Var.a);
        m6Var.i(ScrollView.class.getName());
        AppBarLayout appBarLayout = this.d;
        if (appBarLayout.getTotalScrollRange() == 0) {
            return;
        }
        CoordinatorLayout coordinatorLayout = this.e;
        AppBarLayout.BaseBehavior baseBehavior = this.f;
        View viewB = AppBarLayout.BaseBehavior.B(baseBehavior, coordinatorLayout);
        if (viewB == null) {
            return;
        }
        int childCount = appBarLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (((jm) appBarLayout.getChildAt(i).getLayoutParams()).a != 0) {
                if (baseBehavior.y() != (-appBarLayout.getTotalScrollRange())) {
                    m6Var.b(g6.h);
                    m6Var.o(true);
                }
                if (baseBehavior.y() != 0) {
                    if (!viewB.canScrollVertically(-1)) {
                        m6Var.b(g6.i);
                        m6Var.o(true);
                        return;
                    } else {
                        if ((-appBarLayout.getDownNestedPreScrollRange()) != 0) {
                            m6Var.b(g6.i);
                            m6Var.o(true);
                            return;
                        }
                        return;
                    }
                }
                return;
            }
        }
    }

    @Override // defpackage.w5
    public final boolean g(View view, int i, Bundle bundle) {
        AppBarLayout appBarLayout = this.d;
        if (i == 4096) {
            appBarLayout.setExpanded(false);
            return true;
        }
        if (i != 8192) {
            return super.g(view, i, bundle);
        }
        AppBarLayout.BaseBehavior baseBehavior = this.f;
        if (baseBehavior.y() != 0) {
            CoordinatorLayout coordinatorLayout = this.e;
            View viewB = AppBarLayout.BaseBehavior.B(baseBehavior, coordinatorLayout);
            if (!viewB.canScrollVertically(-1)) {
                appBarLayout.setExpanded(true);
                return true;
            }
            int i2 = -appBarLayout.getDownNestedPreScrollRange();
            if (i2 != 0) {
                baseBehavior.E(coordinatorLayout, this.d, viewB, i2, new int[]{0, 0});
                return true;
            }
        }
        return false;
    }
}
