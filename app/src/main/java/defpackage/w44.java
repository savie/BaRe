package defpackage;

import android.view.View;
import android.widget.FrameLayout;
import org.swiftapps.swiftbackup.home.schedule.ui.ScheduleFabMenuView;
import org.swiftapps.swiftbackup.views.NoSwipeViewPager;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class w44 implements jk8 {
    public final View a;
    public final FrameLayout b;
    public final x44 c;
    public final View d;
    public final ScheduleFabMenuView e;
    public final NoSwipeViewPager f;

    public w44(View view, FrameLayout frameLayout, x44 x44Var, View view2, ScheduleFabMenuView scheduleFabMenuView, NoSwipeViewPager noSwipeViewPager) {
        this.a = view;
        this.b = frameLayout;
        this.c = x44Var;
        this.d = view2;
        this.e = scheduleFabMenuView;
        this.f = noSwipeViewPager;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
