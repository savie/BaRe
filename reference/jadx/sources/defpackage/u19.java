package defpackage;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.nimbusds.jose.jwk.JWKParameterNames;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class u19 extends n29 {
    public final Context a;
    public final /* synthetic */ lz3 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u19(lz3 lz3Var, Context context) {
        super(Looper.myLooper() == null ? Looper.getMainLooper() : Looper.myLooper());
        this.b = lz3Var;
        this.a = context.getApplicationContext();
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i = message.what;
        if (i != 1) {
            Log.w("GoogleApiAvailability", "Don't know how to handle this message: " + i);
            return;
        }
        int i2 = mz3.a;
        lz3 lz3Var = this.b;
        Context context = this.a;
        int iC = lz3Var.c(context, i2);
        int i3 = u04.e;
        if (iC == 1 || iC == 2 || iC == 3 || iC == 9) {
            Intent intentA = lz3Var.a(iC, context, JWKParameterNames.RSA_MODULUS);
            lz3Var.g(context, iC, intentA == null ? null : PendingIntent.getActivity(context, 0, intentA, 201326592));
        }
    }
}
