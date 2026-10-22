package defpackage;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class n97 extends ol1 {
    public final List e;
    public final cz f;
    public final e38 k;

    public n97(Activity activity, List list, cz czVar) {
        super(11, false);
        this.e = list;
        this.f = czVar;
        View viewInflate = View.inflate(activity, R.layout.set_batch_app_labels_dialog, null);
        int i = R.id.btn_add_labels;
        View viewU = ms8.u(viewInflate, R.id.btn_add_labels);
        if (viewU != null) {
            vq vqVarI = vq.i(viewU);
            i = R.id.btn_clear_labels;
            View viewU2 = ms8.u(viewInflate, R.id.btn_clear_labels);
            if (viewU2 != null) {
                vq vqVarI2 = vq.i(viewU2);
                i = R.id.btn_set_labels;
                View viewU3 = ms8.u(viewInflate, R.id.btn_set_labels);
                if (viewU3 != null) {
                    this.k = new e38((LinearLayout) viewInflate, vqVarI, vqVarI2, vq.i(viewU3), 4);
                    return;
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i)));
        throw null;
    }

    @Override // defpackage.ol1
    public final jk8 i() {
        e38 e38Var = this.k;
        vq vqVar = (vq) e38Var.e;
        ((ImageView) vqVar.c).setImageResource(R.drawable.ic_label_outline);
        ((TextView) vqVar.d).setText(R.string.set_labels);
        ((ConstraintLayout) vqVar.b).setOnClickListener(new gs(this, 10));
        List list = this.e;
        boolean z = false;
        if (!list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Set<LabelParams> labels = ((ji) it.next()).getLabels();
                if (labels != null && !labels.isEmpty()) {
                    z = true;
                    break;
                }
            }
        }
        vq vqVar2 = (vq) e38Var.c;
        ConstraintLayout constraintLayout = (ConstraintLayout) vqVar2.b;
        constraintLayout.setEnabled(z);
        constraintLayout.setAlpha(constraintLayout.isEnabled() ? 1.0f : 0.3f);
        ((ImageView) vqVar2.c).setImageResource(R.drawable.ic_label_add_outline);
        ((TextView) vqVar2.d).setText(R.string.add_to_existing_labels);
        constraintLayout.setOnClickListener(new dj(this, 13));
        vq vqVar3 = (vq) e38Var.d;
        ConstraintLayout constraintLayout2 = (ConstraintLayout) vqVar3.b;
        constraintLayout2.setEnabled(z);
        constraintLayout2.setAlpha(constraintLayout2.isEnabled() ? 1.0f : 0.3f);
        Context context = constraintLayout2.getContext();
        context.getClass();
        int iR = sz8.r(context);
        ImageView imageView = (ImageView) vqVar3.c;
        imageView.setImageResource(R.drawable.ic_delete_sweep);
        imageView.setImageTintList(sz8.h0(iR));
        TextView textView = (TextView) vqVar3.d;
        textView.setText(R.string.clear_labels);
        textView.setTextColor(iR);
        constraintLayout2.setOnClickListener(new hs(this, 10));
        return e38Var;
    }
}
