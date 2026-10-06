package defpackage;

import android.os.Handler;
import android.os.Message;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class kx3 implements Handler.Callback {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ kx3(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        switch (this.a) {
            case 0:
                lx3 lx3Var = (lx3) this.b;
                int i = message.what;
                if (i == 1) {
                    lx3Var.b((jx3) message.obj);
                    return true;
                }
                if (i == 2) {
                    lx3Var.d.i((jx3) message.obj);
                }
                return false;
            default:
                if (message.what != 0) {
                    return false;
                }
                e38 e38Var = (e38) this.b;
                ri7 ri7Var = (ri7) message.obj;
                synchronized (e38Var.b) {
                    if (((ri7) e38Var.d) == ri7Var || ((ri7) e38Var.e) == ri7Var) {
                        e38Var.b(ri7Var, 2);
                    }
                    break;
                }
                return true;
        }
    }
}
