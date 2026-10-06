package defpackage;

import com.google.firebase.concurrent.ExecutorsRegistrar;
import java.util.concurrent.Executors;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class uz2 implements ga6 {
    @Override // defpackage.ga6
    public final Object get() {
        ps4 ps4Var = ExecutorsRegistrar.a;
        return Executors.newSingleThreadScheduledExecutor(new l72("Firebase Scheduler", 0, null));
    }
}
