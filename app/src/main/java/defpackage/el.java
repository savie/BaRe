package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.jcraft.jsch.Argon2;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.cloud.connect.DropboxSignInActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class el implements bt3 {
    public final /* synthetic */ int a;

    public /* synthetic */ el(int i) {
        this.a = i;
    }

    @Override // defpackage.bt3
    public final Object invoke() throws IllegalAccessException, InvocationTargetException {
        String str;
        boolean z = false;
        LinkedHashMap linkedHashMap = null;
        Drawable drawable = null;
        switch (this.a) {
            case 0:
                mp6 mp6Var = mp6.a;
                boolean z2 = g42.a;
                String str2 = (String) el1.U0(mp6Var.h(new String[]{String.format((String) g42.C.getValue(), Arrays.copyOf(new Object[]{"get"}, 1))}, ip6.SHIZUKU));
                if (str2 != null) {
                    List<String> listX0 = nq7.x0(str2, new String[]{":"}, 6);
                    int iQ0 = x65.q0(hl1.G0(listX0, 10));
                    if (iQ0 < 16) {
                        iQ0 = 16;
                    }
                    linkedHashMap = new LinkedHashMap(iQ0);
                    for (String str3 : listX0) {
                        linkedHashMap.put(nq7.C0(str3, "/", str3), str3);
                    }
                }
                if (linkedHashMap != null && !linkedHashMap.isEmpty()) {
                    vr6.i$default(vr6.INSTANCE, "AccessibilityServicesMap", xs1.h(linkedHashMap.size(), "Map built with ", " entries"), null, 4, null);
                }
                return new o6(linkedHashMap);
            case 1:
                return new ex6();
            case 2:
                zu0 zu0Var = zu0.a;
                synchronized (zu0.c) {
                    str = zu0Var.g().a;
                }
                return str;
            case 3:
                return dd1._init_$lambda$22();
            case 4:
                return dd1._init_$lambda$6();
            case 5:
                return new vg1(new qg1(0, hy7.a, hy7.class, "hasActiveTask", "hasActiveTask$app()Z", 0, 0));
            case 6:
                gv7 gv7Var = sl1.e;
                return fl1.A0(new sl1(rl1.a(R.array.red_mtrl_palette)), new sl1(rl1.a(R.array.pink_mtrl_palette)), new sl1(rl1.a(R.array.purple_mtrl_palette)), new sl1(rl1.a(R.array.deep_purple_mtrl_palette)), new sl1(rl1.a(R.array.indigo_mtrl_palette)), (sl1) sl1.e.getValue(), new sl1(rl1.a(R.array.cyan_mtrl_palette)), new sl1(rl1.a(R.array.teal_mtrl_palette)), new sl1(rl1.a(R.array.green_mtrl_palette)), new sl1(rl1.a(R.array.lime_mtrl_palette)), new sl1(rl1.a(R.array.yellow_mtrl_palette)), new sl1(rl1.a(R.array.orange_mtrl_palette)), new sl1(rl1.a(R.array.brown_mtrl_palette)), new sl1(rl1.a(R.array.gray_mtrl_palette)), new sl1(rl1.a(R.array.blue_gray_mtrl_palette)));
            case 7:
                be8 be8Var = be8.a;
                br1.a.a();
                zn4 zn4Var = zn4.a;
                zn4.e(new fl(4));
                return be8Var;
            case 8:
                boolean z3 = g42.a;
                return g42.a("AQJw4u6kzZwTbsO3vAyfnytuQ6BIklqzt3ulI0x6SpZz5VcryIBUCxcaz1SgS/nfexesWxNO+IBPedMsOmKc4g==");
            case XmlPullParser.COMMENT /* 9 */:
                boolean z4 = g42.a;
                return g42.a("AQJ6urHq7+wHCUOWI8mx1N38frQBU0wLKaK3VEcFTqOxLm9/NCZcHTlhCoMnRA==");
            case 10:
                if (!mp6.k) {
                    SwiftApp.Companion companion = SwiftApp.d;
                    String packageName = SwiftApp.Companion.c().getPackageName();
                    packageName.getClass();
                    if (pe4.d(g42.b(packageName), Boolean.TRUE)) {
                        g00 g00Var = g00.a;
                        Iterator it = g00.m(true).iterator();
                        int i = 0;
                        int i2 = 0;
                        while (it.hasNext()) {
                            Boolean boolB = g42.b(((ji) it.next()).getPackageName());
                            if (boolB != null) {
                                if (boolB.booleanValue()) {
                                    i++;
                                } else {
                                    i2++;
                                }
                            }
                        }
                        boolean z5 = g42.a;
                        g42.c("numO1Large=" + i);
                        g42.c("numO2Large=" + i2);
                        if (i <= i2) {
                            zn4 zn4Var2 = zn4.a;
                            zn4.b(null, new f42(2, null));
                            z = true;
                        }
                    }
                }
                return Boolean.valueOf(z);
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                boolean z6 = g42.a;
                return g42.a("AQJXLdktuB1xR36cajUhxl854XLsqziB9Cjdhx6mzQ1L9mcOh24PCZ2Dnq0ESoU=");
            case 12:
                int i3 = DropboxSignInActivity.P;
                Map mapSingletonMap = Collections.singletonMap("token_access_type", "offline");
                mapSingletonMap.getClass();
                return new uj("https://www.dropbox.com/oauth2/authorize", "https://api.dropboxapi.com/oauth2/token", "mzc5bxvbe0960q1", "db-mzc5bxvbe0960q1://1/connect", null, mapSingletonMap, null, 208);
            case 13:
                List list = kb3.L;
                return be8.a;
            case 14:
                List listA = yn7.a();
                ArrayList arrayList = new ArrayList();
                for (Object obj : listA) {
                    if (!((zn7) obj).m()) {
                        arrayList.add(obj);
                    }
                }
                return arrayList;
            case 15:
                try {
                    Resources system = Resources.getSystem();
                    ThreadLocal threadLocal = fm6.a;
                    drawable = system.getDrawable(android.R.drawable.sym_def_app_icon, null);
                    break;
                } catch (Exception unused) {
                }
                if (drawable != null) {
                    return drawable;
                }
                SwiftApp.Companion companion2 = SwiftApp.d;
                Drawable drawable2 = SwiftApp.Companion.c().getDrawable(R.drawable.sym_def_app_icon);
                drawable2.getClass();
                return drawable2;
            case Argon2.V10 /* 16 */:
                return d45.b;
            case 17:
                List<String> listA0 = fl1.A0(Build.MANUFACTURER, Build.BRAND);
                if (!listA0.isEmpty()) {
                    for (String str4 : listA0) {
                        if (uq7.P(str4, "xiaomi", true) || uq7.P(str4, "redmi", true) || uq7.P(str4, "poco", true)) {
                            z = true;
                        }
                    }
                }
                return Boolean.valueOf(z);
            case 18:
                Object objInvoke = Class.forName("android.app.AppGlobals").getMethod("getInitialApplication", null).invoke(null, null);
                objInvoke.getClass();
                return (Context) objInvoke;
            default:
                gv7 gv7Var2 = qe7.a;
                return Boolean.valueOf(le7.f());
        }
    }
}
