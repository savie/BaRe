package defpackage;

import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.TextWatcher;
import android.widget.EditText;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bv2 implements TextWatcher {
    public final EditText a;
    public av2 b;
    public boolean c = true;

    public bv2(EditText editText) {
        this.a = editText;
    }

    public static void a(EditText editText, int i) {
        int length;
        if (i == 1 && editText != null && editText.isAttachedToWindow()) {
            Editable editableText = editText.getEditableText();
            int selectionStart = Selection.getSelectionStart(editableText);
            int selectionEnd = Selection.getSelectionEnd(editableText);
            ku2 ku2VarA = ku2.a();
            if (editableText == null) {
                length = 0;
            } else {
                ku2VarA.getClass();
                length = editableText.length();
            }
            ku2VarA.e(editableText, 0, length);
            if (selectionStart >= 0 && selectionEnd >= 0) {
                Selection.setSelection(editableText, selectionStart, selectionEnd);
            } else if (selectionStart >= 0) {
                Selection.setSelection(editableText, selectionStart);
            } else if (selectionEnd >= 0) {
                Selection.setSelection(editableText, selectionEnd);
            }
        }
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) throws Throwable {
        EditText editText = this.a;
        if (editText.isInEditMode() || !this.c || ku2.k == null || i2 > i3 || !(charSequence instanceof Spannable)) {
            return;
        }
        int iB = ku2.a().b();
        if (iB != 0) {
            if (iB == 1) {
                ku2.a().e((Spannable) charSequence, i, i3 + i);
                return;
            } else if (iB != 3) {
                return;
            }
        }
        ku2 ku2VarA = ku2.a();
        if (this.b == null) {
            this.b = new av2(editText);
        }
        ku2VarA.f(this.b);
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
