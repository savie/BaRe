package defpackage;

import android.widget.EditText;
import com.google.android.material.textfield.TextInputLayout;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mw2 {
    public final /* synthetic */ pw2 a;

    public mw2(pw2 pw2Var) {
        this.a = pw2Var;
    }

    public final void a(TextInputLayout textInputLayout) {
        pw2 pw2Var = this.a;
        lw2 lw2Var = pw2Var.N;
        if (pw2Var.K == textInputLayout.getEditText()) {
            return;
        }
        EditText editText = pw2Var.K;
        if (editText != null) {
            editText.removeTextChangedListener(lw2Var);
            if (pw2Var.K.getOnFocusChangeListener() == pw2Var.a().e()) {
                pw2Var.K.setOnFocusChangeListener(null);
            }
        }
        EditText editText2 = textInputLayout.getEditText();
        pw2Var.K = editText2;
        if (editText2 != null) {
            editText2.addTextChangedListener(lw2Var);
        }
        pw2Var.a().l(pw2Var.K);
        pw2Var.j(pw2Var.a());
    }
}
