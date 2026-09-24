package defpackage;

import android.content.ComponentName;
import android.os.Handler;
import android.os.Message;
import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dt9 implements Handler.Callback {
    public final /* synthetic */ tt9 a;

    public /* synthetic */ dt9(tt9 tt9Var) {
        this.a = tt9Var;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i = message.what;
        if (i == 0) {
            tt9 tt9Var = this.a;
            synchronized (tt9Var.a) {
                try {
                    ur9 ur9Var = (ur9) message.obj;
                    hs9 hs9Var = (hs9) tt9Var.a.get(ur9Var);
                    if (hs9Var != null && hs9Var.a.isEmpty()) {
                        if (hs9Var.c) {
                            ur9 ur9Var2 = hs9Var.e;
                            tt9 tt9Var2 = hs9Var.g;
                            tt9Var2.c.removeMessages(1, ur9Var2);
                            tt9Var2.d.a(tt9Var2.b, hs9Var);
                            hs9Var.c = false;
                            hs9Var.b = 2;
                        }
                        tt9Var.a.remove(ur9Var);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return true;
        }
        if (i != 1) {
            return false;
        }
        tt9 tt9Var3 = this.a;
        synchronized (tt9Var3.a) {
            try {
                ur9 ur9Var3 = (ur9) message.obj;
                hs9 hs9Var2 = (hs9) tt9Var3.a.get(ur9Var3);
                if (hs9Var2 != null && hs9Var2.b == 3) {
                    String strValueOf = String.valueOf(ur9Var3);
                    StringBuilder sb = new StringBuilder(strValueOf.length() + 47);
                    sb.append("Timeout waiting for ServiceConnection callback ");
                    sb.append(strValueOf);
                    Log.e("GmsClientSupervisor", sb.toString(), new Exception());
                    ComponentName componentName = hs9Var2.f;
                    if (componentName == null) {
                        componentName = ur9Var3.c;
                    }
                    if (componentName == null) {
                        String str = ur9Var3.b;
                        ly8.h(str);
                        componentName = new ComponentName(str, "unknown");
                    }
                    hs9Var2.onServiceDisconnected(componentName);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return true;
    }
}
