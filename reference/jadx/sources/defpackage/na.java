package defpackage;

import android.os.Message;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class na implements View.OnClickListener {
    public final /* synthetic */ ua a;

    public na(ua uaVar) {
        this.a = uaVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Message messageObtain;
        Message message;
        Message message2;
        Message message3;
        ua uaVar = this.a;
        if (view == uaVar.i && (message3 = uaVar.k) != null) {
            messageObtain = Message.obtain(message3);
        } else if (view != uaVar.l || (message2 = uaVar.n) == null) {
            messageObtain = (view != uaVar.o || (message = uaVar.q) == null) ? null : Message.obtain(message);
        } else {
            messageObtain = Message.obtain(message2);
        }
        if (messageObtain != null) {
            messageObtain.sendToTarget();
        }
        uaVar.F.obtainMessage(1, uaVar.b).sendToTarget();
    }
}
