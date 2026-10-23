package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import org.json.JSONException;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class gv4 extends gs4 implements mt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ gv4(int i, Object obj, Object obj2) {
        super(1);
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) throws JSONException {
        be8 be8Var;
        int i = this.a;
        Object obj2 = this.c;
        Object obj3 = this.b;
        be8 be8Var2 = be8.a;
        switch (i) {
            case 0:
                Configuration configuration = (Configuration) obj;
                configuration.getClass();
                hv4 hv4Var = (hv4) obj3;
                SwiftApp swiftApp = (SwiftApp) obj2;
                Locale locale = configuration.getLocales().get(0);
                locale.getClass();
                hv4Var.a = locale;
                c00 c00Var = hv4Var.b;
                if (!((SharedPreferences) c00Var.b).getBoolean("follow_system_locale_key", false)) {
                    Locale localeH = c00Var.h();
                    localeH.getClass();
                    ge.C(swiftApp, localeH);
                    Context applicationContext = swiftApp.getApplicationContext();
                    if (applicationContext != swiftApp) {
                        applicationContext.getClass();
                        ge.C(applicationContext, localeH);
                    }
                } else {
                    hv4Var.a(swiftApp, hv4Var.a);
                }
                break;
            default:
                Throwable th = (Throwable) obj;
                ((ec2) obj3).invoke(th);
                uw0 uw0Var = (uw0) ((kc) obj2).d;
                uw0Var.g(th, false);
                do {
                    Object objE = uw0Var.E();
                    be8Var = null;
                    if (objE instanceof r41) {
                        objE = null;
                    }
                    if (objE != null) {
                        ((fd5) objE).b.Y(th == null ? new CancellationException("DataStore scope was cancelled before updateData could complete") : th);
                        be8Var = be8Var2;
                    }
                } while (be8Var != null);
                break;
        }
        return be8Var2;
    }
}
