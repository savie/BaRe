package defpackage;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import org.swiftapps.swiftbackup.cloud.connect.CsActivity;
import org.swiftapps.swiftbackup.settings.appvisibility.AppVisibilityDiagnosticsActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class l00 implements TextWatcher {
    public final /* synthetic */ int a;
    public final /* synthetic */ il0 b;

    public /* synthetic */ l00(il0 il0Var, int i) {
        this.a = i;
        this.b = il0Var;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        int i = this.a;
        il0 il0Var = this.b;
        switch (i) {
            case 0:
                q00 q00VarO = ((AppVisibilityDiagnosticsActivity) il0Var).V();
                String string = editable != null ? editable.toString() : null;
                if (string == null) {
                    string = "";
                }
                String str = string;
                if (!str.equals(q00VarO.f.b)) {
                    n00 n00VarA = n00.a(q00VarO.f, null, str, false, null, 13);
                    q00VarO.f = n00VarA;
                    q00VarO.e.k(n00VarA);
                    break;
                }
                break;
            default:
                CsActivity csActivity = (CsActivity) il0Var;
                int i2 = CsActivity.P0;
                sz8.d0((View) csActivity.A0.getValue(), !(editable == null || editable.length() == 0));
                csActivity.a0().l(csActivity.m0());
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
