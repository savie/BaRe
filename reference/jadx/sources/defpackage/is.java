package defpackage;

import android.content.Context;
import android.view.animation.PathInterpolator;
import android.view.inputmethod.InputMethodManager;
import androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.CredentialProviderCreatePublicKeyCredentialController;
import androidx.credentials.playservices.controllers.identitycredentials.createpublickeycredential.CreatePublicKeyCredentialController;
import androidx.credentials.playservices.controllers.identitycredentials.signalcredentialstate.SignalCredentialStateController;
import com.google.android.material.listitem.ListItemLayout;
import com.jcraft.jsch.Channel;
import org.swiftapps.swiftbackup.appslist.ui.list.AppListActivity;
import org.swiftapps.swiftbackup.home.search.HomeSearchActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class is implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ is(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.a;
        int i2 = 1;
        Object obj = this.b;
        switch (i) {
            case 0:
                int i3 = AppListActivity.q0;
                ((AppListActivity) obj).o0().setRefreshing(false);
                return;
            case 1:
                ((r91) obj).s(true);
                return;
            case 2:
                CreatePublicKeyCredentialController.invokePlayServices$lambda$0$1$0((CreatePublicKeyCredentialController) obj);
                return;
            case 3:
                CredentialProviderCreatePublicKeyCredentialController.handleResponse$lambda$2((CredentialProviderCreatePublicKeyCredentialController) obj);
                return;
            case 4:
                lr2 lr2Var = (lr2) obj;
                boolean zIsPopupShowing = lr2Var.h.isPopupShowing();
                lr2Var.s(zIsPopupShowing);
                lr2Var.m = zIsPopupShowing;
                return;
            case 5:
                HomeSearchActivity homeSearchActivity = (HomeSearchActivity) obj;
                PathInterpolator pathInterpolator = HomeSearchActivity.X;
                if (homeSearchActivity.isFinishing() || homeSearchActivity.isDestroyed()) {
                    return;
                }
                Object systemService = homeSearchActivity.getSystemService("input_method");
                systemService.getClass();
                ((InputMethodManager) systemService).showSoftInput(homeSearchActivity.X().f, 0);
                return;
            case 6:
                gx4 gx4Var = (gx4) obj;
                gx4Var.c = false;
                ListItemLayout listItemLayout = gx4Var.e;
                gl8 gl8Var = listItemLayout.b;
                if (gl8Var == null || !gl8Var.g()) {
                    if (listItemLayout.t == 2) {
                        listItemLayout.i(gx4Var.a, gx4Var.b);
                        return;
                    }
                    return;
                }
                int i4 = gx4Var.a;
                int i5 = gx4Var.b;
                gx4Var.a = i4;
                gx4Var.b = i5;
                if (gx4Var.c) {
                    return;
                }
                listItemLayout.post(gx4Var.d);
                gx4Var.c = true;
                return;
            case 7:
                jb9.l0((Context) obj, new p22(), jb9.I, false);
                return;
            case 8:
                jo6 jo6Var = (jo6) obj;
                boolean z = jo6Var.c > 0;
                if (jo6Var.o.compareAndSet(false, true) && z) {
                    dv1 dv1Var = jo6Var.l.a;
                    jv1 jv1Var = null;
                    if (dv1Var != null) {
                        l73.v(dv1Var, jo6Var.r, new rb5(jo6Var, jv1Var, i2), 2);
                        return;
                    } else {
                        pe4.F("coroutineScope");
                        throw null;
                    }
                }
                return;
            case XmlPullParser.COMMENT /* 9 */:
                ((Channel) obj).run();
                return;
            default:
                SignalCredentialStateController.invokePlayServices$lambda$0$0((t22) obj);
                return;
        }
    }
}
