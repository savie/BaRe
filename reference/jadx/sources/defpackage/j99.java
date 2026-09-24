package defpackage;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class j99 extends jj9 {
    public final /* synthetic */ az3 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j99(az3 az3Var, Looper looper) {
        super(looper);
        this.a = az3Var;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        Boolean bool;
        t39 t39Var;
        az3 az3Var = this.a;
        int i = az3Var.v.get();
        int i2 = message.arg1;
        int i3 = message.what;
        if (i != i2) {
            if ((i3 == 2 || i3 == 1 || i3 == 7) && (t39Var = (t39) message.obj) != null) {
                synchronized (t39Var) {
                    t39Var.a = null;
                }
                az3 az3Var2 = t39Var.c;
                synchronized (az3Var2.k) {
                    az3Var2.k.remove(t39Var);
                }
                return;
            }
            return;
        }
        if ((i3 == 1 || i3 == 7 || i3 == 4 || i3 == 5) && !az3Var.c()) {
            t39 t39Var2 = (t39) message.obj;
            if (t39Var2 != null) {
                synchronized (t39Var2) {
                    t39Var2.a = null;
                }
                az3 az3Var3 = t39Var2.c;
                synchronized (az3Var3.k) {
                    az3Var3.k.remove(t39Var2);
                }
                return;
            }
            return;
        }
        int i4 = message.what;
        if (i4 == 4) {
            az3Var.s = new hs1(message.arg2, null, null);
            if (!az3Var.t && !TextUtils.isEmpty(az3Var.q()) && !TextUtils.isEmpty(null)) {
                try {
                    Class.forName(az3Var.q());
                    if (!az3Var.t) {
                        az3Var.v(3, null);
                        return;
                    }
                } catch (ClassNotFoundException unused) {
                }
            }
            hs1 hs1Var = az3Var.s;
            if (hs1Var == null) {
                hs1Var = new hs1(8, null, null);
            }
            az3Var.i.i(hs1Var);
            System.currentTimeMillis();
            return;
        }
        if (i4 == 5) {
            hs1 hs1Var2 = az3Var.s;
            if (hs1Var2 == null) {
                hs1Var2 = new hs1(8, null, null);
            }
            az3Var.i.i(hs1Var2);
            System.currentTimeMillis();
            return;
        }
        if (i4 == 3) {
            Object obj = message.obj;
            az3Var.i.i(new hs1(message.arg2, obj instanceof PendingIntent ? (PendingIntent) obj : null, null));
            System.currentTimeMillis();
            return;
        }
        if (i4 == 6) {
            az3Var.v(5, null);
            ke keVar = az3Var.n;
            if (keVar != null) {
                ((nz3) keVar.b).f(message.arg2);
            }
            System.currentTimeMillis();
            az3Var.u(5, 1, null);
            return;
        }
        if (i4 == 2 && !az3Var.isConnected()) {
            t39 t39Var3 = (t39) message.obj;
            if (t39Var3 != null) {
                synchronized (t39Var3) {
                    t39Var3.a = null;
                }
                az3 az3Var4 = t39Var3.c;
                synchronized (az3Var4.k) {
                    az3Var4.k.remove(t39Var3);
                }
                return;
            }
            return;
        }
        int i5 = message.what;
        if (i5 != 2 && i5 != 1 && i5 != 7) {
            StringBuilder sb = new StringBuilder(String.valueOf(i5).length() + 34);
            sb.append("Don't know how to handle message: ");
            sb.append(i5);
            Log.wtf("GmsClient", sb.toString(), new Exception());
            return;
        }
        t39 t39Var4 = (t39) message.obj;
        synchronized (t39Var4) {
            try {
                bool = t39Var4.a;
                if (t39Var4.b) {
                    String string = t39Var4.toString();
                    StringBuilder sb2 = new StringBuilder(string.length() + 47);
                    sb2.append("Callback proxy ");
                    sb2.append(string);
                    sb2.append(" being reused. This is not safe.");
                    Log.w("GmsClient", sb2.toString());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (bool != null) {
            az3 az3Var5 = t39Var4.f;
            int i6 = t39Var4.d;
            if (i6 != 0) {
                az3Var5.v(1, null);
                Bundle bundle = t39Var4.e;
                t39Var4.b(new hs1(i6, bundle != null ? (PendingIntent) bundle.getParcelable("pendingIntent") : null, null));
            } else if (!t39Var4.a()) {
                az3Var5.v(1, null);
                t39Var4.b(new hs1(8, null, null));
            }
        }
        synchronized (t39Var4) {
            t39Var4.b = true;
        }
        synchronized (t39Var4) {
            t39Var4.a = null;
        }
        az3 az3Var6 = t39Var4.c;
        synchronized (az3Var6.k) {
            az3Var6.k.remove(t39Var4);
        }
    }
}
