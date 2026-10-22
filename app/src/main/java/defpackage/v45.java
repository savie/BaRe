package defpackage;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.SpannableString;
import android.text.style.StyleSpan;
import android.widget.ProgressBar;
import android.widget.TextView;
import java.text.NumberFormat;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class v45 extends Handler {
    public final /* synthetic */ int a = 1;
    public final /* synthetic */ Object b;

    public v45(w45 w45Var) {
        this.b = w45Var;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                message.getClass();
                super.handleMessage(message);
                w45 w45Var = (w45) obj;
                ProgressBar progressBar = w45Var.p;
                progressBar.getClass();
                int progress = progressBar.getProgress();
                ProgressBar progressBar2 = w45Var.p;
                progressBar2.getClass();
                int max = progressBar2.getMax();
                String str = w45Var.x;
                TextView textView = w45Var.t;
                if (str != null) {
                    textView.getClass();
                    textView.setText(String.format(str, Arrays.copyOf(new Object[]{Integer.valueOf(progress), Integer.valueOf(max)}, 2)));
                } else {
                    textView.getClass();
                    textView.setText("");
                }
                if (w45Var.G == null) {
                    TextView textView2 = w45Var.y;
                    textView2.getClass();
                    textView2.setText("");
                } else {
                    double d = ((double) progress) / ((double) max);
                    NumberFormat numberFormat = w45Var.G;
                    numberFormat.getClass();
                    SpannableString spannableString = new SpannableString(numberFormat.format(d));
                    spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 33);
                    TextView textView3 = w45Var.y;
                    textView3.getClass();
                    textView3.setText(spannableString);
                }
                break;
            default:
                if (message.what == 1) {
                    Runnable runnable = (Runnable) message.obj;
                    ((va7) obj).a();
                    if (runnable != null) {
                        runnable.run();
                    }
                    break;
                }
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v45(va7 va7Var, Looper looper) {
        super(looper);
        this.b = va7Var;
    }
}
