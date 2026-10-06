package defpackage;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.common.V;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class r10 extends gm7 {
    public final /* synthetic */ t10 l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r10(t10 t10Var) {
        super(null);
        this.l = t10Var;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x009a  */
    /* JADX WARN: Code duplicated, block: B:40:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:42:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:43:0x00ee  */
    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, int i) {
        int i2;
        float f;
        int iR;
        q10 q10Var = (q10) fh6Var;
        n10 n10Var = (n10) m(i);
        View view = q10Var.a;
        ImageView imageView = q10Var.x;
        n10Var.getClass();
        String str = n10Var.d;
        boolean z = n10Var.n;
        r10 r10Var = q10Var.z;
        t10 t10Var = r10Var.l;
        int iA = sz8.A(t10Var.Q);
        int iR2 = sz8.r(t10Var.Q);
        ImageView imageView2 = q10Var.u;
        if (!n10Var.c() || V.INSTANCE.getA()) {
            int i3 = n10Var.e;
            if (n10Var.g()) {
                iA = iR2;
            }
            i2 = i3;
        } else {
            Context context = imageView2.getContext();
            context.getClass();
            iA = io4.c(context, context.getColor(R.color.premium));
            i2 = R.drawable.ic_flash_circle;
        }
        imageView2.setImageResource(i2);
        imageView2.setImageTintList(sz8.h0(iA));
        q10Var.v.setText(n10Var.c);
        TextView textView = q10Var.w;
        int i4 = 0;
        char c = 1;
        sz8.d0(textView, !(str == null || str.length() == 0));
        textView.setText(str);
        sz8.d0(imageView, z);
        if (sz8.I(imageView)) {
            if (z) {
                mp6 mp6Var = mp6.a;
                if (mp6.f()) {
                    Context context2 = imageView.getContext();
                    context2.getClass();
                    iR = sz8.x(context2);
                } else {
                    Context context3 = imageView.getContext();
                    context3.getClass();
                    iR = sz8.r(context3);
                }
            } else {
                Context context4 = imageView.getContext();
                context4.getClass();
                iR = sz8.r(context4);
            }
            imageView.setBackgroundTintList(sz8.h0(iR));
            imageView.setOnClickListener(new mf(t10Var, c == true ? 1 : 0));
        }
        n10 n10Var2 = i == r10Var.e.a.size() - 1 ? null : (n10) r10Var.e.a.get(i + 1);
        sz8.d0(q10Var.y, (n10Var2 == null || n10Var.b == n10Var2.b) ? false : true);
        if (z) {
            mp6 mp6Var2 = mp6.a;
            if (!mp6.f()) {
                f = 0.5f;
            } else if (n10Var.f > 0) {
                f = 1.0f;
            } else {
                f = 0.5f;
            }
        } else if (n10Var.f > 0) {
            f = 1.0f;
        } else {
            f = 0.5f;
        }
        view.setAlpha(f);
        view.setOnClickListener(new p10(r10Var, i, i4, n10Var));
    }

    @Override // defpackage.gm7
    public final int n(int i) {
        return R.layout.app_batch_actions_dialog_item;
    }

    @Override // defpackage.gm7
    public final fh6 o(View view, int i) {
        return new q10(this, view);
    }
}
