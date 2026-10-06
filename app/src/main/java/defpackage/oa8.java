package defpackage;

import android.view.View;
import android.widget.TextView;
import com.google.android.material.card.MaterialCardView;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class oa8 extends r35 {
    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, int i) {
        ((na8) fh6Var).r((ma8) this.d.get(i));
    }

    @Override // defpackage.r35
    public final int k(int i) {
        return R.layout.translation_credits_item_normal;
    }

    @Override // defpackage.r35
    public final fh6 l(View view, int i) {
        int i2 = R.id.tv_subtitle;
        TextView textView = (TextView) ms8.u(view, R.id.tv_subtitle);
        if (textView != null) {
            i2 = R.id.tv_title;
            TextView textView2 = (TextView) ms8.u(view, R.id.tv_title);
            if (textView2 != null) {
                i2 = R.id.tv_translators;
                TextView textView3 = (TextView) ms8.u(view, R.id.tv_translators);
                if (textView3 != null) {
                    return new na8(new uv0((MaterialCardView) view, textView, textView2, textView3, 1), textView2, textView, textView3);
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }
}
