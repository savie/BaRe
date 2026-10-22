package defpackage;

import android.os.Bundle;
import com.google.android.material.snackbar.SnackbarContentLayout;
import com.pcloud.sdk.internal.a;
import okhttp3.Response;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigSettings;
import org.swiftapps.swiftbackup.intro.IntroActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class cb implements eb, h9, t45, hm6 {
    public final /* synthetic */ Object a;

    public /* synthetic */ cb(Object obj) {
        this.a = obj;
    }

    @Override // defpackage.hm6
    public Object a(Response response) {
        return ((hw3) ((a) this.a).f(response, hw3.class)).d();
    }

    @Override // defpackage.t45
    public void b(boolean z, boolean z2) {
        IntroActivity introActivity = (IntroActivity) this.a;
        int i = IntroActivity.V;
        if (z2) {
            dz5 dz5Var = dz5.a;
            dz5.o(introActivity, dz5.c(), false);
            return;
        }
        if (z) {
            introActivity.a0().o();
            return;
        }
        introActivity.N();
        if (introActivity.isFinishing()) {
            return;
        }
        qi7 qi7VarP = introActivity.P();
        ((SnackbarContentLayout) qi7VarP.i.getChildAt(0)).getMessageView().setText(qi7VarP.h.getText(R.string.permission_needed_to_proceed));
        qi7VarP.h(new bf4(introActivity, 1));
        qi7VarP.i();
    }

    @Override // defpackage.h9
    public void h(Object obj) {
        lr1 lr1Var = (lr1) this.a;
        ConfigSettings configSettings = (ConfigSettings) obj;
        if (configSettings != null) {
            lr1Var.r().k(configSettings);
        }
    }

    @Override // defpackage.eb
    public void p(Bundle bundle) {
        ((q34) ((db) this.a).a).p(bundle);
    }
}
