package defpackage;

import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.widget.TextView;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appconfigs.data.Config;
import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yq1 extends gm7 {
    public final il0 l;

    public yq1(il0 il0Var) {
        super(null);
        this.l = il0Var;
    }

    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, int i) {
        CharSequence charSequenceK;
        xq1 xq1Var = (xq1) fh6Var;
        Config config = (Config) m(i);
        yq1 yq1Var = xq1Var.y;
        il0 il0Var = yq1Var.l;
        config.getClass();
        xq1Var.w.setText(config.getName());
        TextView textView = xq1Var.x;
        if (sq1.a(config, false)) {
            charSequenceK = dj7.k(il0Var.getString(R.string.updated), ": ", Const.s(config.getUpdateDate()));
        } else {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(sz8.r(il0Var));
            int length = spannableStringBuilder.length();
            spannableStringBuilder.append((CharSequence) il0Var.getString(R.string.invalid_config));
            spannableStringBuilder.setSpan(foregroundColorSpan, length, spannableStringBuilder.length(), 17);
            charSequenceK = spannableStringBuilder;
        }
        textView.setText(charSequenceK);
        xq1Var.v.setOnClickListener(new m51(1, yq1Var, config));
    }

    @Override // defpackage.gm7
    public final int n(int i) {
        return R.layout.config_item;
    }

    @Override // defpackage.gm7
    public final fh6 o(View view, int i) {
        return new xq1(this, view);
    }
}
