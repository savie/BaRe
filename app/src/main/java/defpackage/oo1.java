package defpackage;

import com.google.firebase.concurrent.ExecutorsRegistrar;
import java.util.Collections;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class oo1 implements ga6 {
    public final /* synthetic */ int a;

    public /* synthetic */ oo1(int i) {
        this.a = i;
    }

    @Override // defpackage.ga6
    public final Object get() {
        switch (this.a) {
            case 0:
                return Collections.EMPTY_SET;
            default:
                ps4 ps4Var = ExecutorsRegistrar.a;
                return new bh2(Executors.newCachedThreadPool(new l72("Firebase Blocking", 11, null)), (ScheduledExecutorService) ExecutorsRegistrar.d.get());
        }
    }
}
