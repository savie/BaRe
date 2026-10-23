package defpackage;

import android.view.View;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ay7 implements jk8 {
    public final CoordinatorLayout a;
    public final MaterialButton b;
    public final QuickRecyclerView c;
    public final RecyclerView d;
    public final fm1 e;
    public final Toolbar f;

    public ay7(CoordinatorLayout coordinatorLayout, MaterialButton materialButton, QuickRecyclerView quickRecyclerView, RecyclerView recyclerView, fm1 fm1Var, Toolbar toolbar) {
        this.a = coordinatorLayout;
        this.b = materialButton;
        this.c = quickRecyclerView;
        this.d = recyclerView;
        this.e = fm1Var;
        this.f = toolbar;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
