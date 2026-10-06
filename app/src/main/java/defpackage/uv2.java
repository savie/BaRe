package defpackage;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appslist.ui.listbatch.AppsBatchActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class uv2 extends ol1 {
    public final List e;
    public final ox f;
    public final zq8 k;
    public final vq n;
    public final vq p;

    public uv2(AppsBatchActivity appsBatchActivity, List list, ox oxVar) {
        super(11, false);
        this.e = list;
        this.f = oxVar;
        View viewInflate = View.inflate(appsBatchActivity, R.layout.enable_disable_apps_dialog, null);
        int i = R.id.btn_disable_apps;
        View viewU = ms8.u(viewInflate, R.id.btn_disable_apps);
        if (viewU != null) {
            vq vqVarI = vq.i(viewU);
            View viewU2 = ms8.u(viewInflate, R.id.btn_enable_apps);
            if (viewU2 != null) {
                vq vqVarI2 = vq.i(viewU2);
                this.k = new zq8((LinearLayout) viewInflate, vqVarI, vqVarI2);
                this.n = vqVarI2;
                this.p = vqVarI;
                return;
            }
            i = R.id.btn_enable_apps;
        }
        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i)));
        throw null;
    }

    @Override // defpackage.ol1
    public final jk8 i() {
        boolean z;
        vq vqVar = this.n;
        ConstraintLayout constraintLayout = (ConstraintLayout) vqVar.b;
        List list = this.e;
        boolean z2 = true;
        if (!list.isEmpty()) {
            Iterator it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                if (!((ji) it.next()).getEnabled()) {
                    z = true;
                    break;
                }
            }
        } else {
            z = false;
            break;
        }
        constraintLayout.setEnabled(z);
        constraintLayout.setAlpha(constraintLayout.isEnabled() ? 1.0f : 0.3f);
        ((ImageView) vqVar.c).setImageResource(R.drawable.ic_enable);
        ((TextView) vqVar.d).setText(R.string.enable_apps);
        constraintLayout.setOnClickListener(new m51(3, constraintLayout, this));
        vq vqVar2 = this.p;
        ConstraintLayout constraintLayout2 = (ConstraintLayout) vqVar2.b;
        if (!list.isEmpty()) {
            Iterator it2 = list.iterator();
            do {
                if (!it2.hasNext()) {
                    z2 = false;
                    break;
                }
            } while (!((ji) it2.next()).getEnabled());
        } else {
            z2 = false;
            break;
        }
        constraintLayout2.setEnabled(z2);
        constraintLayout2.setAlpha(constraintLayout2.isEnabled() ? 1.0f : 0.3f);
        Context context = constraintLayout2.getContext();
        context.getClass();
        int iR = sz8.r(context);
        ImageView imageView = (ImageView) vqVar2.c;
        imageView.setImageResource(R.drawable.ic_disable);
        imageView.setImageTintList(sz8.h0(iR));
        TextView textView = (TextView) vqVar2.d;
        textView.setText(R.string.disable_apps);
        textView.setTextColor(iR);
        constraintLayout2.setOnClickListener(new h10(4, constraintLayout2, this));
        return this.k;
    }
}
