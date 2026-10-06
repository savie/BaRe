package defpackage;

import android.view.ViewTreeObserver;
import com.ferfalk.simplesearchview.SimpleSearchView;
import com.google.android.material.tabs.TabLayout;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sg7 implements ViewTreeObserver.OnPreDrawListener {
    public final /* synthetic */ TabLayout a;
    public final /* synthetic */ SimpleSearchView b;

    public sg7(SimpleSearchView simpleSearchView, TabLayout tabLayout) {
        this.b = simpleSearchView;
        this.a = tabLayout;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        TabLayout tabLayout = this.a;
        this.b.J = tabLayout.getHeight();
        tabLayout.getViewTreeObserver().removeOnPreDrawListener(this);
        return true;
    }
}
