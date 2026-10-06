package defpackage;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import com.google.android.material.button.MaterialButton;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wy implements jk8 {
    public final TextView G;
    public final NestedScrollView a;
    public final FrameLayout b;
    public final MaterialButton c;
    public final MaterialButton d;
    public final LinearLayout e;
    public final TextView f;
    public final LinearLayout k;
    public final TextView n;
    public final FrameLayout p;
    public final MaterialButton q;
    public final MaterialButton r;
    public final LinearLayout t;
    public final TextView x;
    public final LinearLayout y;

    public wy(NestedScrollView nestedScrollView, FrameLayout frameLayout, MaterialButton materialButton, MaterialButton materialButton2, LinearLayout linearLayout, TextView textView, LinearLayout linearLayout2, TextView textView2, FrameLayout frameLayout2, MaterialButton materialButton3, MaterialButton materialButton4, LinearLayout linearLayout3, TextView textView3, LinearLayout linearLayout4, TextView textView4) {
        this.a = nestedScrollView;
        this.b = frameLayout;
        this.c = materialButton;
        this.d = materialButton2;
        this.e = linearLayout;
        this.f = textView;
        this.k = linearLayout2;
        this.n = textView2;
        this.p = frameLayout2;
        this.q = materialButton3;
        this.r = materialButton4;
        this.t = linearLayout3;
        this.x = textView3;
        this.y = linearLayout4;
        this.G = textView4;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
