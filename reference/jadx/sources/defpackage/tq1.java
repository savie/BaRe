package defpackage;

import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.widget.TextView;
import java.util.Arrays;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigSettings;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tq1 {
    public final boolean a;
    public final TextView b;
    public final QuickRecyclerView c;

    public tq1(ny1 ny1Var, boolean z) {
        this.a = z;
        this.b = (TextView) ny1Var.d;
        this.c = (QuickRecyclerView) ny1Var.c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(ConfigSettings.ApplyData applyData) {
        QuickRecyclerView quickRecyclerView = this.c;
        TextView textView = this.b;
        if (applyData != null && ConfigSettings.ApplyData.isValid$default(applyData, false, 1, null)) {
            textView.setVisibility(8);
            Set<LabelParams> labels = applyData.getLabels();
            sz8.d0(quickRecyclerView, ((labels == null || labels.isEmpty()) ? 1 : 0) ^ 1);
            if (labels == null || labels.isEmpty()) {
                return;
            }
            qr qrVar = tr.n0;
            qr.f(quickRecyclerView, null, this.a, 1.0f, labels, false, null, 4066);
            return;
        }
        textView.setVisibility(0);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(textView.getContext().getColor(R.color.design_default_color_error));
        int length = spannableStringBuilder.length();
        spannableStringBuilder.append((CharSequence) textView.getContext().getString(R.string.select_labels_for_config));
        spannableStringBuilder.setSpan(foregroundColorSpan, length, spannableStringBuilder.length(), 17);
        textView.setText(spannableStringBuilder);
        for (View view : (View[]) Arrays.copyOf(new View[]{quickRecyclerView}, 1)) {
            view.setVisibility(8);
        }
    }
}
