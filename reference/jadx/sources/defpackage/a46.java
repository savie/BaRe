package defpackage;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.preference.PreferenceScreen;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class a46 extends Handler {
    public final /* synthetic */ c46 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a46(c46 c46Var, Looper looper) {
        super(looper);
        this.a = c46Var;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        if (message.what != 1) {
            return;
        }
        c46 c46Var = this.a;
        PreferenceScreen preferenceScreen = c46Var.b.g;
        if (preferenceScreen != null) {
            c46Var.c.setAdapter(c46Var.k(preferenceScreen));
            preferenceScreen.j();
        }
    }
}
