package defpackage;

import android.text.SpannableStringBuilder;
import android.widget.TextView;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ny3 extends r4 {
    public final my3 a;

    public ny3(nh nhVar) {
        this.a = new my3(nhVar);
    }

    @Override // defpackage.r4
    public final void b(TextView textView) {
        Integer num = (Integer) textView.getTag(R.id.markwon_drawables_scheduler_last_text_hashcode);
        int iHashCode = textView.getText().hashCode();
        if (num == null || num.intValue() != iHashCode) {
            textView.setTag(R.id.markwon_drawables_scheduler_last_text_hashcode, Integer.valueOf(iHashCode));
            v60[] v60VarArrP = yc9.p(textView);
            if (v60VarArrP == null || v60VarArrP.length <= 0) {
                return;
            }
            if (textView.getTag(R.id.markwon_drawables_scheduler) == null) {
                r60 r60Var = new r60(textView);
                textView.addOnAttachStateChangeListener(r60Var);
                textView.setTag(R.id.markwon_drawables_scheduler, r60Var);
            }
            u60 u60Var = new u60(textView, 0);
            for (v60 v60Var : v60VarArrP) {
                p60 p60Var = v60Var.b;
                p60Var.c(new t60(textView, u60Var, p60Var.getBounds()));
            }
        }
    }

    @Override // defpackage.r4
    public final void d(TextView textView, SpannableStringBuilder spannableStringBuilder) {
        yc9.k0(textView);
    }

    @Override // defpackage.r4
    public final void e(i75 i75Var) {
        i75Var.b = this.a;
    }

    @Override // defpackage.r4
    public final void g(bb2 bb2Var) {
        bb2Var.a(s94.class, new ck1(1));
    }
}
