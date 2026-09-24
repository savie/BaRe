package defpackage;

import android.view.View;
import android.widget.LinearLayout;
import androidx.core.widget.NestedScrollView;
import com.google.android.material.button.MaterialButton;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class b14 implements jk8 {
    public final NestedScrollView a;
    public final fe b;
    public final MaterialButton c;
    public final v04 d;
    public final LinearLayout e;

    public b14(NestedScrollView nestedScrollView, fe feVar, MaterialButton materialButton, v04 v04Var, LinearLayout linearLayout) {
        this.a = nestedScrollView;
        this.b = feVar;
        this.c = materialButton;
        this.d = v04Var;
        this.e = linearLayout;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
