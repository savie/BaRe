package defpackage;

import android.text.Editable;
import android.text.TextWatcher;
import org.swiftapps.swiftbackup.appconfigs.data.Config;
import org.swiftapps.swiftbackup.appconfigs.edit.ConfigEditActivity;
import org.swiftapps.swiftbackup.cloud.connect.CsActivity;
import org.swiftapps.swiftbackup.cloud.connect.MegaSignInActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class jq1 implements TextWatcher {
    public final /* synthetic */ int a;
    public final /* synthetic */ il0 b;

    public /* synthetic */ jq1(il0 il0Var, int i) {
        this.a = i;
        this.b = il0Var;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        String string;
        String string2;
        int i = this.a;
        il0 il0Var = this.b;
        switch (i) {
            case 0:
                ConfigEditActivity configEditActivity = (ConfigEditActivity) il0Var;
                Config configJ = configEditActivity.V().j();
                if (editable == null || (string2 = editable.toString()) == null || (string = nq7.H0(string2).toString()) == null) {
                    string = "";
                }
                configEditActivity.V().l(Config.copy$default(configJ, 0, null, string, null, null, 27, null), false);
                break;
            case 1:
                CsActivity csActivity = (CsActivity) il0Var;
                csActivity.a0().l(csActivity.m0());
                break;
            default:
                MegaSignInActivity megaSignInActivity = (MegaSignInActivity) il0Var;
                megaSignInActivity.a0().k(megaSignInActivity.P());
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

    private final void e(int i, int i2, int i3, CharSequence charSequence) {
    }

    private final void f(int i, int i2, int i3, CharSequence charSequence) {
    }
}
