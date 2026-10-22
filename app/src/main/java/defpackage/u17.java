package defpackage;

import android.content.ComponentName;
import com.bareapps.rootservice.ShizukuAidlService;
import com.bareapps.barebackup.BareApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class u17 {
    public static volatile z84 a;
    public static volatile boolean b;
    public static final Object c = new Object();
    public static final t17 d = new t17();

    public static void a() {
        b = true;
        try {
            BareApp.Companion companion = BareApp.d;
            ke7 ke7Var = new ke7(new ComponentName(BareApp.Companion.c(), (Class<?>) ShizukuAidlService.class));
            ke7Var.d = "barebackup_sba";
            ke7Var.b = 620;
            ke7Var.c = "sba";
            le7.c(ke7Var);
        } catch (Throwable th) {
            b = false;
            c.notifyAll();
            vr6.e$default(vr6.INSTANCE, "SbaShizukuServiceManager", "Failed to bind Shizuku SBA service", th, null, 8, null);
        }
    }
}
