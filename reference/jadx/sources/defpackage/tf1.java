package defpackage;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;
import org.swiftapps.swiftbackup.views.SwiftSegmentedCardGroup;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class tf1 implements jk8 {
    public final SwiftSegmentedCardGroup a;
    public final LinearLayout b;
    public final View c;
    public final ConstraintLayout d;
    public final RecyclerView e;
    public final QuickRecyclerView f;
    public final MaterialButton k;
    public final gm1 n;
    public final TextView p;

    public tf1(SwiftSegmentedCardGroup swiftSegmentedCardGroup, LinearLayout linearLayout, View view, ConstraintLayout constraintLayout, RecyclerView recyclerView, QuickRecyclerView quickRecyclerView, MaterialButton materialButton, gm1 gm1Var, TextView textView) {
        this.a = swiftSegmentedCardGroup;
        this.b = linearLayout;
        this.c = view;
        this.d = constraintLayout;
        this.e = recyclerView;
        this.f = quickRecyclerView;
        this.k = materialButton;
        this.n = gm1Var;
        this.p = textView;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
