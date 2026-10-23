package defpackage;

import android.content.SharedPreferences;
import com.google.firebase.FirebaseApp;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import java.util.List;
import java.util.Map;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lp6 extends ws7 implements qt3 {
    public final /* synthetic */ hp6 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lp6(hp6 hp6Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.a = hp6Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new lp6(this.a, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        lp6 lp6Var = (lp6) create((xx1) obj, (jv1) obj2);
        be8 be8Var = be8.a;
        lp6Var.invokeSuspend(be8Var);
        return be8Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        yn7 yn7Var;
        zn7 zn7VarD;
        boolean z;
        lg7.H(obj);
        if (this.a.a) {
            mp6 mp6Var = mp6.a;
            mp6.a.h(new String[]{"nsenter -t 1 -m sh"}, ip6.SU);
            vr6 vr6Var = vr6.INSTANCE;
            String str = mp6.b;
            vr6.i$default(vr6Var, str, "Elevated service: Initializing", null, 4, null);
            if (aq6.c() != null) {
                vr6.i$default(vr6Var, str, "Elevated service: Started!", null, 4, null);
                SharedPreferences.Editor editor = cz4.k;
                if (editor == null) {
                    pe4.F("editor");
                    throw null;
                }
                editor.putBoolean("use_saf", false).commit();
                bs4.b();
            } else {
                vr6.e$default(vr6Var, str, "Elevated service: Failed!", null, 4, null);
                SharedPreferences.Editor editor2 = cz4.k;
                if (editor2 == null) {
                    pe4.F("editor");
                    throw null;
                }
                editor2.putBoolean("use_saf", true).commit();
                bs4.b();
                if (bs4.c() && (z = (zn7VarD = (yn7Var = zn7.q).d()).b) && z && zn7VarD.m() && !zn7VarD.g()) {
                    yn7Var.h(null);
                    Const.E("Current storage requires SAF access, restarting...");
                }
            }
            String[] list = new jr7("/data/adb/modules/").list(null);
            if (list != null && list.length != 0) {
                vr6.i$default(vr6Var, str, u48.k(list.length, "Magisk modules on device (", "): ", x50.s0(63, null, list)), null, 4, null);
                boolean z2 = g42.a;
                mp6.k = x50.e0(list, g42.a("AQL5MUF310jr7yIxLBJgyFIoXbFgyUBzTizvUSWnBDz690YmCAnJOvYeDEeY+w4="));
            }
        }
        Map mapO = Const.o();
        SwiftApp.Companion companion = SwiftApp.d;
        List<FirebaseApp> apps = FirebaseApp.getApps(SwiftApp.Companion.c());
        apps.getClass();
        if (!apps.isEmpty()) {
            mp1 mp1Var = new mp1();
            for (Map.Entry entry : mapO.entrySet()) {
                mp1Var.a.put((String) entry.getKey(), (String) entry.getValue());
            }
            FirebaseCrashlytics.getInstance().setCustomKeys(new y62(mp1Var));
        }
        return be8.a;
    }
}
