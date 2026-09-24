package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.button.MaterialButton;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class p54 implements jk8 {
    public final ConstraintLayout a;
    public final MaterialButton b;
    public final MaterialButton c;
    public final LinearLayout d;
    public final ConstraintLayout e;
    public final ImageView f;
    public final TextView k;
    public final TextView n;

    public p54(ConstraintLayout constraintLayout, MaterialButton materialButton, MaterialButton materialButton2, LinearLayout linearLayout, ConstraintLayout constraintLayout2, ImageView imageView, TextView textView, TextView textView2) {
        this.a = constraintLayout;
        this.b = materialButton;
        this.c = materialButton2;
        this.d = linearLayout;
        this.e = constraintLayout2;
        this.f = imageView;
        this.k = textView;
        this.n = textView2;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
