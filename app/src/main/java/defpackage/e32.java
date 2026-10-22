package defpackage;

import android.credentials.ClearCredentialStateException;
import android.os.OutcomeReceiver;
import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class e32 implements OutcomeReceiver {
    public final /* synthetic */ z28 a;

    public e32(z28 z28Var) {
        this.a = z28Var;
    }

    public final void onError(Throwable th) {
        ((ClearCredentialStateException) th).getClass();
        Log.i("CredManProvService", "ClearCredentialStateException error returned from framework");
        this.a.onError(new h91(null));
    }

    public final void onResult(Object obj) {
        Log.i("CredManProvService", "Clear result returned from framework: ");
        this.a.onResult((Void) obj);
    }
}
