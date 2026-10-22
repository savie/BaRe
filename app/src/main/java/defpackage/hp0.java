package defpackage;

import android.os.Looper;
import android.os.PowerManager;
import com.bareapps.barebackup.BareApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class hp0 {
    public static boolean a;

    static {
        zn4 zn4Var = zn4.a;
        zn4.c(new sm(3));
    }

    public static void a(String str, boolean z) {
        str.getClass();
        mp6 mp6Var = mp6.a;
        if (mp6.f()) {
            if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
                d6.o();
            } else {
                mp6Var.h(new String[]{eq3.k("dumpsys deviceidle whitelist ", z ? "-" : "+", str)}, ip6.SHIZUKU);
            }
        }
    }

    public static boolean b(String str) {
        str.getClass();
        BareApp.Companion companion = BareApp.d;
        PowerManager powerManager = (PowerManager) BareApp.Companion.c().getSystemService(PowerManager.class);
        if (powerManager == null) {
            return false;
        }
        return powerManager.isIgnoringBatteryOptimizations(str);
    }
}
