package defpackage;

import android.view.View;
import android.widget.TextView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.widget.NestedScrollView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class vk implements jk8 {
    public final CoordinatorLayout a;
    public final ju7 b;
    public final ju7 c;
    public final ju7 d;
    public final ju7 e;
    public final NestedScrollView f;
    public final TextView k;
    public final TextView n;

    public vk(CoordinatorLayout coordinatorLayout, ju7 ju7Var, ju7 ju7Var2, ju7 ju7Var3, ju7 ju7Var4, NestedScrollView nestedScrollView, TextView textView, TextView textView2) {
        this.a = coordinatorLayout;
        this.b = ju7Var;
        this.c = ju7Var2;
        this.d = ju7Var3;
        this.e = ju7Var4;
        this.f = nestedScrollView;
        this.k = textView;
        this.n = textView2;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
