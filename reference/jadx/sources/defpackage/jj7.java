package defpackage;

import android.os.SystemClock;
import android.util.Log;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jj7 implements ta2, sa2 {
    public final qd2 a;
    public final td2 b;
    public volatile int c;
    public volatile ha2 d;
    public volatile Object e;
    public volatile bh5 f;
    public volatile ia2 k;

    public jj7(qd2 qd2Var, td2 td2Var) {
        this.a = qd2Var;
        this.b = td2Var;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0020  */
    @Override // defpackage.ta2
    public final boolean a() {
        boolean z;
        if (this.e == null) {
            if (this.d != null) {
            }
            this.d = null;
            this.f = null;
            z = false;
            while (!z) {
                ArrayList arrayListB = this.a.b();
                int i = this.c;
                this.c = i + 1;
                this.f = (bh5) arrayListB.get(i);
                if (this.f == null) {
                }
            }
            return z;
        }
        Object obj = this.e;
        this.e = null;
        try {
            if (d(obj)) {
                if (this.d != null || !this.d.a()) {
                    this.d = null;
                    this.f = null;
                    z = false;
                    while (!z && this.c < this.a.b().size()) {
                        ArrayList arrayListB2 = this.a.b();
                        int i2 = this.c;
                        this.c = i2 + 1;
                        this.f = (bh5) arrayListB2.get(i2);
                        if (this.f == null && (this.a.p.c(this.f.c.e()) || this.a.c(this.f.c.a()) != null)) {
                            this.f.c.d(this.a.o, new oe(this, this.f, 15, false));
                            z = true;
                        }
                    }
                    return z;
                }
            }
        } catch (IOException e) {
            if (Log.isLoggable("SourceGenerator", 3)) {
                Log.d("SourceGenerator", "Failed to properly rewind or write data to cache", e);
            }
        }
        return true;
    }

    @Override // defpackage.sa2
    public final void b(jo4 jo4Var, Object obj, ra2 ra2Var, int i, jo4 jo4Var2) {
        this.b.b(jo4Var, obj, ra2Var, this.f.c.e(), jo4Var);
    }

    @Override // defpackage.sa2
    public final void c(jo4 jo4Var, Exception exc, ra2 ra2Var, int i) {
        this.b.c(jo4Var, exc, ra2Var, this.f.c.e());
    }

    @Override // defpackage.ta2
    public final void cancel() {
        bh5 bh5Var = this.f;
        if (bh5Var != null) {
            bh5Var.c.cancel();
        }
    }

    public final boolean d(Object obj) throws Throwable {
        Throwable th;
        int i = g15.b;
        long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        boolean z = false;
        try {
            za2 za2VarG = this.a.c.a().g(obj);
            Object objL = za2VarG.l();
            zv2 zv2VarD = this.a.d(objL);
            u94 u94Var = new u94(zv2VarD, objL, this.a.i);
            jo4 jo4Var = this.f.a;
            qd2 qd2Var = this.a;
            ia2 ia2Var = new ia2(jo4Var, qd2Var.n);
            gm2 gm2VarA = qd2Var.h.a();
            gm2VarA.g(ia2Var, u94Var);
            if (Log.isLoggable("SourceGenerator", 2)) {
                Log.v("SourceGenerator", "Finished encoding source to cache, key: " + ia2Var + ", data: " + obj + ", encoder: " + zv2VarD + ", duration: " + g15.a(jElapsedRealtimeNanos));
            }
            if (gm2VarA.e(ia2Var) != null) {
                this.k = ia2Var;
                this.d = new ha2(Collections.singletonList(this.f.a), this.a, this);
                this.f.c.c();
                return true;
            }
            if (Log.isLoggable("SourceGenerator", 3)) {
                Log.d("SourceGenerator", "Attempt to write: " + this.k + ", data: " + obj + " to the disk cache failed, maybe the disk cache is disabled? Trying to decode the data directly...");
            }
            try {
                this.b.b(this.f.a, za2VarG.l(), this.f.c, this.f.c.e(), this.f.a);
                return false;
            } catch (Throwable th2) {
                th = th2;
                z = true;
                if (z) {
                    throw th;
                }
                this.f.c.c();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
