package defpackage;

import android.os.Looper;
import android.util.Log;
import java.util.Collection;
import org.swiftapps.swiftbackup.appconfigs.data.Config;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigsData;
import org.swiftapps.swiftbackup.common.V;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class br1 {
    public static boolean b;
    public static ar1 d;
    public static ConfigsData e;
    public static final br1 a = new br1();
    public static final zc2 c = re3.k().d("configs");
    public static final gv7 f = new gv7(new cl(6));
    public static final gv7 g = new gv7(new dl(7));

    public static boolean c(Config config) {
        ConfigsData configsData;
        Collection<Config> values;
        if (!config.isNameValid() || (configsData = e) == null || (values = configsData.getValues()) == null || values.isEmpty()) {
            return false;
        }
        for (Config config2 : values) {
            if (!pe4.d(config2.getId(), config.getId()) && uq7.P(config.getName(), config2.getName(), true)) {
                return true;
            }
        }
        return false;
    }

    public final synchronized void a() {
        if (V.INSTANCE.getA()) {
            if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
                throw new IllegalThreadStateException("Method called from main thread");
            }
            try {
                gv7 gv7Var = g;
                if (((q63) gv7Var.getValue()).j()) {
                    gv7 gv7Var2 = w14.a;
                    d((ConfigsData) w14.b((q63) gv7Var.getValue(), ConfigsData.class, true));
                }
            } catch (Exception e2) {
                vr6.e$default(vr6.INSTANCE, "ConfigRepo", io4.b(e2), null, 4, null);
            }
        }
    }

    public final boolean b() {
        Log.d("ConfigRepo", "Fetching on demand");
        ai8.b();
        if (!ai8.h()) {
            a();
            return true;
        }
        l73 l73VarA = cf3.a(c, true);
        if (l73VarA instanceof xe3) {
            d((ConfigsData) ((xe3) l73VarA).n.c(ConfigsData.class));
            return true;
        }
        if (!(l73VarA instanceof we3)) {
            q.j();
            return false;
        }
        vr6 vr6Var = vr6.INSTANCE;
        String str = ((we3) l73VarA).n.b;
        str.getClass();
        vr6.e$default(vr6Var, "ConfigRepo", str, null, 4, null);
        return false;
    }

    public final synchronized void d(ConfigsData configsData) {
        e = configsData;
        ((ex6) f.getValue()).k(configsData);
    }
}
