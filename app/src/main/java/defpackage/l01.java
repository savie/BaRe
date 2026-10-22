package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import org.swiftapps.swiftbackup.views.MCheckBox;
import org.swiftapps.swiftbackup.views.SwiftListItemCardView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class l01 extends kx4 {
    public final TextView A;
    public final TextView B;
    public final MCheckBox C;
    public final /* synthetic */ m01 D;
    public final mi7 v;
    public final SwiftListItemCardView w;
    public final ImageView x;
    public final ImageView y;
    public final TextView z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l01(m01 m01Var, View view) {
        super(view);
        this.D = m01Var;
        mi7 mi7VarA = mi7.a(view);
        this.v = mi7VarA;
        this.w = mi7VarA.d;
        this.x = mi7VarA.c;
        ImageView imageView = mi7VarA.e;
        this.y = imageView;
        this.z = mi7VarA.n;
        this.A = mi7VarA.f;
        this.B = mi7VarA.k;
        this.C = mi7VarA.b;
        imageView.setVisibility(0);
    }
}
