package defpackage;

import android.os.Build;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class b67 {
    public static final int a = Build.VERSION.SDK_INT;

    public static boolean a() {
        return Build.VERSION.SDK_INT >= 28;
    }

    public static boolean b() {
        return Build.VERSION.SDK_INT >= 29;
    }

    public static boolean c() {
        return Build.VERSION.SDK_INT >= 30;
    }

    public static boolean d() {
        return Build.VERSION.SDK_INT >= 31;
    }

    public static boolean e() {
        return Build.VERSION.SDK_INT >= 33;
    }

    public static boolean f() {
        int i = Build.VERSION.SDK_INT;
        if (i >= 35) {
            return true;
        }
        int i2 = bx0.a;
        if (i >= 35) {
            return true;
        }
        if (i < 34) {
            return false;
        }
        Build.VERSION.CODENAME.getClass();
        return bx0.a("VanillaIceCream");
    }
}
