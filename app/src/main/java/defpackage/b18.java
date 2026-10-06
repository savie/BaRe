package defpackage;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import com.google.android.material.textfield.TextInputLayout;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class b18 implements TextWatcher {
    public int a;
    public final /* synthetic */ EditText b;
    public final /* synthetic */ TextInputLayout c;

    public b18(TextInputLayout textInputLayout, EditText editText) {
        this.c = textInputLayout;
        this.b = editText;
        this.a = editText.getLineCount();
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        TextInputLayout textInputLayout = this.c;
        textInputLayout.w(!textInputLayout.T0, false);
        if (textInputLayout.t) {
            textInputLayout.p(editable);
        }
        if (textInputLayout.L) {
            textInputLayout.x(editable);
        }
        EditText editText = this.b;
        int lineCount = editText.getLineCount();
        int i = this.a;
        if (lineCount != i) {
            if (lineCount < i) {
                int minimumHeight = editText.getMinimumHeight();
                int i2 = textInputLayout.M0;
                if (minimumHeight != i2) {
                    editText.setMinimumHeight(i2);
                }
            }
            this.a = lineCount;
        }
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
