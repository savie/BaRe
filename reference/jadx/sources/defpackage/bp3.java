package defpackage;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.material.listitem.ListItemLayout;
import org.swiftapps.swiftbackup.views.MCheckBox;
import org.swiftapps.swiftbackup.views.SwiftListItemCardView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class bp3 extends kx4 {
    public final TextView A;
    public final MCheckBox B;
    public final ImageView C;
    public final View D;
    public final int E;
    public final /* synthetic */ cp3 F;
    public final SwiftListItemCardView v;
    public final View w;
    public final TextView x;
    public final TextView y;
    public final TextView z;

    /* JADX WARN: Illegal instructions before constructor call */
    public bp3(cp3 cp3Var, op3 op3Var) {
        this.F = cp3Var;
        ListItemLayout listItemLayout = (ListItemLayout) op3Var.a;
        super(listItemLayout);
        this.v = (SwiftListItemCardView) op3Var.e;
        this.w = (View) op3Var.c;
        this.x = (TextView) op3Var.k;
        this.y = (TextView) op3Var.q;
        this.z = (TextView) op3Var.n;
        this.A = (TextView) op3Var.p;
        this.B = (MCheckBox) op3Var.b;
        this.C = (ImageView) op3Var.f;
        this.D = (View) op3Var.d;
        qr qrVar = tr.n0;
        Context context = listItemLayout.getContext();
        context.getClass();
        this.E = qr.c(context);
    }

    public final void s(zk3 zk3Var) {
        cp3 cp3Var = this.F;
        boolean zQ = cp3Var.q(zk3Var);
        boolean z = cp3Var.l;
        SwiftListItemCardView swiftListItemCardView = this.v;
        swiftListItemCardView.setCheckable(z);
        swiftListItemCardView.setChecked(z && zQ);
        MCheckBox mCheckBox = this.B;
        sz8.d0(mCheckBox, z);
        if (mCheckBox.isChecked() != zQ) {
            mCheckBox.setChecked(zQ);
        }
    }
}
