package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import com.google.android.material.card.MaterialCardView;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.settings.SettingsDetailActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class tk0 extends ol1 {
    public final SettingsDetailActivity e;
    public final CharSequence f;
    public final om5 k;
    public final TextView n;
    public final MaterialCardView p;
    public final TextView q;
    public final ImageView r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tk0(SettingsDetailActivity settingsDetailActivity, CharSequence charSequence) {
        super(11, false);
        charSequence.getClass();
        this.e = settingsDetailActivity;
        this.f = charSequence;
        View viewInflate = View.inflate(settingsDetailActivity, R.layout.backup_scan_dialog, null);
        NestedScrollView nestedScrollView = (NestedScrollView) viewInflate;
        int i = R.id.iv_cancel;
        ImageView imageView = (ImageView) ms8.u(viewInflate, R.id.iv_cancel);
        if (imageView != null) {
            i = R.id.note;
            MaterialCardView materialCardView = (MaterialCardView) ms8.u(viewInflate, R.id.note);
            if (materialCardView != null) {
                i = R.id.tv_dialog_subtitle;
                TextView textView = (TextView) ms8.u(viewInflate, R.id.tv_dialog_subtitle);
                if (textView != null) {
                    i = R.id.tv_report;
                    TextView textView2 = (TextView) ms8.u(viewInflate, R.id.tv_report);
                    if (textView2 != null) {
                        this.k = new om5(nestedScrollView, imageView, materialCardView, textView, textView2);
                        this.n = textView;
                        this.p = materialCardView;
                        this.q = textView2;
                        this.r = imageView;
                        return;
                    }
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i)));
        throw null;
    }

    @Override // defpackage.ol1
    public final jk8 i() {
        this.n.setText(Const.l());
        this.q.setText(this.f);
        this.p.setOnClickListener(new h7(this, 5));
        this.r.setOnClickListener(new of(this, 2));
        return this.k;
    }
}
