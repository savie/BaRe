package okhttp3.internal.publicsuffix;

import defpackage.hy0;
import defpackage.ij7;
import defpackage.pe4;
import defpackage.rs9;
import defpackage.tf6;
import java.io.IOException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class BasePublicSuffixList implements PublicSuffixList {
    public final AtomicBoolean a = new AtomicBoolean(false);
    public final CountDownLatch b = new CountDownLatch(1);
    public hy0 c;
    public hy0 d;
    public IOException e;

    public final hy0 a() {
        hy0 hy0Var = this.c;
        if (hy0Var != null) {
            return hy0Var;
        }
        pe4.F("bytes");
        throw null;
    }

    public abstract ij7 b();

    public final void c() {
        try {
            ij7 ij7VarB = b();
            ij7VarB.getClass();
            tf6 tf6Var = new tf6(ij7VarB);
            try {
                hy0 hy0VarO = tf6Var.o(tf6Var.readInt());
                hy0 hy0VarO2 = tf6Var.o(tf6Var.readInt());
                tf6Var.close();
                synchronized (this) {
                    hy0VarO.getClass();
                    this.c = hy0VarO;
                    hy0VarO2.getClass();
                    this.d = hy0VarO2;
                }
                this.b.countDown();
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    rs9.c(tf6Var, th);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            this.b.countDown();
            throw th3;
        }
    }
}
