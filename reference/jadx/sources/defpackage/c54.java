package defpackage;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class c54 extends g54 {
    public final l90 u;
    public final /* synthetic */ h54 v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c54(h54 h54Var, l90 l90Var) {
        super((ConstraintLayout) l90Var.b);
        this.v = h54Var;
        this.u = l90Var;
    }

    @Override // defpackage.g54
    public final void r(final s54 s54Var, final int i) {
        s54Var.getClass();
        ji jiVar = s54Var.n;
        if (jiVar == null) {
            return;
        }
        qr qrVar = tr.n0;
        l90 l90Var = this.u;
        Context context = ((ConstraintLayout) l90Var.b).getContext();
        context.getClass();
        int iC = qr.c(context);
        final h54 h54Var = this.v;
        h54Var.l.invoke((ImageView) l90Var.d, jiVar);
        qr.h((TextView) l90Var.e, jiVar, iC);
        qr.e((TextView) l90Var.f, jiVar);
        ((ConstraintLayout) l90Var.c).setOnClickListener(new View.OnClickListener() { // from class: b54
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                qt3 qt3Var = h54Var.j;
                if (qt3Var != null) {
                    qt3Var.invoke(s54Var, Integer.valueOf(i));
                }
            }
        });
    }
}
