package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class e71 implements jk8 {
    public final ConstraintLayout a;
    public final ConstraintLayout b;
    public final ImageView c;
    public final ImageView d;
    public final TextView e;
    public final TextView f;

    public e71(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, ImageView imageView, ImageView imageView2, TextView textView, TextView textView2) {
        this.a = constraintLayout;
        this.b = constraintLayout2;
        this.c = imageView;
        this.d = imageView2;
        this.e = textView;
        this.f = textView2;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
