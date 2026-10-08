package defpackage;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.common.V;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ok3 extends gm7 {
    public final /* synthetic */ qk3 l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ok3(qk3 qk3Var) {
        super(null);
        this.l = qk3Var;
    }

    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, final int i) {
        int iC;
        int i2;
        nk3 nk3Var = (nk3) fh6Var;
        final lk3 lk3Var = (lk3) m(i);
        View view = nk3Var.a;
        lk3Var.getClass();
        String str = lk3Var.a;
        String str2 = lk3Var.c;
        final ok3 ok3Var = nk3Var.v;
        qk3 qk3Var = ok3Var.l;
        int iA = sz8.A(qk3Var.Q);
        int iR = sz8.r(qk3Var.Q);
        cy6 cy6Var = nk3Var.u;
        ImageView imageView = (ImageView) cy6Var.d;
        if (!lk3Var.c() || V.INSTANCE.getA()) {
            int i3 = lk3Var.d;
            if (pe4.d(str, "Delete backups")) {
                iA = iR;
            }
            iC = iA;
            i2 = i3;
        } else {
            Context context = imageView.getContext();
            context.getClass();
            iC = io4.c(context, context.getColor(R.color.premium));
            i2 = R.drawable.ic_flash_circle;
        }
        imageView.setImageResource(i2);
        imageView.setImageTintList(sz8.h0(iC));
        ((TextView) cy6Var.f).setText(lk3Var.b);
        TextView textView = (TextView) cy6Var.e;
        sz8.d0(textView, true ^ (str2 == null || str2.length() == 0));
        textView.setText(str2);
        ((View) cy6Var.c).setVisibility(8);
        view.setAlpha((pe4.d(str, "New folder setup") || lk3Var.e > 0) ? 1.0f : 0.5f);
        view.setOnClickListener(new View.OnClickListener() { // from class: mk3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                qt3 qt3Var = this.a.j;
                if (qt3Var != null) {
                    qt3Var.invoke(lk3Var, Integer.valueOf(i));
                }
            }
        });
    }

    @Override // defpackage.gm7
    public final int n(int i) {
        return R.layout.folder_batch_actions_dialog_item;
    }

    @Override // defpackage.gm7
    public final fh6 o(View view, int i) {
        return new nk3(this, view);
    }
}
