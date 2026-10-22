package defpackage;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.ImageView;
import com.google.android.material.textfield.TextInputEditText;
import com.nimbusds.jose.jwk.gen.OctetSequenceKeyGenerator;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelEditActivity;
import org.swiftapps.swiftbackup.cloud.connect.CsActivity;
import org.swiftapps.swiftbackup.cloud.connect.MegaSignInActivity;
import org.swiftapps.swiftbackup.contributor.ContributorRegActivity;
import org.swiftapps.swiftbackup.contributor.ContributorRegistration;
import org.swiftapps.swiftbackup.contributor.a;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class mv1 implements TextWatcher {
    public final /* synthetic */ int a;
    public final /* synthetic */ il0 b;

    public /* synthetic */ mv1(il0 il0Var, int i) {
        this.a = i;
        this.b = il0Var;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0063  */
    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        String string;
        String string2;
        String string3;
        oq8 oq8Var;
        String string4;
        int i = this.a;
        Object obj = null;
        il0 il0Var = this.b;
        switch (i) {
            case 0:
                ContributorRegActivity contributorRegActivity = (ContributorRegActivity) il0Var;
                int i2 = ContributorRegActivity.S;
                Editable text = ((TextInputEditText) contributorRegActivity.O.getValue()).getText();
                String string5 = (text == null || (string3 = text.toString()) == null) ? null : nq7.H0(string3).toString();
                String str = io4.f(string5) ? string5 : null;
                Editable text2 = ((TextInputEditText) contributorRegActivity.P.getValue()).getText();
                String string6 = (text2 == null || (string2 = text2.toString()) == null) ? null : nq7.H0(string2).toString();
                String str2 = io4.f(string6) ? string6 : null;
                Editable text3 = ((TextInputEditText) contributorRegActivity.Q.getValue()).getText();
                String string7 = (text3 == null || (string = text3.toString()) == null) ? null : nq7.H0(string).toString();
                ContributorRegistration contributorRegistration = new ContributorRegistration(null, null, null, null, str, str2, io4.f(string7) ? string7 : null, 15, null);
                a aVar = (a) contributorRegActivity.K.getValue();
                aVar.g = ContributorRegistration.copy$default(contributorRegistration, aVar.g.get_status(), aVar.g.getType(), aVar.g.get_name(), aVar.g.get_locales(), null, null, null, OctetSequenceKeyGenerator.MIN_KEY_SIZE_BITS, null);
                break;
            case 1:
                CsActivity csActivity = (CsActivity) il0Var;
                if (!csActivity.K0) {
                    oq8 oq8Var2 = csActivity.J0;
                    oq8 oq8Var3 = oq8.i;
                    String string8 = (editable == null || (string4 = editable.toString()) == null) ? null : nq7.H0(string4).toString();
                    for (Object obj2 : oq8.m) {
                        if (((oq8) obj2).b.equals(string8)) {
                            obj = obj2;
                            oq8Var = (oq8) obj;
                            if (oq8Var == null) {
                                oq8Var = oq8.i;
                            }
                            csActivity.J0 = oq8Var;
                            y13.D((ImageView) csActivity.h0.getValue(), oq8Var.c, oq8Var.b, 3.0f);
                            csActivity.a0(oq8Var, oq8Var2, true);
                            csActivity.a0().l(csActivity.m0());
                            break;
                        }
                    }
                    oq8Var = (oq8) obj;
                    if (oq8Var == null) {
                        oq8Var = oq8.i;
                    }
                    csActivity.J0 = oq8Var;
                    y13.D((ImageView) csActivity.h0.getValue(), oq8Var.c, oq8Var.b, 3.0f);
                    csActivity.a0(oq8Var, oq8Var2, true);
                    csActivity.a0().l(csActivity.m0());
                    break;
                }
                break;
            case 2:
                LabelEditActivity labelEditActivity = (LabelEditActivity) il0Var;
                labelEditActivity.V().j(labelEditActivity.P());
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

    private final void g(int i, int i2, int i3, CharSequence charSequence) {
    }

    private final void h(int i, int i2, int i3, CharSequence charSequence) {
    }
}
