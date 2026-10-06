package defpackage;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class t24 extends Handler {
    public final ix0 a;
    public final int b;
    public final ny2 c;
    public boolean d;

    public t24(ny2 ny2Var, Looper looper) {
        super(looper);
        this.c = ny2Var;
        this.b = 10;
        this.a = new ix0(4, false);
    }

    public final void a(wr7 wr7Var, Object obj) {
        wy5 wy5VarA = wy5.a(wr7Var, obj);
        synchronized (this) {
            try {
                this.a.b(wy5VarA);
                if (!this.d) {
                    this.d = true;
                    if (!sendMessage(obtainMessage())) {
                        throw new qy2("Could not send handler message");
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        try {
            long jUptimeMillis = SystemClock.uptimeMillis();
            do {
                wy5 wy5VarG = this.a.g();
                if (wy5VarG == null) {
                    synchronized (this) {
                        wy5VarG = this.a.g();
                        if (wy5VarG == null) {
                            this.d = false;
                            return;
                        }
                    }
                }
                this.c.c(wy5VarG);
            } while (SystemClock.uptimeMillis() - jUptimeMillis < this.b);
            if (!sendMessage(obtainMessage())) {
                throw new qy2("Could not send handler message");
            }
            this.d = true;
        } catch (Throwable th) {
            this.d = false;
            throw th;
        }
    }
}
