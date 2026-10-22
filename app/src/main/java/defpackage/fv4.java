package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fv4 extends gs4 implements mt3 {
    public final /* synthetic */ hv4 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fv4(hv4 hv4Var) {
        super(1);
        this.a = hv4Var;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        Activity activity = (Activity) obj;
        activity.getClass();
        Locale localeH = this.a.b.h();
        localeH.getClass();
        ge.C(activity, localeH);
        Context applicationContext = activity.getApplicationContext();
        if (applicationContext != activity) {
            applicationContext.getClass();
            ge.C(applicationContext, localeH);
        }
        try {
            int i = activity.getPackageManager().getActivityInfo(activity.getComponentName(), 128).labelRes;
            if (i != 0) {
                activity.setTitle(i);
            }
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        return be8.a;
    }
}
