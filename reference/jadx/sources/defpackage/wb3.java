package defpackage;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;
import org.swiftapps.swiftbackup.cloud.connect.FilenSignInActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class wb3 implements TextWatcher {
    public final /* synthetic */ FilenSignInActivity a;
    public final /* synthetic */ Button b;

    public wb3(FilenSignInActivity filenSignInActivity, Button button) {
        this.a = filenSignInActivity;
        this.b = button;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        ec3 ec3VarV = this.a.V();
        String string = editable != null ? editable.toString() : null;
        if (string == null) {
            string = "";
        }
        if (pe4.d(ec3VarV.e.d(), bc3.a)) {
            ec3VarV.j = string;
        }
        CharSequence charSequenceH0 = editable != null ? nq7.H0(editable) : null;
        this.b.setEnabled(true ^ (charSequenceH0 == null || nq7.j0(charSequenceH0)));
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
