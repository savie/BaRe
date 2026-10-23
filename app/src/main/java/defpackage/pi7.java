package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class pi7 implements jk8 {
    public final MaterialCardView a;
    public final zx2 b;
    public final ImageView c;
    public final ConstraintLayout d;
    public final CircularProgressIndicator e;
    public final QuickRecyclerView f;
    public final RelativeLayout k;
    public final TextView n;
    public final TextView p;

    public pi7(MaterialCardView materialCardView, zx2 zx2Var, ImageView imageView, ConstraintLayout constraintLayout, CircularProgressIndicator circularProgressIndicator, QuickRecyclerView quickRecyclerView, RelativeLayout relativeLayout, TextView textView, TextView textView2) {
        this.a = materialCardView;
        this.b = zx2Var;
        this.c = imageView;
        this.d = constraintLayout;
        this.e = circularProgressIndicator;
        this.f = quickRecyclerView;
        this.k = relativeLayout;
        this.n = textView;
        this.p = textView2;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
