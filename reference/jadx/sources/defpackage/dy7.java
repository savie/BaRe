package defpackage;

import android.widget.TextView;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.tasks.ui.TaskActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class dy7 {
    public final TaskActivity a;
    public final TextView b;
    public Integer c;
    public String d;
    public boolean e;

    public dy7(TaskActivity taskActivity, TextView textView) {
        taskActivity.getClass();
        textView.getClass();
        this.a = taskActivity;
        this.b = textView;
        this.e = true;
    }

    public final void a(String str) {
        this.d = str;
        d();
    }

    public final void b(int i) {
        if (i < 0 || i >= 101) {
            return;
        }
        this.c = Integer.valueOf(i);
        d();
    }

    public final void c(boolean z) {
        this.b.setVisibility(z ? 0 : 4);
    }

    public final void d() {
        Integer num;
        StringBuilder sb = new StringBuilder();
        String string = this.d;
        if (string != null) {
            if (nq7.j0(string)) {
                string = null;
            }
            if (string != null) {
                sb.append(" ·  ");
                List listW0 = nq7.w0(string, new char[]{'/'}, 6);
                if (listW0.size() == 2) {
                    string = this.a.getString(R.string.x_of_y, listW0.get(0), listW0.get(1));
                    string.getClass();
                }
                sb.append(string);
            }
        }
        if (this.e && (num = this.c) != null) {
            int iIntValue = num.intValue();
            sb.append(" ·  ");
            sb.append(iIntValue);
            sb.append('%');
        }
        String string2 = sb.toString();
        int length = string2.length();
        TextView textView = this.b;
        if (length != 0) {
            textView.setText(string2);
            textView.setVisibility(0);
        } else {
            if (this.e) {
                return;
            }
            sz8.W(textView);
        }
    }
}
