package defpackage;

import android.content.Intent;
import android.os.SystemClock;
import android.util.Log;
import com.jcraft.jsch.ChannelDirectTCPIP;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicMarkableReference;
import org.swiftapps.swiftbackup.model.firebase.AppSettings;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class i41 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ i41(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.a;
        Map mapUnmodifiableMap = null;
        Object obj = this.b;
        switch (i) {
            case 0:
                ((ChannelDirectTCPIP) obj).run();
                return;
            case 1:
                do1 do1Var = (do1) obj;
                Runnable runnable = do1Var.b;
                if (runnable != null) {
                    runnable.run();
                    do1Var.b = null;
                    return;
                }
                return;
            case 2:
                ((t22) obj).onResult(null);
                return;
            case 3:
                try {
                    qp6.a((Intent) obj, aq6.e);
                    return;
                } catch (Throwable th) {
                    Object obj2 = aq6.c;
                    synchronized (obj2) {
                        aq6.b = false;
                        aq6.f = SystemClock.elapsedRealtime();
                        obj2.notifyAll();
                        Log.e("RootServiceManager", "Failed to bind elevated service", th);
                        return;
                    }
                }
            case 4:
                pa7 pa7Var = (pa7) obj;
                pa7Var.L = null;
                if (pa7Var.M) {
                    ha7.a.c(AppSettings.Companion.withSavedSettings());
                    pa7Var.M = false;
                }
                Log.d("SettingsFragment", "Theme setting toggled, posting ForcedConfigChange");
                ny2.b().e(new tq3());
                return;
            default:
                fh8 fh8Var = (fh8) obj;
                fh8Var.b.set(null);
                synchronized (fh8Var) {
                    if (fh8Var.a.isMarked()) {
                        bp4 bp4Var = (bp4) fh8Var.a.getReference();
                        synchronized (bp4Var) {
                            mapUnmodifiableMap = Collections.unmodifiableMap(new HashMap(bp4Var.a));
                        }
                        AtomicMarkableReference atomicMarkableReference = fh8Var.a;
                        atomicMarkableReference.set((bp4) atomicMarkableReference.getReference(), false);
                    }
                }
                if (mapUnmodifiableMap != null) {
                    i75 i75Var = fh8Var.d;
                    ((lf5) i75Var.a).h((String) i75Var.c, mapUnmodifiableMap, fh8Var.c);
                    return;
                }
                return;
        }
    }
}
