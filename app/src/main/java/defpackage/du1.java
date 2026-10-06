package defpackage;

import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import androidx.fragment.app.u;
import java.util.Arrays;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.settings.SettingsDetailActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class du1 extends ws7 implements qt3 {
    public final /* synthetic */ int a;
    public int b;
    public final /* synthetic */ Object c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ du1(Object obj, jv1 jv1Var, int i) {
        super(2, jv1Var);
        this.a = i;
        this.c = obj;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        int i = this.a;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return new du1((eu1) obj2, jv1Var, 0);
            default:
                return new du1((ka7) obj2, jv1Var, 1);
        }
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.a;
        be8 be8Var = be8.a;
        xx1 xx1Var = (xx1) obj;
        jv1 jv1Var = (jv1) obj2;
        switch (i) {
            case 0:
                break;
        }
        return ((du1) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        int i = this.a;
        be8 be8Var = be8.a;
        yx1 yx1Var = yx1.a;
        Object obj2 = this.c;
        String str = null;
        switch (i) {
            case 0:
                eu1 eu1Var = (eu1) obj2;
                int i2 = this.b;
                if (i2 != 0) {
                    if (i2 == 1) {
                        lg7.H(obj);
                        return be8Var;
                    }
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                lg7.H(obj);
                String strN = Const.n();
                Intent intent = new Intent("android.intent.action.SENDTO", Uri.fromParts("mailto", "support@swiftapps.org", null));
                u activity = eu1Var.getActivity();
                activity.getClass();
                SettingsDetailActivity settingsDetailActivity = (SettingsDetailActivity) activity;
                String packageName = settingsDetailActivity.getPackageName();
                packageName.getClass();
                try {
                    PackageManager packageManager = settingsDetailActivity.getPackageManager();
                    ApplicationInfo applicationInfo = packageManager.getApplicationInfo(packageName, 0);
                    applicationInfo.getClass();
                    CharSequence applicationLabel = packageManager.getApplicationLabel(applicationInfo);
                    applicationLabel.getClass();
                    str = (String) applicationLabel;
                } catch (PackageManager.NameNotFoundException unused) {
                }
                intent.putExtra("android.intent.extra.SUBJECT", String.format("%s (From App)", Arrays.copyOf(new Object[]{str}, 1)));
                intent.putExtra("android.intent.extra.TEXT", strN);
                zn4 zn4Var = zn4.a;
                d11 d11Var = new d11(3, eu1Var, intent);
                this.b = 1;
                return zn4.g(d11Var, this) == yx1Var ? yx1Var : be8Var;
            default:
                ka7 ka7Var = (ka7) obj2;
                int i3 = this.b;
                if (i3 != 0) {
                    if (i3 == 1) {
                        lg7.H(obj);
                        return be8Var;
                    }
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                lg7.H(obj);
                ji3 data = ka7Var.b.getData();
                ia7 ia7Var = new ia7(ka7Var.c);
                this.b = 1;
                return data.t(ia7Var, this) == yx1Var ? yx1Var : be8Var;
        }
    }
}
