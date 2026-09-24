package defpackage;

import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class la7 implements Callable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ la7(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                f80 f80Var = (f80) ((oe) obj).c;
                ig9 ig9Var = (ig9) f80Var.f;
                sa7 sa7Var = (sa7) f80Var.b;
                String str = ig9Var.b;
                s02.b();
                try {
                    HashMap mapB = ig9.b(sa7Var);
                    e41 e41Var = new e41(str, mapB);
                    e41Var.c("User-Agent", "Crashlytics Android SDK/20.0.6");
                    e41Var.c("X-CRASHLYTICS-DEVELOPER-TOKEN", "470fa2b4ae81cd56ecbcda9735803434cec591fa");
                    ig9.a(e41Var, sa7Var);
                    String strConcat = "Requesting settings from ".concat(str);
                    if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                        Log.d("FirebaseCrashlytics", strConcat, null);
                    }
                    String str2 = "Settings query params were: " + mapB;
                    if (Log.isLoggable("FirebaseCrashlytics", 2)) {
                        Log.v("FirebaseCrashlytics", str2, null);
                    }
                    return ig9Var.c(e41Var.b());
                } catch (IOException e) {
                    Log.e("FirebaseCrashlytics", "Settings request failed.", e);
                    return null;
                }
            default:
                return new FileOutputStream((File) obj);
        }
    }
}
