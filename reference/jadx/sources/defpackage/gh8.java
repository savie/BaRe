package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class gh8 implements jk8 {
    public final CoordinatorLayout a;
    public final w00 b;
    public final MaterialButton c;
    public final ExtendedFloatingActionButton d;
    public final MaterialButton e;
    public final ImageView f;
    public final ImageView k;
    public final ImageView n;
    public final TextView p;
    public final TextView q;
    public final TextView r;

    public gh8(CoordinatorLayout coordinatorLayout, w00 w00Var, MaterialButton materialButton, ExtendedFloatingActionButton extendedFloatingActionButton, MaterialButton materialButton2, ImageView imageView, ImageView imageView2, ImageView imageView3, TextView textView, TextView textView2, TextView textView3) {
        this.a = coordinatorLayout;
        this.b = w00Var;
        this.c = materialButton;
        this.d = extendedFloatingActionButton;
        this.e = materialButton2;
        this.f = imageView;
        this.k = imageView2;
        this.n = imageView3;
        this.p = textView;
        this.q = textView2;
        this.r = textView3;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
