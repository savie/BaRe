package defpackage;

import android.os.StrictMode;
import com.google.firebase.concurrent.ExecutorsRegistrar;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class tz2 implements ga6 {
    @Override // defpackage.ga6
    public final Object get() {
        ps4 ps4Var = ExecutorsRegistrar.a;
        return new bh2(Executors.newFixedThreadPool(Math.max(2, Runtime.getRuntime().availableProcessors()), new l72("Firebase Lite", 0, new StrictMode.ThreadPolicy.Builder().detectAll().penaltyLog().build())), (ScheduledExecutorService) ExecutorsRegistrar.d.get());
    }
}
