package defpackage;

import android.os.Looper;
import android.os.UserManager;
import android.util.Log;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.jcraft.jsch.Argon2;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import okhttp3.OkHttpClient;
import okhttp3.internal._UtilJvmKt;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.tasks.TaskService;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class zk implements bt3 {
    public final /* synthetic */ int a;

    @Override // defpackage.bt3
    public final Object invoke() {
        switch (this.a) {
            case 0:
                gv7 gv7Var = mk7.a;
                return (b67.d() ? new ok7() : new nk7()).a();
            case 1:
                g00 g00Var = g00.a;
                if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
                    d6.o();
                    return null;
                }
                mp6 mp6Var = mp6.a;
                boolean z = g42.a;
                String str = (String) el1.U0(mp6Var.h(new String[]{String.format((String) g42.I.getValue(), Arrays.copyOf(new Object[]{"list", ""}, 2))}, ip6.SHIZUKU));
                if (str == null) {
                    return null;
                }
                List listX0 = nq7.x0(nq7.H0(nq7.z0(str, ":", "")).toString(), new String[]{TokenAuthenticationScheme.SCHEME_DELIMITER}, 6);
                ArrayList arrayList = new ArrayList();
                Iterator it = listX0.iterator();
                while (it.hasNext()) {
                    Integer numX = uq7.X((String) it.next());
                    if (numX != null) {
                        arrayList.add(numX);
                    }
                }
                return g00.s(el1.z1(arrayList));
            case 2:
                SwiftApp.Companion companion = SwiftApp.d;
                return Long.valueOf(((long) SwiftApp.Companion.c().getResources().getInteger(R.integer.activity_transition_time)) + 100);
            case 3:
                return new ix6();
            case 4:
                return new ex6();
            case 5:
                boolean z2 = g42.a;
                return g42.a("AQLa0ny/QKMXJ+ee5Uo/st7xcq6nA3iwYf/DhkdJfe4W08nyX/ZNsj3c");
            case 6:
                boolean z3 = g42.a;
                return g42.a("AQJkhhJ6/HaNMoaPDQYsj/w1Ffs/QTVHP4mrMwt14BBhUB/Hf2fCsn0X2+ux7GWF2kRvQq2KBu0AMgQ=");
            case 7:
                boolean z4 = g42.a;
                return g42.a("AQKZ2okLIW5RYujF1VEksuY890WY5RJHVtg9HMMv3zoWAotE9VoLTQHBosE=");
            case 8:
                UserManager userManager = (UserManager) f13.d().getSystemService(UserManager.class);
                return Boolean.valueOf((userManager == null || userManager.isSystemUser()) ? false : true);
            case XmlPullParser.COMMENT /* 9 */:
                List list = wa3.f;
                return Boolean.FALSE;
            case 10:
                hc3 hc3Var = jc3.q;
                return be8.a;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                Set set = x54.j;
                SwiftApp.Companion companion2 = SwiftApp.d;
                return new j54(SwiftApp.Companion.c());
            case 12:
                lr4 lr4Var = lr4.a;
                if (V.INSTANCE.getA()) {
                    Log.d("LabelRepo", "fetchFromCloud");
                    zc2 zc2Var = re3.a;
                    gv7 gv7Var2 = lr4.c;
                    re3.n((zc2) gv7Var2.getValue(), lr4.d);
                    kr4 kr4Var = new kr4();
                    lr4.d = kr4Var;
                    ((zc2) gv7Var2.getValue()).c(kr4Var);
                }
                return be8.a;
            case 13:
                d45.b.getClass();
                MFirebaseUser mFirebaseUserA = d45.a();
                if (mFirebaseUserA != null) {
                    return Boolean.valueOf(mFirebaseUserA.isAnonymous());
                }
                return null;
            case 14:
                return Boolean.valueOf(hs5.a("ro.build.version.oplusrom", "ro.build.version.opporom"));
            case 15:
                return Boolean.valueOf(qe7.b());
            case Argon2.V10 /* 16 */:
                SwiftApp.Companion companion3 = SwiftApp.d;
                return new ix6();
            case 17:
                OkHttpClient.Builder builder = new OkHttpClient.Builder();
                fa5 fa5Var = ga5.b;
                fa5Var.getClass();
                if (fa5Var != builder.l) {
                    builder.B = null;
                }
                builder.l = fa5Var;
                TimeUnit timeUnit = TimeUnit.SECONDS;
                builder.a(30L, timeUnit);
                builder.x = _UtilJvmKt.b(60L, timeUnit);
                builder.y = _UtilJvmKt.b(60L, timeUnit);
                return new OkHttpClient(builder);
            default:
                gz7 gz7Var = TaskService.b;
                return new ex6();
        }
    }

    public /* synthetic */ zk(int i) {
        this.a = i;
    }
}
