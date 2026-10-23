package defpackage;

import android.content.Context;
import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import com.google.android.material.textfield.TextInputLayout;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class pk implements TextWatcher {
    public final /* synthetic */ EditText a;
    public final /* synthetic */ TextInputLayout b;
    public final /* synthetic */ qk c;
    public final /* synthetic */ Context d;

    public pk(EditText editText, TextInputLayout textInputLayout, qk qkVar, Context context) {
        this.a = editText;
        this.b = textInputLayout;
        this.c = qkVar;
        this.d = context;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        String string;
        qk qkVar = this.c;
        bt3 bt3Var = qkVar.u;
        String string2 = null;
        String string3 = editable != null ? editable.toString() : null;
        String strG0 = (editable == null || (string = editable.toString()) == null) ? null : nq7.G0(6, string);
        if (strG0 == null || strG0.length() == 0 || nq7.j0(strG0)) {
            strG0 = "0";
        }
        if (strG0.length() > 1 && uq7.V(strG0, "0", false)) {
            String strI0 = nq7.I0(strG0, '0');
            strG0 = strI0.length() != 0 ? strI0 : "0";
        }
        if (!pe4.d(string3, strG0)) {
            EditText editText = this.a;
            editText.setText(strG0);
            editText.setSelection(strG0.length());
        }
        Long lY = uq7.Y(strG0);
        TextInputLayout textInputLayout = this.b;
        if (textInputLayout.getId() == qkVar.w.getId()) {
            qkVar.A = lY;
            bt3Var.invoke();
        }
        if (textInputLayout.getId() == qkVar.x.getId()) {
            qkVar.B = lY;
            bt3Var.invoke();
        }
        Context context = this.d;
        textInputLayout.setEndIconTintList(sz8.h0((lY == null || lY.longValue() <= 0) ? context.getColor(sz8.y(context, R.attr.dividerColor)) : sz8.r(context)));
        Long lValueOf = lY != null ? Long.valueOf(lY.longValue() * 1048576) : null;
        if (lValueOf == null || lValueOf.longValue() <= 0) {
            string2 = context.getString(R.string.no_limit);
        } else if (lValueOf.longValue() >= 1073741824) {
            p93 p93Var = p93.a;
            string2 = p93.c(lValueOf);
        }
        textInputLayout.setHelperTextEnabled(!(string2 == null || string2.length() == 0));
        textInputLayout.setHelperText(string2);
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
