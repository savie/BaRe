package defpackage;

import android.text.Editable;
import android.text.TextUtils;
import android.widget.TextView;
import com.google.android.material.timepicker.ChipTextInputComboView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class q38 extends z18 {
    public final /* synthetic */ v38 a;

    public q38(v38 v38Var) {
        this.a = v38Var;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        v38 v38Var = this.a;
        String str = v38Var.x;
        TextView textView = v38Var.p;
        ChipTextInputComboView chipTextInputComboView = v38Var.e;
        j38 j38Var = v38Var.b;
        try {
            if (TextUtils.isEmpty(editable)) {
                j38Var.l(0);
                v38Var.e();
                return;
            }
            if (editable.length() > 2) {
                editable.delete(2, editable.length());
                v38.i(v38Var.k);
                return;
            }
            int i = Integer.parseInt(editable.toString());
            if (i > 59) {
                chipTextInputComboView.a(true);
                textView.setText(str);
                textView.announceForAccessibility(textView.getText());
                v38.i(textView);
            } else {
                v38Var.e();
            }
            j38Var.l(i);
        } catch (NumberFormatException unused) {
            chipTextInputComboView.a(true);
            textView.setText(str);
            textView.announceForAccessibility(textView.getText());
            v38.i(textView);
        }
    }
}
