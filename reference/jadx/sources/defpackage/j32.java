package defpackage;

import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ShortcutManager;
import android.graphics.Bitmap;
import android.text.TextUtils;
import androidx.core.graphics.drawable.IconCompat;
import androidx.credentials.playservices.controllers.identitycredentials.getdigitalcredential.CredentialProviderGetDigitalCredentialController;
import java.util.concurrent.Executor;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.detail.DetailActivity;
import org.swiftapps.swiftbackup.detail.ShortcutPinnedReceiver;
import org.swiftapps.swiftbackup.intro.IntroActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class j32 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ j32(int i, Object obj, Object obj2, Object obj3) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
        this.d = obj3;
    }

    @Override // defpackage.bt3
    public final Object invoke() throws Exception {
        int i = this.a;
        be8 be8Var = be8.a;
        Object obj = this.d;
        Object obj2 = this.c;
        Object obj3 = this.b;
        switch (i) {
            case 0:
                return CredentialProviderGetDigitalCredentialController.invokePlayServices$lambda$2$0((Executor) obj3, (t22) obj2, (wv3) obj);
            case 1:
                DetailActivity detailActivity = (DetailActivity) obj3;
                ji jiVar = (ji) obj2;
                Intent intent = new Intent(detailActivity, (Class<?>) IntroActivity.class).setAction("android.intent.action.MAIN").putExtra("detail_launched_from_shortcut", true).setPackage(jiVar.getPackageName());
                intent.getClass();
                String packageName = jiVar.getPackageName();
                xe7 xe7Var = new xe7();
                xe7Var.a = detailActivity;
                xe7Var.b = packageName;
                xe7Var.c = new Intent[]{intent};
                xe7Var.d = eq3.k("SB (", jiVar.getName(), ")");
                IconCompat iconCompat = new IconCompat(1);
                iconCompat.b = (Bitmap) obj;
                xe7Var.e = iconCompat;
                if (TextUtils.isEmpty(xe7Var.d)) {
                    c6.f("Shortcut must have a non-empty label");
                } else {
                    Intent[] intentArr = xe7Var.c;
                    if (intentArr != null && intentArr.length != 0) {
                        ShortcutPinnedReceiver shortcutPinnedReceiver = new ShortcutPinnedReceiver();
                        detailActivity.Z = shortcutPinnedReceiver;
                        Const.C(shortcutPinnedReceiver, new IntentFilter());
                        Intent intentPutExtra = new Intent(detailActivity.getApplicationContext(), (Class<?>) ShortcutPinnedReceiver.class).putExtra(ji.PARCEL_KEY, jiVar);
                        intentPutExtra.getClass();
                        ((ShortcutManager) detailActivity.getSystemService(ShortcutManager.class)).requestPinShortcut(xe7Var.a(), PendingIntent.getBroadcast(detailActivity.getApplicationContext(), 0, intentPutExtra, 67108864).getIntentSender());
                        return be8Var;
                    }
                    c6.f("Shortcut must have an intent");
                }
                return null;
            default:
                d23 d23Var = (d23) obj3;
                o23 o23Var = (o23) obj2;
                String str = (String) obj;
                try {
                    if (k55.x(d23Var.h(true))) {
                        return be8Var;
                    }
                    throw new IllegalStateException(("FTP transfer did not complete for " + str + ". Reply=" + d23Var.i()).toString());
                } catch (Exception e) {
                    o23Var.x(d23Var, "get: Discarding FTP client after incomplete transfer from " + str);
                    throw e;
                }
        }
    }
}
