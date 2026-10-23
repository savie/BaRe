package defpackage;

import androidx.credentials.playservices.controllers.identitycredentials.createpasswordcredential.CreatePasswordCredentialController;
import com.google.android.material.appbar.AppBarLayout;
import java.util.Map;
import org.swiftapps.swiftbackup.home.HomeActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class u12 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ u12(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                CreatePasswordCredentialController.invokePlayServices$lambda$0$0$0((CreatePasswordCredentialController) obj);
                break;
            case 1:
                ((pg3) obj).a();
                break;
            default:
                HomeActivity homeActivity = (HomeActivity) obj;
                Map map = HomeActivity.b0;
                ((AppBarLayout) homeActivity.Z().c.a).e(false, true);
                ((AppBarLayout) homeActivity.Z().c.a).d(true, true, true);
                break;
        }
    }
}
