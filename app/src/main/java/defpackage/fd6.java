package defpackage;

import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.views.MCheckBox;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class fd6 extends fh6 {
    public final kc u;
    public final /* synthetic */ gd6 v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fd6(gd6 gd6Var, View view) {
        super(view);
        this.v = gd6Var;
        int i = R.id.cb;
        MCheckBox mCheckBox = (MCheckBox) ms8.u(view, R.id.cb);
        if (mCheckBox != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) view;
            i = R.id.tv_subtitle;
            TextView textView = (TextView) ms8.u(view, R.id.tv_subtitle);
            if (textView != null) {
                i = R.id.tv_title;
                TextView textView2 = (TextView) ms8.u(view, R.id.tv_title);
                if (textView2 != null) {
                    this.u = new kc(constraintLayout, mCheckBox, textView, textView2, 3);
                    return;
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        throw null;
    }
}
