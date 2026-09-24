package defpackage;

import android.os.CancellationSignal;
import androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.CredentialProviderCreatePublicKeyCredentialController;
import androidx.credentials.playservices.controllers.identitycredentials.createpublickeycredential.CreatePublicKeyCredentialController;
import java.util.Locale;
import org.swiftapps.swiftbackup.locale.LocaleActivity;
import org.swiftapps.swiftbackup.model.firebase.AppSettings;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class uc1 implements qt3 {
    public final /* synthetic */ int a;

    public /* synthetic */ uc1(LocaleActivity localeActivity) {
        this.a = 3;
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        switch (this.a) {
            case 0:
                return dd1._init_$lambda$29((il0) obj, ((Integer) obj2).intValue());
            case 1:
                return CreatePublicKeyCredentialController.handleResponse$lambda$0((CancellationSignal) obj, (bt3) obj2);
            case 2:
                return CredentialProviderCreatePublicKeyCredentialController.handleResponse$lambda$0((CancellationSignal) obj, (bt3) obj2);
            default:
                is4 is4Var = (is4) obj;
                ((Integer) obj2).getClass();
                int i = LocaleActivity.P;
                is4Var.getClass();
                Locale localeB = j05.b();
                String language = localeB.getLanguage();
                language.getClass();
                String country = localeB.getCountry();
                country.getClass();
                if (!is4Var.equals(xx3.i(language, country))) {
                    j05.a(is4Var.a(), true);
                    ha7.a.c(AppSettings.Companion.withSavedSettings());
                    if (!b67.e()) {
                        ny2.b().e(new tq3());
                    }
                }
                return be8.a;
        }
    }

    public /* synthetic */ uc1(int i) {
        this.a = i;
    }
}
