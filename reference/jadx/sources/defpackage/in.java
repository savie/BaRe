package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import com.yubico.yubikit.android.ui.OtpActivity;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class in implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Context b;

    public /* synthetic */ in(Context context, int i) {
        this.a = i;
        this.b = context;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0070  */
    @Override // java.lang.Runnable
    public final void run() {
        h05 h05VarC;
        Object systemService;
        Context context;
        int i = this.a;
        Context context2 = this.b;
        switch (i) {
            case 0:
                int i2 = Build.VERSION.SDK_INT;
                if (i2 >= 33) {
                    ComponentName componentName = new ComponentName(context2, "androidx.appcompat.app.AppLocalesMetadataHolderService");
                    if (context2.getPackageManager().getComponentEnabledSetting(componentName) != 1) {
                        if (i2 >= 33) {
                            p50 p50Var = nn.k;
                            p50Var.getClass();
                            o50 o50Var = new o50(p50Var);
                            while (true) {
                                if (o50Var.hasNext()) {
                                    nn nnVar = (nn) ((WeakReference) o50Var.next()).get();
                                    if (nnVar != null && (context = ((fo) nnVar).r) != null) {
                                        systemService = context.getSystemService("locale");
                                    }
                                } else {
                                    systemService = null;
                                }
                            }
                            if (systemService != null) {
                                h05VarC = h05.c(kn.a(systemService));
                            } else {
                                h05VarC = h05.b;
                            }
                        } else {
                            h05VarC = nn.c;
                            if (h05VarC == null) {
                                h05VarC = h05.b;
                            }
                        }
                        if (h05VarC.a.a.isEmpty()) {
                            String strX = iz1.x(context2);
                            Object systemService2 = context2.getSystemService("locale");
                            if (systemService2 != null) {
                                kn.b(systemService2, jn.a(strX));
                            }
                        }
                        context2.getPackageManager().setComponentEnabledSetting(componentName, 1, 1);
                    }
                }
                nn.f = true;
                break;
            default:
                OtpActivity otpActivity = (OtpActivity) context2;
                int i3 = otpActivity.t - 1;
                otpActivity.t = i3;
                if (i3 == 0) {
                    otpActivity.runOnUiThread(new vn1(otpActivity, 5));
                }
                break;
        }
    }
}
