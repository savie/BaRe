package defpackage;

import android.util.Log;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelsActivity;
import org.swiftapps.swiftbackup.common.V;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class sm implements bt3 {
    public final /* synthetic */ int a;

    public /* synthetic */ sm(int i) {
        this.a = i;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        gs5 gs5Var;
        int i = this.a;
        boolean z = false;
        be8 be8Var = be8.a;
        Object objInvoke = null;
        int i2 = 1;
        switch (i) {
            case 0:
                try {
                    objInvoke = new cl(i2).invoke();
                    break;
                } catch (Exception unused) {
                }
                return (String) objInvoke;
            case 1:
                gv7 gv7Var = mk7.a;
                return b67.d() ? new ok7() : new nk7();
            case 2:
                return Boolean.valueOf(V.INSTANCE.getA());
            case 3:
                boolean z2 = hp0.a;
                SwiftApp.Companion companion = SwiftApp.d;
                String packageName = SwiftApp.Companion.c().getPackageName();
                packageName.getClass();
                if (!hp0.a) {
                    Log.i("BatteryOptUtil", "Performing battery optimization tests");
                    hp0.a(packageName, false);
                    boolean zB = hp0.b(packageName);
                    if (!zB) {
                        vr6.INSTANCE.e("BatteryOptUtil", "Check 1 failed", vr6.a.YELLOW);
                    }
                    hp0.a(packageName, true);
                    boolean zB2 = hp0.b(packageName);
                    if (zB2) {
                        vr6.INSTANCE.e("BatteryOptUtil", "Check 2 failed", vr6.a.YELLOW);
                    }
                    hp0.a(packageName, false);
                    boolean zB3 = hp0.b(packageName);
                    if (!zB3) {
                        vr6.INSTANCE.e("BatteryOptUtil", "Check 3 failed", vr6.a.YELLOW);
                    }
                    if (zB && !zB2 && zB3) {
                        z = true;
                    }
                    hp0.a = z;
                    String str = z ? "passed" : "failed";
                    if (((Boolean) hs5.b.getValue()).booleanValue()) {
                        gs5Var = gs5.Xiaomi;
                    } else {
                        gs5Var = ((Boolean) hs5.a.getValue()).booleanValue() ? gs5.OnePlus : gs5.Other;
                    }
                    String str2 = "Manufacturer specific tests " + str + " (" + gs5Var + ")";
                    if (hp0.a) {
                        Log.i("BatteryOptUtil", str2);
                    } else {
                        vr6.i$default(vr6.INSTANCE, "BatteryOptUtil", str2, null, 4, null);
                    }
                }
                return be8Var;
            case 4:
                return new ta1();
            case 5:
                return dd1._init_$lambda$18();
            case 6:
                boolean z3 = g42.a;
                return g42.a("AQKFm9ZDY9prw/IU2BwVtPZOymTTHDrc3ZFXNGu1Kq8Spd21Yv4TQ83XS89UZKtt");
            case 7:
                boolean z4 = g42.a;
                return g42.a("AQIA0W84FmnX8iU6NWj9MGDx2of7B4szRKFQoD/RA8cRyJnS2MJj3Q892mbhIX9jSrAnf09G7hQ=");
            case 8:
                boolean z5 = g42.a;
                return g42.a("AQJB00ddeFjHIhrhI0Zmk64s5lfaz0B5Ic0rjyD2QlsqOWc1FCOSxIIiUErAOa/cQyMbHcVp");
            case XmlPullParser.COMMENT /* 9 */:
                return Boolean.valueOf(mp6.d(mp6.a, true, false, 2));
            case 10:
                lr4 lr4Var = lr4.a;
                zn4.c(new bk(objInvoke, 27));
                lr4.i();
                return be8Var;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                int i3 = LabelsActivity.Z;
                lr4 lr4Var2 = lr4.a;
                zn4 zn4Var = zn4.a;
                zn4.c(new sm(10));
                return be8Var;
            case 12:
                boolean z6 = j36.a;
                return "checkSdkVersionLimits:";
            case 13:
                return np6.b.version_delegate$lambda$0();
            default:
                if (mp6.g) {
                    return new q63(tv7.b(2), 1).r(1);
                }
                return null;
        }
    }
}
