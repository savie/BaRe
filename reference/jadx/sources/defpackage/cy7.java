package defpackage;

import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.imageview.ShapeableImageView;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class cy7 implements jk8 {
    public final TextView G;
    public final MaterialCardView a;
    public final CircularProgressIndicator b;
    public final ConstraintLayout c;
    public final View d;
    public final ShapeableImageView e;
    public final LinearProgressIndicator f;
    public final QuickRecyclerView k;
    public final TextView n;
    public final TextView p;
    public final TextView q;
    public final TextView r;
    public final TextView t;
    public final TextView x;
    public final TextView y;

    public cy7(MaterialCardView materialCardView, CircularProgressIndicator circularProgressIndicator, ConstraintLayout constraintLayout, View view, ShapeableImageView shapeableImageView, LinearProgressIndicator linearProgressIndicator, QuickRecyclerView quickRecyclerView, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8) {
        this.a = materialCardView;
        this.b = circularProgressIndicator;
        this.c = constraintLayout;
        this.d = view;
        this.e = shapeableImageView;
        this.f = linearProgressIndicator;
        this.k = quickRecyclerView;
        this.n = textView;
        this.p = textView2;
        this.q = textView3;
        this.r = textView4;
        this.t = textView5;
        this.x = textView6;
        this.y = textView7;
        this.G = textView8;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
