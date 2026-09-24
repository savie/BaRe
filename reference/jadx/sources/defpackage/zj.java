package defpackage;

import android.net.wifi.WifiManager;
import android.view.animation.PathInterpolator;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.jcraft.jsch.Argon2;
import java.io.File;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.Set;
import java.util.UUID;
import okhttp3.OkHttpClient;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.cloud.protocols.terabox.TeraBoxTokenCredentials;
import org.swiftapps.swiftbackup.home.search.HomeSearchActivity;
import org.swiftapps.swiftbackup.settings.MultipleBackupStrategy;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class zj implements bt3 {
    public final /* synthetic */ int a;

    @Override // defpackage.bt3
    public final Object invoke() throws NoSuchAlgorithmException {
        switch (this.a) {
            case 0:
                return new SimpleDateFormat("yyyyMMdd-HHmmss", Locale.getDefault());
            case 1:
                return zn7.q.d();
            case 2:
                return (e00) io4.j("AppUtil", "loadActivityManagerProcessStateConstants", true, new qm(2), 8);
            case 3:
                boolean z = g42.a;
                return g42.a("AQL90STfpdjwZmvdMa6A0V0sk9zJo8Bruwk8YqvYOmWgqI0/NzDL/9YZ6dUSQmlVslA0bVxeHJn+vyqjDumEWSMO9w==");
            case 4:
                boolean z2 = g42.a;
                return g42.a("AQJz0bbTq4rLCtXgLH++LlpmBYzIyDT/AkDtR5qzU+F0G6VCm1mv1nFZZzehCFqqcHf7vzZdSqpw7k6YoqdxwmfwPNq3NzRpyw4IijN/VA==");
            case 5:
                boolean z3 = g42.a;
                return g42.a("AQKnmGzBmO0rTMjj1UbyTN08HjNGLHpU6/4XwmIopuhwh2VunDW+GPyW3iMJh3PqSm/ZiHS976EwP0rmj5Y2LI0tfU2oPyKMO+3K89Km");
            case 6:
                KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA");
                keyPairGenerator.initialize(4096);
                KeyPair keyPairGenerateKeyPair = keyPairGenerator.generateKeyPair();
                keyPairGenerateKeyPair.getClass();
                return keyPairGenerateKeyPair;
            case 7:
                String string = UUID.randomUUID().toString();
                string.getClass();
                return string;
            case 8:
                PathInterpolator pathInterpolator = HomeSearchActivity.X;
                return new h54();
            case XmlPullParser.COMMENT /* 9 */:
                ix6 ix6Var = c64.l;
                return re3.k().d("isBlocked");
            case 10:
                return x95.g;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                return xg5.logTag_delegate$lambda$0();
            case 12:
                return MultipleBackupStrategy.defaultStrategy_delegate$lambda$0();
            case 13:
                dz5 dz5Var = dz5.a;
                return sz8.S((Set) dz5.c.getValue(), "android.permission.READ_CONTACTS");
            case 14:
                return new ix6();
            case 15:
                boolean z4 = g42.a;
                return g42.a("AQI+UbXNmLang25NUR5B3MdXRksgwAYEcSFFo6ICdtsZiBszQUNh5rw=");
            case Argon2.V10 /* 16 */:
                gv7 gv7Var = mk7.a;
                String str = System.getenv("ANDROID_DATA");
                return str != null ? new File(str) : new File("/data");
            case 17:
                gt7 gt7Var = gt7.a;
                gv7 gv7Var2 = gt7.c;
                return new jb5(new ea5((OkHttpClient) gv7Var2.getValue()), (OkHttpClient) gv7Var2.getValue());
            case 18:
                return new TeraBoxTokenCredentials(null, null, 0L, null, null, null, null, null, 255, null);
            default:
                SwiftApp.Companion companion = SwiftApp.d;
                Object systemService = SwiftApp.Companion.c().getApplicationContext().getSystemService("wifi");
                systemService.getClass();
                return (WifiManager) systemService;
        }
    }

    public /* synthetic */ zj(int i) {
        this.a = i;
    }
}
