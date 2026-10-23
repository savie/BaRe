package defpackage;

import android.text.SpannableStringBuilder;
import android.text.style.StyleSpan;
import android.widget.TextView;
import org.swiftapps.swiftbackup.cloud.connect.CsActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class v42 implements mt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ CsActivity b;

    public /* synthetic */ v42(CsActivity csActivity, int i) {
        this.a = i;
        this.b = csActivity;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        int i = this.a;
        be8 be8Var = be8.a;
        CsActivity csActivity = this.b;
        switch (i) {
            case 0:
                String str = (String) obj;
                int i2 = CsActivity.P0;
                gv7 gv7Var = csActivity.r0;
                if (sz8.I((TextView) gv7Var.getValue())) {
                    TextView textView = (TextView) gv7Var.getValue();
                    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                    StyleSpan styleSpan = new StyleSpan(1);
                    int length = spannableStringBuilder.length();
                    spannableStringBuilder.append((CharSequence) "Url: ");
                    spannableStringBuilder.setSpan(styleSpan, length, spannableStringBuilder.length(), 17);
                    if (str == null || str.length() == 0 || nq7.j0(str)) {
                        str = " - ";
                    }
                    spannableStringBuilder.append((CharSequence) str);
                    textView.setText(spannableStringBuilder);
                }
                break;
            default:
                Boolean bool = (Boolean) obj;
                bool.getClass();
                int i3 = CsActivity.P0;
                csActivity.a0().u.k(bool);
                break;
        }
        return be8Var;
    }
}
