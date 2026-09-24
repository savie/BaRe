package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sj implements jk8 {
    public final NestedScrollView a;
    public final c00 b;
    public final ConstraintLayout c;
    public final ImageView d;
    public final ImageView e;
    public final QuickRecyclerView f;
    public final QuickRecyclerView k;
    public final TextView n;
    public final TextView p;

    public sj(NestedScrollView nestedScrollView, c00 c00Var, ConstraintLayout constraintLayout, ImageView imageView, ImageView imageView2, QuickRecyclerView quickRecyclerView, QuickRecyclerView quickRecyclerView2, TextView textView, TextView textView2) {
        this.a = nestedScrollView;
        this.b = c00Var;
        this.c = constraintLayout;
        this.d = imageView;
        this.e = imageView2;
        this.f = quickRecyclerView;
        this.k = quickRecyclerView2;
        this.n = textView;
        this.p = textView2;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
