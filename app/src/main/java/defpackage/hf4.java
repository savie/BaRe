package defpackage;

import android.text.style.ClickableSpan;
import android.text.style.URLSpan;
import android.view.View;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.intro.IntroActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class hf4 extends ClickableSpan {
    public final /* synthetic */ IntroActivity a;
    public final /* synthetic */ URLSpan b;

    public hf4(IntroActivity introActivity, URLSpan uRLSpan) {
        this.a = introActivity;
        this.b = uRLSpan;
    }

    @Override // android.text.style.ClickableSpan
    public final void onClick(View view) {
        view.getClass();
        String url = this.b.getURL();
        url.getClass();
        Const.B(this.a, url);
    }
}
