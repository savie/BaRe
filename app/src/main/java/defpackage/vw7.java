package defpackage;

import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vw7 extends r4 {
    public final uw7 a;

    public vw7(ex7 ex7Var) {
        this.a = new uw7(ex7Var);
    }

    @Override // defpackage.r4
    public final void b(TextView textView) {
        CharSequence text = textView.getText();
        Object[] spans = (TextUtils.isEmpty(text) || !(text instanceof Spanned)) ? null : ((Spanned) text).getSpans(0, text.length(), ax7.class);
        if (spans == null || spans.length <= 0) {
            return;
        }
        if (textView.getTag(R.id.markwon_tables_scheduler) == null) {
            bx7 bx7Var = new bx7(textView);
            textView.addOnAttachStateChangeListener(bx7Var);
            textView.setTag(R.id.markwon_tables_scheduler, bx7Var);
        }
        ib ibVar = new ib(textView);
        for (Object obj : spans) {
            ((ax7) obj).r = ibVar;
        }
    }

    @Override // defpackage.r4
    public final void c() {
        uw7 uw7Var = this.a;
        uw7Var.b = null;
        uw7Var.c = false;
        uw7Var.d = 0;
    }

    @Override // defpackage.r4
    public final void d(TextView textView, SpannableStringBuilder spannableStringBuilder) {
        CharSequence text = textView.getText();
        Object[] spans = (TextUtils.isEmpty(text) || !(text instanceof Spanned)) ? null : ((Spanned) text).getSpans(0, text.length(), ax7.class);
        if (spans == null || spans.length <= 0) {
            return;
        }
        for (Object obj : spans) {
            ((ax7) obj).r = null;
        }
    }

    @Override // defpackage.r4
    public final void f(bx5 bx5Var) {
        Set setSingleton = Collections.singleton(new fx7());
        if (setSingleton == null) {
            f6.n("extensions must not be null");
            return;
        }
        Iterator it = setSingleton.iterator();
        while (it.hasNext()) {
            if (((fx7) it.next()) instanceof fx7) {
                ((ArrayList) bx5Var.a).add(new a63(2));
            }
        }
    }

    @Override // defpackage.r4
    public final void i(om5 om5Var) {
        om5Var.g(hw7.class, new ex1(2));
        uw7 uw7Var = this.a;
        om5Var.g(jw7.class, new tw7(uw7Var));
        om5Var.g(ww7.class, new cx1(uw7Var, 1));
        om5Var.g(mw7.class, new sw7(uw7Var));
        om5Var.g(lw7.class, new rw7(uw7Var));
    }
}
