package defpackage;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import com.google.firebase.FirebaseApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class x87 {
    public static final x87 a = new x87();
    public static final om5 b;

    static {
        kj4 kj4Var = new kj4();
        kj4Var.a(w87.class, nb0.a);
        kj4Var.a(c97.class, ob0.a);
        kj4Var.a(oa2.class, lb0.a);
        kj4Var.a(f10.class, kb0.a);
        kj4Var.a(jb.class, jb0.a);
        kj4Var.a(k76.class, mb0.a);
        kj4Var.d = true;
        b = new om5(kj4Var);
    }

    public static f10 a(FirebaseApp firebaseApp) throws PackageManager.NameNotFoundException {
        Context applicationContext = firebaseApp.getApplicationContext();
        applicationContext.getClass();
        String packageName = applicationContext.getPackageName();
        PackageInfo packageInfo = applicationContext.getPackageManager().getPackageInfo(packageName, 0);
        String strValueOf = Build.VERSION.SDK_INT >= 28 ? String.valueOf(packageInfo.getLongVersionCode()) : String.valueOf(packageInfo.versionCode);
        String applicationId = firebaseApp.getOptions().getApplicationId();
        applicationId.getClass();
        Build.MODEL.getClass();
        Build.VERSION.RELEASE.getClass();
        packageName.getClass();
        String str = packageInfo.versionName;
        String str2 = str == null ? strValueOf : str;
        Build.MANUFACTURER.getClass();
        Context applicationContext2 = firebaseApp.getApplicationContext();
        applicationContext2.getClass();
        k76 k76VarC = i6.c(applicationContext2);
        Context applicationContext3 = firebaseApp.getApplicationContext();
        applicationContext3.getClass();
        return new f10(applicationId, new jb(packageName, str2, strValueOf, k76VarC, i6.b(applicationContext3)));
    }
}
