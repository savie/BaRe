package defpackage;

import android.view.View;
import android.widget.ImageView;
import com.google.android.material.card.MaterialCardView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pl1 extends fh6 {
    public final MaterialCardView u;
    public final ImageView v;
    public final /* synthetic */ ql1 w;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pl1(ql1 ql1Var, View view) {
        super(view);
        this.w = ql1Var;
        dr drVarA = dr.a(view);
        this.u = (MaterialCardView) drVarA.d;
        this.v = (ImageView) drVarA.c;
    }
}
