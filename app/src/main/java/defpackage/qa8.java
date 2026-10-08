package defpackage;

import android.view.View;
import android.widget.ImageView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.widget.NestedScrollView;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class qa8 implements jk8 {
    public final CoordinatorLayout a;
    public final ImageView b;
    public final ra8 c;
    public final QuickRecyclerView d;
    public final NestedScrollView e;

    public qa8(CoordinatorLayout coordinatorLayout, ImageView imageView, ra8 ra8Var, QuickRecyclerView quickRecyclerView, NestedScrollView nestedScrollView) {
        this.a = coordinatorLayout;
        this.b = imageView;
        this.c = ra8Var;
        this.d = quickRecyclerView;
        this.e = nestedScrollView;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
