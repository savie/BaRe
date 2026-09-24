package defpackage;

import android.os.Looper;
import java.io.IOException;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qy5 {
    public static void a(mt3 mt3Var) {
        if (!pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            l0.e("Async method called from background thread!");
            return;
        }
        zn4 zn4Var = zn4.a;
        zn4.b(null, new kc1(mt3Var, null, 2));
    }

    public static ry5 b(zn7 zn7Var) {
        zn7Var.getClass();
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
            return null;
        }
        ry5 ry5VarF = f(true, zn7Var);
        String[] strArr = {ry5VarF.d, ry5VarF.c, ry5VarF.e, ry5VarF.g, ry5VarF.h, ry5VarF.i, ry5VarF.j, ry5VarF.k, ry5VarF.l, ry5VarF.m, ry5VarF.n, ry5VarF.o, ry5VarF.p, ry5VarF.q, ry5VarF.r, ry5VarF.s, ry5VarF.t};
        for (int i = 0; i < 17; i++) {
            String str = strArr[i];
            if (str != null && !nq7.j0(str)) {
                q63 q63Var = new q63(str, 2);
                try {
                    if (!q63Var.j()) {
                        q63.E(q63Var);
                    }
                    if (!q63Var.j() || !q63Var.x()) {
                        g84.f("Failed to create folder: ".concat(str));
                        return null;
                    }
                } catch (IOException e) {
                    e6.j("Failed to create folder: ".concat(str), e);
                    return null;
                }
            }
        }
        q63 q63Var2 = new q63(ry5VarF.a.concat(".nomedia"), 2);
        if (!q63Var2.j()) {
            try {
                q63Var2.n().getFile().createNewFile();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }
        vr6 vr6Var = vr6.INSTANCE;
        String str2 = ry5.u;
        vr6.i$default(vr6Var, str2, "Current storage: " + zn7Var, null, 4, null);
        vr6.i$default(vr6Var, str2, xs1.j("Folders initialized at ", ry5VarF.c), null, 4, null);
        return ry5VarF;
    }

    public static Long c(q63 q63Var) {
        q63Var.getClass();
        long usableSpace = q63Var.n().getFile().getUsableSpace();
        Long lValueOf = Long.valueOf(usableSpace);
        if (usableSpace > 0) {
            return lValueOf;
        }
        return null;
    }

    public static String d(zn7 zn7Var) {
        zn7Var.getClass();
        return zn7Var.l() + "/SwiftBackup/";
    }

    public static String e(MFirebaseUser mFirebaseUser) {
        String strW = g67.w(mFirebaseUser.getUid());
        return strW.substring(0, strW.length() / 2);
    }

    public static ry5 f(boolean z, zn7 zn7Var) {
        if (ry5.v == null || z) {
            synchronized (ry5.class) {
                try {
                    if (ry5.v == null || z) {
                        d45.b.getClass();
                        MFirebaseUser mFirebaseUserA = d45.a();
                        if (mFirebaseUserA == null) {
                            System.exit(0);
                            throw new RuntimeException("System.exit returned normally, while it was supposed to halt JVM.");
                        }
                        String str = ry5.u;
                        if (zn7Var == null) {
                            zn7Var = zn7.q.d();
                        }
                        ry5.v = new ry5(mFirebaseUserA, d(zn7Var));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        ry5 ry5Var = ry5.v;
        ry5Var.getClass();
        return ry5Var;
    }
}
