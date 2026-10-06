package defpackage;

import android.os.Message;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class em0 extends n29 {
    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i = message.what;
        if (i != 1) {
            if (i != 2) {
                Log.wtf("BasePendingResult", fz5.j(i, "Don't know how to handle message: "), new Exception());
                return;
            } else {
                ((BasePendingResult) message.obj).c(Status.n);
                return;
            }
        }
        Pair pair = (Pair) message.obj;
        if (pair.first != null) {
            e6.d();
            return;
        }
        try {
            throw null;
        } catch (RuntimeException e) {
            y16 y16Var = BasePendingResult.j;
            throw e;
        }
    }
}
