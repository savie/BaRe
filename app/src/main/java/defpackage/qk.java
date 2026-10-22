package defpackage;

import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class qk extends fh6 {
    public Long A;
    public Long B;
    public final bt3 u;
    public final TextView v;
    public final TextInputLayout w;
    public final TextInputLayout x;
    public final TextInputEditText y;
    public final TextInputEditText z;

    public qk(ju7 ju7Var, bt3 bt3Var) {
        super((LinearLayout) ju7Var.b);
        this.u = bt3Var;
        this.v = (TextView) ju7Var.e;
        TextInputLayout textInputLayout = (TextInputLayout) ((oe) ju7Var.d).c;
        this.w = textInputLayout;
        TextInputLayout textInputLayout2 = (TextInputLayout) ((oe) ju7Var.c).c;
        this.x = textInputLayout2;
        EditText editText = textInputLayout.getEditText();
        editText.getClass();
        this.y = (TextInputEditText) editText;
        EditText editText2 = textInputLayout2.getEditText();
        editText2.getClass();
        this.z = (TextInputEditText) editText2;
    }
}
