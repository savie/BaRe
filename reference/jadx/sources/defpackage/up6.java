package defpackage;

import android.content.ServiceConnection;
import android.util.Pair;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class up6 extends Pair {
    public final void a(ServiceConnection serviceConnection) {
        ((Executor) ((Pair) this).second).execute(new o12(6, this, serviceConnection));
    }
}
