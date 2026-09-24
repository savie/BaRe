package defpackage;

import android.R;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import androidx.preference.EditTextPreference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ws2 extends z36 {
    public EditText Q;
    public CharSequence R;
    public final ib0 S = new ib0(this, 3);
    public long T = -1;

    @Override // defpackage.z36
    public final void m(View view) {
        super.m(view);
        EditText editText = (EditText) view.findViewById(R.id.edit);
        this.Q = editText;
        if (editText == null) {
            l0.e("Dialog view must contain an EditText with id @android:id/edit");
            return;
        }
        editText.requestFocus();
        this.Q.setText(this.R);
        EditText editText2 = this.Q;
        editText2.setSelection(editText2.getText().length());
        ((EditTextPreference) l()).getClass();
    }

    @Override // defpackage.z36
    public final void n(boolean z) {
        if (z) {
            String string = this.Q.getText().toString();
            EditTextPreference editTextPreference = (EditTextPreference) l();
            if (editTextPreference.a(string)) {
                editTextPreference.G(string);
            }
        }
    }

    @Override // defpackage.z36, androidx.fragment.app.h, androidx.fragment.app.o
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            this.R = ((EditTextPreference) l()).l0;
        } else {
            this.R = bundle.getCharSequence("EditTextPreferenceDialogFragment.text");
        }
    }

    @Override // defpackage.z36, androidx.fragment.app.h, androidx.fragment.app.o
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putCharSequence("EditTextPreferenceDialogFragment.text", this.R);
    }

    public final void p() {
        long j = this.T;
        if (j == -1 || j + 1000 <= SystemClock.currentThreadTimeMillis()) {
            return;
        }
        EditText editText = this.Q;
        if (editText == null || !editText.isFocused()) {
            this.T = -1L;
            return;
        }
        if (((InputMethodManager) this.Q.getContext().getSystemService("input_method")).showSoftInput(this.Q, 0)) {
            this.T = -1L;
            return;
        }
        EditText editText2 = this.Q;
        ib0 ib0Var = this.S;
        editText2.removeCallbacks(ib0Var);
        this.Q.postDelayed(ib0Var, 50L);
    }
}
