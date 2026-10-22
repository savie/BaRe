package defpackage;

import android.os.Looper;
import android.util.Log;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import okhttp3.OkHttpClient;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.home.schedule.ScheduleService;
import org.swiftapps.swiftbackup.jobs.AlarmReceiver;
import org.swiftapps.swiftbackup.manage.ManageSpaceActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class fl implements bt3 {
    public final /* synthetic */ int a;

    public /* synthetic */ fl(int i) {
        this.a = i;
    }

    @Override // defpackage.bt3
    public final Object invoke() throws NoSuchMethodException {
        int i = this.a;
        int i2 = 6;
        be8 be8Var = be8.a;
        boolean z = false;
        switch (i) {
            case 0:
                g00 g00Var = g00.a;
                if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
                    d6.o();
                    return null;
                }
                mp6 mp6Var = mp6.a;
                boolean z2 = g42.a;
                String str = (String) el1.U0(mp6Var.h(new String[]{String.format((String) g42.J.getValue(), Arrays.copyOf(new Object[]{"list", ""}, 2))}, ip6.SHIZUKU));
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
            case 1:
                ArrayList arrayList2 = new ArrayList();
                List<String> listA0 = fl1.A0("inapp", "subs");
                CountDownLatch countDownLatch = new CountDownLatch(listA0.size());
                for (String str2 : listA0) {
                    if (str2 == null) {
                        c6.f("Product type must be set");
                        return null;
                    }
                    dq0 dq0Var = wq0.g;
                    lq0 lq0Var = new lq0(str2, arrayList2, countDownLatch);
                    dq0Var.getClass();
                    if (dq0.f(new y99(dq0Var, lq0Var, str2), 30000L, new i8(dq0Var, lq0Var, i2, z), dq0Var.k(), dq0Var.e()) == null) {
                        yq0 yq0VarN = dq0Var.n();
                        dq0Var.y(25, 9, yq0VarN);
                        ga9 ga9Var = ma9.b;
                        lq0Var.b(yq0VarN, mb9.e);
                    }
                }
                if (!countDownLatch.await(10L, TimeUnit.SECONDS)) {
                    vr6.e$default(vr6.INSTANCE, "BillingManager", "queryPurchasesPlayCache: timed out waiting for Play callbacks", null, 4, null);
                }
                return el1.Q0(arrayList2);
            case 2:
                gs0.a.a();
                return be8Var;
            case 3:
                return dd1._init_$lambda$24();
            case 4:
                if (V.INSTANCE.getA()) {
                    Log.d("ConfigRepo", "fetchFromCloud");
                    zc2 zc2Var = re3.a;
                    zc2 zc2Var2 = br1.c;
                    re3.n(zc2Var2, br1.d);
                    ar1 ar1Var = new ar1();
                    br1.d = ar1Var;
                    zc2Var2.c(ar1Var);
                }
                return be8Var;
            case 5:
                boolean z3 = g42.a;
                return g42.a("AQJWE7Fr/D8u7v7tbUpymwR3MOg0BlikgOXUnmj1KWobVQGfO55sb7+GWpuT9Oc7YQ==");
            case 6:
                boolean z4 = g42.a;
                return g42.a("AQJAYwQ/l7DpAJ5+3ZBI5NWdIdGnzyy+v+6smqkGYOgWoMYpWmFMeLZrHTmkuK/k5g==");
            case 7:
                boolean z5 = g42.a;
                return g42.a("AQJZt8TjHYVoTl3oQp1tSa0QMgr3TBBRcRM+dsyFg3kS65JP0Sd8GNQ7CtMn");
            case 8:
                return d45.b;
            case XmlPullParser.COMMENT /* 9 */:
                return new un4();
            case 10:
                int i3 = ManageSpaceActivity.O;
                return new t55();
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                String str3 = ScheduleService.p;
                SwiftApp.Companion companion = SwiftApp.d;
                if (ai8.i(SwiftApp.Companion.c()) && ai8.h()) {
                    z = true;
                }
                vr6.i$default(vr6.INSTANCE, "Const", "isInternetConnected (caller:" + str3 + ") - " + z, null, 4, null);
                return Boolean.valueOf(z);
            case 12:
                hq7 hq7Var = hq7.a;
                return new wv4(g76.a);
            case 13:
                Method declaredMethod = le7.class.getDeclaredMethod("newProcess", String[].class, String[].class, String.class);
                declaredMethod.setAccessible(true);
                return declaredMethod;
            case 14:
                SwiftApp.Companion companion2 = SwiftApp.d;
                return new AlarmReceiver();
            default:
                gt7 gt7Var = gt7.a;
                return new oa5(new ea5((OkHttpClient) gt7.c.getValue()));
        }
    }
}
