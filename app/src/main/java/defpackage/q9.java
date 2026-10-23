package defpackage;

import android.app.NotificationManager;
import android.os.RemoteException;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.jcraft.jsch.Argon2;
import java.security.SecureRandom;
import java.util.concurrent.Executors;
import okhttp3.OkHttpClient;
import org.swiftapps.rootservice.ShellHelper;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.common.NotificationHelper;
import org.swiftapps.swiftbackup.common.V;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class q9 implements bt3 {
    public final /* synthetic */ int a;

    public /* synthetic */ q9(int i) {
        this.a = i;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        switch (this.a) {
            case 0:
                z4 z4Var = ve6.a;
                return Integer.valueOf(ve6.a.a().nextInt(2147418112) + 65536);
            case 1:
                return lk.w();
            case 2:
                zu0 zu0Var = zu0.a;
                return zu0.b();
            case 3:
                return dd1._init_$lambda$10();
            case 4:
                return new wg5.c();
            case 5:
                boolean z = g42.a;
                return g42.a("AQLqrYixWOfZlumvD0uDXSVQYtkaCkp0BHa7b2yDdzq4Y8dw4DIHCM70r7g/+nJozNGoAkSuRmu5B8HIUqMPpGM3ZrrVrtCp");
            case 6:
                boolean z2 = g42.a;
                return g42.a("AQJzaWbGiC0R5OaXtex36eYvzDMqABA0IygqfEmIE18EYDjKkp1HcESk0XgHwnul");
            case 7:
                boolean z3 = g42.a;
                return g42.a("AQLnHR+311m8gLaED5HL71mjWVEQmSHhejaA8TjPP/Ab4S1jbhwOGIFNLZ2vJ+SMi488LJlcQw==");
            case 8:
                byte[] bArr = new byte[12];
                new SecureRandom().nextBytes(bArr);
                return bArr;
            case XmlPullParser.COMMENT /* 9 */:
                return Executors.newSingleThreadExecutor();
            case 10:
                gv7 gv7Var = NotificationHelper.a;
                SwiftApp.Companion companion = SwiftApp.d;
                return (NotificationManager) SwiftApp.Companion.c().getSystemService(NotificationManager.class);
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                return b67.c() ? sz8.Y("android.permission.MANAGE_EXTERNAL_STORAGE") : x50.A0(new String[]{"android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE"});
            case 12:
                int uid = le7.c;
                if (uid == -1) {
                    try {
                        uid = ((f94) le7.h()).getUid();
                        le7.c = uid;
                    } catch (RemoteException e) {
                        y5.k(e);
                        return null;
                    } catch (SecurityException unused) {
                        uid = -1;
                    }
                    break;
                }
                if (uid == 2000) {
                    return new xr8(uid);
                }
                throw new if8(fz5.j(uid, "Unsupported Shizuku UID: "));
            case 13:
                g00 g00Var = g00.a;
                return Boolean.valueOf(g00.r().hasSystemFeature("android.hardware.telephony"));
            case 14:
                return new ix6();
            case 15:
                return ShellHelper.getShShell();
            case Argon2.V10 /* 16 */:
                gt7 gt7Var = gt7.a;
                return new sa5(new ea5((OkHttpClient) gt7.c.getValue()));
            default:
                return V.z_delegate$lambda$0();
        }
    }
}
