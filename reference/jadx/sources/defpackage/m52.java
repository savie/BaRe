package defpackage;

import android.text.Editable;
import android.text.TextWatcher;
import com.google.android.material.textfield.TextInputEditText;
import java.util.Map;
import org.swiftapps.swiftbackup.cloud.connect.CsActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class m52 implements TextWatcher {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ m52(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        int i = this.a;
        Object obj = this.c;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                CsActivity csActivity = (CsActivity) obj2;
                if (!csActivity.L0) {
                    if (editable != null && editable.length() != 0) {
                        String string = editable.toString();
                        for (Map.Entry entry : ((Map) obj).entrySet()) {
                            if (nq7.Z(string, (CharSequence) entry.getKey(), false)) {
                                string = uq7.T(string, (String) entry.getKey(), (String) entry.getValue());
                            }
                        }
                        if (string.length() != editable.length()) {
                            TextInputEditText textInputEditTextG0 = csActivity.g0();
                            textInputEditTextG0.setText(string);
                            textInputEditTextG0.setSelection(string.length());
                        }
                    }
                    csActivity.a0().l(csActivity.m0());
                    break;
                }
                break;
            default:
                j75.b((String) obj2, (j75) obj);
                break;
        }
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        int i4 = this.a;
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        int i4 = this.a;
    }

    private final void a(int i, int i2, int i3, CharSequence charSequence) {
    }

    private final void b(int i, int i2, int i3, CharSequence charSequence) {
    }

    private final void c(int i, int i2, int i3, CharSequence charSequence) {
    }

    private final void d(int i, int i2, int i3, CharSequence charSequence) {
    }
}
