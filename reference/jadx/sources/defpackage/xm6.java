package defpackage;

import android.view.View;
import android.widget.TextView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.card.MaterialCardView;
import org.swiftapps.swiftbackup.views.SwiftBackupMaterialSwitch;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class xm6 implements jk8 {
    public final CoordinatorLayout a;
    public final w00 b;
    public final MaterialCardView c;
    public final RecyclerView d;
    public final NestedScrollView e;
    public final SwiftBackupMaterialSwitch f;
    public final TextView k;

    public xm6(CoordinatorLayout coordinatorLayout, w00 w00Var, MaterialCardView materialCardView, RecyclerView recyclerView, NestedScrollView nestedScrollView, SwiftBackupMaterialSwitch swiftBackupMaterialSwitch, TextView textView) {
        this.a = coordinatorLayout;
        this.b = w00Var;
        this.c = materialCardView;
        this.d = recyclerView;
        this.e = nestedScrollView;
        this.f = swiftBackupMaterialSwitch;
        this.k = textView;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
