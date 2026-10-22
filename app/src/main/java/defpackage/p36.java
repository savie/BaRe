package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.button.MaterialButton;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class p36 implements jk8 {
    public final CoordinatorLayout a;
    public final RelativeLayout b;
    public final MaterialButton c;
    public final RelativeLayout d;
    public final gm1 e;
    public final ImageView f;
    public final RelativeLayout k;
    public final gm1 n;

    public p36(CoordinatorLayout coordinatorLayout, RelativeLayout relativeLayout, MaterialButton materialButton, RelativeLayout relativeLayout2, gm1 gm1Var, ImageView imageView, RelativeLayout relativeLayout3, gm1 gm1Var2) {
        this.a = coordinatorLayout;
        this.b = relativeLayout;
        this.c = materialButton;
        this.d = relativeLayout2;
        this.e = gm1Var;
        this.f = imageView;
        this.k = relativeLayout3;
        this.n = gm1Var2;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
