package defpackage;

import android.util.Log;
import java.io.File;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class q80 implements Callable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ q80(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                return (String) obj;
            default:
                sy1 sy1Var = ((zy1) obj).h;
                sy1Var.getClass();
                s02.a();
                yf1 yf1Var = sy1Var.c;
                ca3 ca3Var = (ca3) yf1Var.c;
                String str = (String) yf1Var.b;
                ca3Var.getClass();
                boolean z = true;
                if (new File((File) ca3Var.c, str).exists()) {
                    if (Log.isLoggable("FirebaseCrashlytics", 2)) {
                        Log.v("FirebaseCrashlytics", "Found previous crash marker.", null);
                    }
                    ca3 ca3Var2 = (ca3) yf1Var.c;
                    ca3Var2.getClass();
                    new File((File) ca3Var2.c, str).delete();
                } else {
                    String strF = sy1Var.f();
                    if (strF == null || !sy1Var.j.hasCrashDataForSession(strF)) {
                        z = false;
                    }
                }
                return Boolean.valueOf(z);
        }
    }
}
