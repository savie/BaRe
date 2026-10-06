package defpackage;

import android.app.WallpaperManager;
import android.os.LocaleList;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import okhttp3.OkHttpClient;
import org.swiftapps.swiftbackup.SwiftApp;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class cl implements bt3 {
    public final /* synthetic */ int a;

    public /* synthetic */ cl(int i) {
        this.a = i;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        int i = this.a;
        be8 be8Var = be8.a;
        LinkedHashMap linkedHashMap = null;
        switch (i) {
            case 0:
                mp6 mp6Var = mp6.a;
                boolean z = g42.a;
                String str = (String) el1.U0(mp6Var.h(new String[]{String.format((String) g42.B.getValue(), Arrays.copyOf(new Object[]{"get"}, 1))}, ip6.SHIZUKU));
                if (str != null) {
                    List<String> listX0 = nq7.x0(str, new String[]{":"}, 6);
                    int iQ0 = x65.q0(hl1.G0(listX0, 10));
                    if (iQ0 < 16) {
                        iQ0 = 16;
                    }
                    linkedHashMap = new LinkedHashMap(iQ0);
                    for (String str2 : listX0) {
                        linkedHashMap.put(nq7.C0(str2, "/", str2), str2);
                    }
                }
                if (linkedHashMap != null && !linkedHashMap.isEmpty()) {
                    vr6.i$default(vr6.INSTANCE, "NotificationAccessMap", xs1.h(linkedHashMap.size(), "Map built with ", " entries"), null, 4, null);
                }
                return new yo5(linkedHashMap);
            case 1:
                h05 h05Var = h05.b;
                Locale localeB = h05.c(LocaleList.getDefault()).b(0);
                String string = localeB != null ? localeB.toString() : null;
                if (string == null || string.length() == 0) {
                    return null;
                }
                return string;
            case 2:
                return new OkHttpClient(new OkHttpClient.Builder());
            case 3:
                return x95.g;
            case 4:
                return dd1._init_$lambda$19();
            case 5:
                hj1 hj1Var = new hj1();
                SSLContext sSLContext = SSLContext.getInstance("TLS");
                sSLContext.init(null, new TrustManager[]{hj1Var}, new SecureRandom());
                return sSLContext.getSocketFactory();
            case 6:
                ex6 ex6Var = new ex6();
                ex6Var.k(null);
                return ex6Var;
            case 7:
                boolean z2 = g42.a;
                return g42.a("AQLcutN2uJ5eM3jlGksWZ2D2MtTnZREZVP+RR9B+KctoM5TPK+dcjLbwKQ/+GORskSfWcr4w4DK/Q6Z9CSu/aw==");
            case 8:
                boolean z3 = g42.a;
                return g42.a("AQK/pDOsS2Uv+p2YVLwGuRJ1iYbGVu6lHWypal3EcMDaMcWKVHKqYDuqG+tZSSvu5A==");
            case XmlPullParser.COMMENT /* 9 */:
                boolean z4 = g42.a;
                return g42.a("AQJEeFprzfp86uixed1rvjwWgQAL+fnpzO1OPs+YLJU6HMd10rM+F9ES78PJ");
            case 10:
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                return be8Var;
            case 12:
                return Boolean.valueOf(de7.a("opservice"));
            case 13:
                return re3.b().d("postDataRestoreActions");
            default:
                SwiftApp.Companion companion = SwiftApp.d;
                return WallpaperManager.getInstance(SwiftApp.Companion.c());
        }
    }

    public /* synthetic */ cl(Object obj, int i) {
        this.a = i;
    }
}
