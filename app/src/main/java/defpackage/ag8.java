package defpackage;

import android.os.Looper;
import java.io.FileNotFoundException;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;
import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class ag8 {
    public final rf8 a;
    public String b;
    public gz7 c;
    public final zf8 d;
    public final int e;
    public int f;
    public mt3 g;
    public final j86 h;

    public ag8(rf8 rf8Var) {
        rf8Var.getClass();
        this.a = rf8Var;
        this.c = gz7.WAITING;
        this.d = new zf8();
        this.e = 5;
        this.h = new j86();
    }

    public static void g(ag8 ag8Var, Long l) {
        mt3 mt3Var = ag8Var.g;
        if (mt3Var != null && ag8Var.h.a(ag8Var.a.a(), l)) {
            mt3Var.invoke(l);
        }
    }

    public final void a(Exception exc, boolean z) {
        vr6.e$default(vr6.INSTANCE, d(), "addUploadError", exc, null, 8, null);
        StringBuilder sb = new StringBuilder();
        SwiftApp.Companion companion = SwiftApp.d;
        if (!ai8.i(SwiftApp.Companion.c())) {
            sb.append("No internet connection\n");
        }
        String message = exc.getMessage();
        if (message == null) {
            message = "";
        }
        String string = nq7.H0(message).toString();
        if (string.length() == 0) {
            string = exc.toString();
        }
        sb.append(string);
        String string2 = sb.toString();
        zf8 zf8Var = this.d;
        zf8Var.b = string2;
        zf8Var.c = z;
    }

    public abstract void b();

    /* JADX WARN: Code duplicated, block: B:18:0x0077  */
    public final zf8 c() {
        Boolean boolValueOf;
        boolean z;
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
        this.c = gz7.RUNNING;
        rf8 rf8Var = this.a;
        boolean z2 = rf8Var.e;
        q63 q63Var = rf8Var.a;
        boolean z3 = true;
        if (!z2 || Const.z()) {
            z = false;
        } else {
            vr6 vr6Var = vr6.INSTANCE;
            vr6.e$default(vr6Var, d(), "Upload requires WiFi, but WiFi isn't available. Wait for it in case of network switch.", null, 4, null);
            if (Const.a()) {
                z = false;
            } else {
                vr6.e$default(vr6Var, d(), "Still no WiFi, skipping upload.", null, 4, null);
                SwiftApp.Companion companion = SwiftApp.d;
                a(new RuntimeException(SwiftApp.Companion.c().getString(R.string.cloud_upload_skipped_no_wifi_error)), false);
                z = true;
            }
        }
        if (q63Var.j()) {
            z3 = z;
        } else {
            a(new FileNotFoundException(xs1.i(q63Var, "File not found at ")), false);
        }
        if (!z3) {
            f();
        }
        this.c = this.c.isCancelled() ? gz7.CANCEL_COMPLETE : gz7.COMPLETE;
        return this.d;
    }

    public abstract String d();

    public final boolean e() {
        return this.c.isCancelled();
    }

    public abstract void f();

    public final boolean h(Long l) {
        String string;
        boolean zI;
        zd1 zd1Var = new zd1(1, Const.a, Const.class, "sleepTemporarily", "sleepTemporarily(J)V", 0, 5);
        rf8 rf8Var = this.a;
        boolean z = rf8Var.e;
        long j = 0;
        while (!this.c.isCancelled()) {
            if (z) {
                zI = Const.z();
            } else {
                SwiftApp.Companion companion = SwiftApp.d;
                zI = ai8.i(SwiftApp.Companion.c());
            }
            if (zI) {
                try {
                    Thread.sleep(l != null ? l.longValue() : 5000L);
                } catch (Exception unused) {
                }
                return !this.c.isCancelled();
            }
            if (j >= 300000) {
                break;
            }
            long jMin = Math.min(2000L, 300000 - j);
            zd1Var.invoke(Long.valueOf(jMin));
            j += jMin;
        }
        if (!this.c.isCancelled()) {
            if (rf8Var.e) {
                SwiftApp.Companion companion2 = SwiftApp.d;
                string = SwiftApp.Companion.c().getString(R.string.cloud_upload_skipped_no_wifi_error);
            } else {
                string = "No internet connection";
            }
            string.getClass();
            a(new RuntimeException(string), false);
        }
        return false;
    }
}
