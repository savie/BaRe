package defpackage;

import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.snackbar.SnackbarContentLayout;
import com.nimbusds.jose.shaded.gson.internal.ConstructorConstructor;
import com.nimbusds.jose.shaded.gson.internal.ObjectConstructor;
import com.pcloud.sdk.internal.a;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Set;
import okhttp3.Response;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.intro.IntroActivity;
import org.swiftapps.swiftbackup.messagescalls.dash.CallsDashActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class e11 implements t45, ObjectConstructor, hm6 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ e11(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.hm6
    public Object a(Response response) throws qe, IOException {
        ((a) this.b).f(response, gf.class);
        return Boolean.TRUE;
    }

    @Override // defpackage.t45
    public void b(boolean z, boolean z2) {
        int i = this.a;
        Object obj = this.b;
        int i2 = 0;
        switch (i) {
            case 0:
                CallsDashActivity callsDashActivity = (CallsDashActivity) obj;
                int i3 = CallsDashActivity.T;
                int i4 = 1;
                if (z2) {
                    dz5.o(callsDashActivity, (Set) dz5.f.getValue(), true);
                } else if (!z) {
                    dz5.q(callsDashActivity, (Set) dz5.f.getValue());
                } else {
                    CoordinatorLayout coordinatorLayout = callsDashActivity.Y().a;
                    coordinatorLayout.getClass();
                    coordinatorLayout.setVisibility(0);
                    callsDashActivity.U().e.e(callsDashActivity, new o01(i4, new u10(callsDashActivity, i4)));
                    callsDashActivity.Z().f.e(callsDashActivity, new f11(i2, new lm(callsDashActivity, 6)));
                    callsDashActivity.Z().g.e(callsDashActivity, new f11(i2, new w20(callsDashActivity, 3)));
                }
                break;
            default:
                IntroActivity introActivity = (IntroActivity) obj;
                int i5 = IntroActivity.V;
                if (z2) {
                    dz5 dz5Var = dz5.a;
                    dz5.o(introActivity, sz8.Y("android.permission.POST_NOTIFICATIONS"), false);
                } else if (!z) {
                    introActivity.N();
                    if (!introActivity.isFinishing()) {
                        qi7 qi7VarP = introActivity.P();
                        ((SnackbarContentLayout) qi7VarP.i.getChildAt(0)).getMessageView().setText(qi7VarP.h.getText(R.string.permission_needed_to_proceed));
                        qi7VarP.h(new i00(introActivity, 9));
                        qi7VarP.i();
                    }
                } else {
                    introActivity.a0().o();
                }
                break;
        }
    }

    @Override // com.nimbusds.jose.shaded.gson.internal.ObjectConstructor
    public Object construct() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 1:
                return ConstructorConstructor.lambda$newSpecialCollectionConstructor$4((Type) obj);
            default:
                return ConstructorConstructor.lambda$get$3((String) obj);
        }
    }
}
