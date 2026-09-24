package defpackage;

import android.content.Intent;
import android.util.Log;
import com.google.android.gms.auth.UserRecoverableAuthException;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.cloud.model.CloudResult;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class tb1 {
    public static tb1 a;
    public static final gj5 b = new gj5();
    public static final gj5 c;
    public static final gj5 d;
    public static final ix6 e;
    public static boolean f;

    static {
        gj5 gj5Var = new gj5();
        gj5Var.k(rb1.LOADING);
        c = gj5Var;
        d = new gj5();
        e = new ix6();
    }

    /* JADX WARN: Code duplicated, block: B:51:0x00e0 A[Catch: all -> 0x002e, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0016, B:12:0x0033, B:14:0x0037, B:15:0x003e, B:17:0x004c, B:18:0x0058, B:20:0x0061, B:67:0x013f, B:21:0x007a, B:23:0x0082, B:24:0x008b, B:26:0x008f, B:28:0x0096, B:30:0x00a0, B:33:0x00a6, B:35:0x00ac, B:56:0x00ef, B:41:0x00ba, B:42:0x00c0, B:43:0x00c6, B:45:0x00cd, B:49:0x00d7, B:51:0x00e0, B:54:0x00e6, B:57:0x00f8, B:58:0x0100, B:60:0x0108, B:61:0x0110, B:63:0x0114, B:64:0x011c, B:66:0x0120, B:70:0x0143, B:71:0x0148), top: B:74:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:52:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:54:0x00e6 A[Catch: all -> 0x002e, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0016, B:12:0x0033, B:14:0x0037, B:15:0x003e, B:17:0x004c, B:18:0x0058, B:20:0x0061, B:67:0x013f, B:21:0x007a, B:23:0x0082, B:24:0x008b, B:26:0x008f, B:28:0x0096, B:30:0x00a0, B:33:0x00a6, B:35:0x00ac, B:56:0x00ef, B:41:0x00ba, B:42:0x00c0, B:43:0x00c6, B:45:0x00cd, B:49:0x00d7, B:51:0x00e0, B:54:0x00e6, B:57:0x00f8, B:58:0x0100, B:60:0x0108, B:61:0x0110, B:63:0x0114, B:64:0x011c, B:66:0x0120, B:70:0x0143, B:71:0x0148), top: B:74:0x0003 }] */
    public final synchronized CloudResult a(boolean z) {
        Exception exc;
        t04 t04Var;
        Intent intent;
        ai8.b();
        Log.d(h(), "checkAccessSync()");
        if (!qb1.d()) {
            c.i(rb1.DRIVE_NOT_CONNECTED);
            qb1.a();
            return new oi1(new Exception("authorizationComplete=false"), false);
        }
        f = true;
        if (z) {
            c.i(rb1.LOADING);
        }
        CloudResult cloudResultN = qb1.c().n();
        if (qb1.l() == null) {
            cloudResultN = new oi1(new Exception("Saved cloud type is null"), false);
        }
        b.i(cloudResultN);
        if (cloudResultN instanceof si1) {
            c.i(rb1.DRIVE_CONNECTED);
            d.i(fo7.Companion.create(((si1) cloudResultN).a));
        } else if (pe4.d(cloudResultN, qi1.a)) {
            c.i(rb1.NETWORK_ERROR);
        } else if (cloudResultN instanceof oi1) {
            if (((oi1) cloudResultN).b) {
                Exception exc2 = ((oi1) cloudResultN).a;
                Intent intent2 = null;
                UserRecoverableAuthException userRecoverableAuthException = exc2 instanceof UserRecoverableAuthException ? (UserRecoverableAuthException) exc2 : null;
                if (userRecoverableAuthException == null) {
                    exc = ((oi1) cloudResultN).a;
                    if (exc instanceof t04) {
                        t04Var = (t04) exc;
                    } else {
                        t04Var = null;
                    }
                    if (t04Var != null) {
                        intent2 = new Intent(t04Var.a);
                    }
                } else {
                    Intent intent3 = userRecoverableAuthException.a;
                    if (intent3 == null) {
                        int iA = dj7.A(userRecoverableAuthException.b);
                        if (iA == 0) {
                            Log.w("Auth", "Make sure that an intent was provided to class instantiation.");
                        } else if (iA == 1) {
                            Log.e("Auth", "This shouldn't happen. Gms API throwing this exception should support the recovery Intent.");
                        } else if (iA == 2) {
                            Log.e("Auth", "this instantiation of UserRecoverableAuthException doesn't support an Intent.");
                        }
                        intent = null;
                    } else {
                        intent = new Intent(intent3);
                    }
                    if (intent == null) {
                        exc = ((oi1) cloudResultN).a;
                        if (exc instanceof t04) {
                            t04Var = (t04) exc;
                        } else {
                            t04Var = null;
                        }
                        if (t04Var != null) {
                            intent2 = new Intent(t04Var.a);
                        }
                    } else {
                        intent2 = intent;
                    }
                }
                if (intent2 != null) {
                    SwiftApp.Companion companion = SwiftApp.d;
                    ai8.p(SwiftApp.Companion.c(), intent2);
                }
            }
            c.i(rb1.DRIVE_NOT_CONNECTED);
        } else if (pe4.d(cloudResultN, pi1.a)) {
            c.i(rb1.DRIVE_NOT_CONNECTED);
        } else if (cloudResultN instanceof ti1) {
            c.i(rb1.TEMP_CONNECTION_ERROR);
        } else {
            if (!(cloudResultN instanceof ri1)) {
                throw new mn5();
            }
            vr6.e$default(vr6.INSTANCE, h(), "checkAccessSync: " + cloudResultN, null, 4, null);
            c.i(rb1.DRIVE_NOT_CONNECTED);
        }
        f = false;
        return cloudResultN;
    }

    public abstract xh2 b(zv1 zv1Var);

    public abstract no2 c(fo2 fo2Var);

    public abstract ag8 d(rf8 rf8Var);

    public abstract boolean e(String str);

    public abstract ui1 f();

    public abstract dd1 g();

    public abstract String h();

    public final String i() {
        return g().getMainCloudFolderName();
    }

    public abstract ui1 j();

    public abstract ui1 k();

    public abstract ui1 l();

    public abstract jm1 m();

    public abstract CloudResult n();
}
