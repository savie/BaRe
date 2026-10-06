package defpackage;

import android.view.View;
import android.widget.TextView;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class r60 implements View.OnAttachStateChangeListener {
    public final /* synthetic */ TextView a;

    public r60(TextView textView) {
        this.a = textView;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        yc9.k0(this.a);
        view.removeOnAttachStateChangeListener(this);
        view.setTag(R.id.markwon_drawables_scheduler, null);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }
}
