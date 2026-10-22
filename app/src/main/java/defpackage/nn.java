package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class nn {
    public static final mn a = new mn(new sl2(1));
    public static final int b = -100;
    public static h05 c = null;
    public static h05 d = null;
    public static Boolean e = null;
    public static boolean f = false;
    public static final p50 k = new p50(0);
    public static final Object n = new Object();
    public static final Object p = new Object();

    public static boolean c(Context context) {
        if (e == null) {
            try {
                int i = vt.a;
                Bundle bundle = context.getPackageManager().getServiceInfo(new ComponentName(context, (Class<?>) vt.class), ut.a() | 128).metaData;
                if (bundle != null) {
                    e = Boolean.valueOf(bundle.getBoolean("autoStoreLocales"));
                }
            } catch (PackageManager.NameNotFoundException unused) {
                Log.d("AppCompatDelegate", "Checking for metadata for AppLocalesMetadataHolderService : Service not found");
                e = Boolean.FALSE;
            }
        }
        return e.booleanValue();
    }

    public static void g(fo foVar) {
        synchronized (n) {
            try {
                p50 p50Var = k;
                p50Var.getClass();
                o50 o50Var = new o50(p50Var);
                while (o50Var.hasNext()) {
                    nn nnVar = (nn) ((WeakReference) o50Var.next()).get();
                    if (nnVar == foVar || nnVar == null) {
                        o50Var.remove();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public abstract void a();

    public abstract void b();

    public abstract void d();

    public abstract void f();

    public abstract boolean h(int i);

    public abstract void i(int i);

    public abstract void j(View view);

    public abstract void k(View view, ViewGroup.LayoutParams layoutParams);

    public abstract void l(CharSequence charSequence);
}
