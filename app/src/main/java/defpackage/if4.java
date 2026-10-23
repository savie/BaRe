package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class if4 implements jk8 {
    public final LinearLayout a;
    public final h80 b;
    public final v04 c;
    public final uf3 d;
    public final jf4 e;
    public final kf4 f;
    public final LinearLayout k;
    public final ImageView n;
    public final TextView p;

    public if4(LinearLayout linearLayout, h80 h80Var, v04 v04Var, uf3 uf3Var, jf4 jf4Var, kf4 kf4Var, LinearLayout linearLayout2, ImageView imageView, TextView textView) {
        this.a = linearLayout;
        this.b = h80Var;
        this.c = v04Var;
        this.d = uf3Var;
        this.e = jf4Var;
        this.f = kf4Var;
        this.k = linearLayout2;
        this.n = imageView;
        this.p = textView;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
