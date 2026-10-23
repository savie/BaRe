package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class hj2 implements jk8 {
    public final MaterialCardView a;
    public final MaterialButton b;
    public final MaterialButton c;
    public final MaterialButton d;
    public final MaterialButton e;
    public final ij2 f;
    public final View k;
    public final ImageView n;
    public final ImageView p;
    public final ImageView q;
    public final QuickRecyclerView r;
    public final TextView t;
    public final TextView x;
    public final TextView y;

    public hj2(MaterialCardView materialCardView, MaterialButton materialButton, MaterialButton materialButton2, MaterialButton materialButton3, MaterialButton materialButton4, ij2 ij2Var, View view, ImageView imageView, ImageView imageView2, ImageView imageView3, QuickRecyclerView quickRecyclerView, TextView textView, TextView textView2, TextView textView3) {
        this.a = materialCardView;
        this.b = materialButton;
        this.c = materialButton2;
        this.d = materialButton3;
        this.e = materialButton4;
        this.f = ij2Var;
        this.k = view;
        this.n = imageView;
        this.p = imageView2;
        this.q = imageView3;
        this.r = quickRecyclerView;
        this.t = textView;
        this.x = textView2;
        this.y = textView3;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
