package defpackage;

import android.view.View;
import android.widget.LinearLayout;
import androidx.core.widget.NestedScrollView;
import com.google.android.material.button.MaterialButton;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class sj3 implements jk8 {
    public final NestedScrollView a;
    public final MaterialButton b;
    public final LinearLayout c;
    public final QuickRecyclerView d;
    public final cp1 e;
    public final cp1 f;

    public sj3(NestedScrollView nestedScrollView, MaterialButton materialButton, LinearLayout linearLayout, QuickRecyclerView quickRecyclerView, cp1 cp1Var, cp1 cp1Var2) {
        this.a = nestedScrollView;
        this.b = materialButton;
        this.c = linearLayout;
        this.d = quickRecyclerView;
        this.e = cp1Var;
        this.f = cp1Var2;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
