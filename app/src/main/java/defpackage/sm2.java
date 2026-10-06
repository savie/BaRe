package defpackage;

import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sm2 implements gm2 {
    public final File b;
    public rm2 e;
    public final h80 d = new h80(6);
    public final long c = 262144000;
    public final ot9 a = new ot9(8);

    public sm2(File file) {
        this.b = file;
    }

    public final synchronized rm2 a() {
        try {
            if (this.e == null) {
                this.e = rm2.q(this.b, this.c);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.e;
    }

    @Override // defpackage.gm2
    public final File e(jo4 jo4Var) {
        String strD = this.a.d(jo4Var);
        if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
            Log.v("DiskLruCacheWrapper", "Get: Obtained: " + strD + " for for Key: " + jo4Var);
        }
        try {
            s79 s79VarM = a().m(strD);
            if (s79VarM != null) {
                return ((File[]) s79VarM.b)[0];
            }
            return null;
        } catch (IOException e) {
            if (!Log.isLoggable("DiskLruCacheWrapper", 5)) {
                return null;
            }
            Log.w("DiskLruCacheWrapper", "Unable to get from disk cache", e);
            return null;
        }
    }

    @Override // defpackage.gm2
    public final void g(jo4 jo4Var, u94 u94Var) {
        lm2 lm2Var;
        String strD = this.a.d(jo4Var);
        h80 h80Var = this.d;
        synchronized (h80Var) {
            lm2Var = (lm2) ((HashMap) h80Var.b).get(strD);
            if (lm2Var == null) {
                vk9 vk9Var = (vk9) h80Var.c;
                synchronized (((ArrayDeque) vk9Var.b)) {
                    lm2Var = (lm2) ((ArrayDeque) vk9Var.b).poll();
                }
                if (lm2Var == null) {
                    lm2Var = new lm2();
                }
                ((HashMap) h80Var.b).put(strD, lm2Var);
            }
            lm2Var.b++;
        }
        lm2Var.a.lock();
        try {
            if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
                Log.v("DiskLruCacheWrapper", "Put: Obtained: " + strD + " for for Key: " + jo4Var);
            }
            try {
                rm2 rm2VarA = a();
                if (rm2VarA.m(strD) == null) {
                    pm2 pm2VarH = rm2VarA.h(strD);
                    if (pm2VarH == null) {
                        throw new IllegalStateException("Had two simultaneous puts for: ".concat(strD));
                    }
                    try {
                        if (((zv2) u94Var.a).h(u94Var.b, pm2VarH.b(), (ou5) u94Var.c)) {
                            rm2.a(pm2VarH.d, pm2VarH, true);
                            pm2VarH.c = true;
                        }
                        if (!pm2VarH.c) {
                            try {
                                pm2VarH.a();
                            } catch (IOException unused) {
                            }
                        }
                    } catch (Throwable th) {
                        if (!pm2VarH.c) {
                            try {
                                pm2VarH.a();
                            } catch (IOException unused2) {
                            }
                        }
                        throw th;
                    }
                }
            } catch (IOException e) {
                if (Log.isLoggable("DiskLruCacheWrapper", 5)) {
                    Log.w("DiskLruCacheWrapper", "Unable to put to disk cache", e);
                }
            }
            this.d.i(strD);
        } catch (Throwable th2) {
            this.d.i(strD);
            throw th2;
        }
    }
}
