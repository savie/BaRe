package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.button.MaterialButton;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class z27 implements jk8 {
    public final ConstraintLayout a;
    public final MaterialButton b;
    public final MaterialButton c;
    public final ImageView d;
    public final ImageView e;
    public final kb2 f;
    public final QuickRecyclerView k;
    public final View n;
    public final TextView p;
    public final TextView q;
    public final TextView r;

    public z27(ConstraintLayout constraintLayout, MaterialButton materialButton, MaterialButton materialButton2, ImageView imageView, ImageView imageView2, kb2 kb2Var, QuickRecyclerView quickRecyclerView, View view, TextView textView, TextView textView2, TextView textView3) {
        this.a = constraintLayout;
        this.b = materialButton;
        this.c = materialButton2;
        this.d = imageView;
        this.e = imageView2;
        this.f = kb2Var;
        this.k = quickRecyclerView;
        this.n = view;
        this.p = textView;
        this.q = textView2;
        this.r = textView3;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
