package defpackage;

import android.text.Editable;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import com.google.android.material.timepicker.ChipTextInputComboView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class o38 implements TextView.OnEditorActionListener, View.OnKeyListener {
    public final ChipTextInputComboView a;
    public final ChipTextInputComboView b;
    public final j38 c;
    public boolean d = false;

    public o38(ChipTextInputComboView chipTextInputComboView, ChipTextInputComboView chipTextInputComboView2, j38 j38Var) {
        this.a = chipTextInputComboView;
        this.b = chipTextInputComboView2;
        this.c = j38Var;
    }

    public final void a(int i) {
        this.b.setChecked(i == 12);
        this.a.setChecked(i == 10);
        this.c.d = i;
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        boolean z = i == 5;
        if (z) {
            a(12);
        }
        return z;
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (this.d) {
            return false;
        }
        boolean z = true;
        this.d = true;
        EditText editText = (EditText) view;
        if (this.c.d != 12) {
            Editable text = editText.getText();
            if (text == null) {
                z = false;
            } else if (i < 7 || i > 16 || keyEvent.getAction() != 1 || editText.getSelectionStart() != 2 || text.length() != 2 || this.a.n) {
                if (i >= 7 && i <= 16 && editText.getSelectionStart() == 0 && editText.length() == 2) {
                    editText.getText().clear();
                }
                z = false;
            } else {
                a(12);
            }
        } else if (i == 67 && keyEvent.getAction() == 0 && TextUtils.isEmpty(editText.getText())) {
            a(10);
        } else {
            if (i >= 7 && i <= 16 && editText.getSelectionStart() == 0 && editText.length() == 2) {
                editText.getText().clear();
            }
            z = false;
        }
        this.d = false;
        return z;
    }
}
