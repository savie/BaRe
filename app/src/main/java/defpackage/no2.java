package defpackage;

import android.os.Looper;
import java.io.Closeable;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class no2 implements Closeable {
    public final String a;
    public final q63 b;
    public final long c;
    public gz7 d;
    public final ke e;
    public mt3 f;
    public final j86 k;

    public no2(long j, q63 q63Var, String str) {
        str.getClass();
        q63Var.getClass();
        this.a = str;
        this.b = q63Var;
        this.c = j;
        this.d = gz7.WAITING;
        this.e = new ke(5);
        this.k = new j86();
    }

    public static void h(no2 no2Var, Long l) {
        mt3 mt3Var = no2Var.f;
        if (mt3Var != null && no2Var.k.a(no2Var.c, l)) {
            mt3Var.invoke(l);
        }
    }

    public abstract void a();

    public final ke b() {
        Boolean boolValueOf;
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
            return null;
        }
        try {
            d45.b.getClass();
            MFirebaseUser mFirebaseUserA = d45.a();
            boolValueOf = mFirebaseUserA != null ? Boolean.valueOf(mFirebaseUserA.isAnonymous()) : null;
        } catch (Exception unused) {
        }
        if (pe4.d(boolValueOf, Boolean.TRUE)) {
            l0.e("Check failed.");
            return null;
        }
        this.d = gz7.RUNNING;
        g();
        this.d = this.d.isCancelled() ? gz7.CANCEL_COMPLETE : gz7.COMPLETE;
        return this.e;
    }

    public abstract void g();
}
