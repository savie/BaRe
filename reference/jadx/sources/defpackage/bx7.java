package defpackage;

import android.text.Spanned;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bx7 implements View.OnAttachStateChangeListener {
    public final /* synthetic */ TextView a;

    public bx7(TextView textView) {
        this.a = textView;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        TextView textView = this.a;
        CharSequence text = textView.getText();
        Object[] spans = (TextUtils.isEmpty(text) || !(text instanceof Spanned)) ? null : ((Spanned) text).getSpans(0, text.length(), ax7.class);
        if (spans != null && spans.length > 0) {
            for (Object obj : spans) {
                ((ax7) obj).r = null;
            }
        }
        textView.removeOnAttachStateChangeListener(this);
        textView.setTag(R.id.markwon_tables_scheduler, null);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }
}
