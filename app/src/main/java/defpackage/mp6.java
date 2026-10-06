package defpackage;

import android.content.SharedPreferences;
import android.os.Looper;
import android.util.Log;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import com.topjohnwu.superuser.Shell;
import com.topjohnwu.superuser.ShellUtils;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class mp6 {
    public static final String b = "mp6";
    public static final ex0 d;
    public static final gv7 e;
    public static final gv7 f;
    public static boolean g;
    public static String h;
    public static String i;
    public static boolean j;
    public static boolean k;
    public static final mp6 a = new mp6();
    public static final gv7 c = new gv7(new q9(15));

    static {
        ex0 ex0Var = new ex0();
        ex0Var.b = 10;
        ex0Var.a = 10L;
        d = ex0Var;
        e = new gv7(new jx(18));
        f = new gv7(new zj(15));
    }

    public static boolean a(boolean z) {
        jp6 jp6Var = jp6.a;
        int i2 = kp6.a;
        int i3 = Shell.UNKNOWN;
        zd7 zd7VarK = k55.k();
        if (zd7VarK != null) {
            boolean zIsAlive = zd7VarK.isAlive();
            if (zIsAlive && zd7VarK.isRoot()) {
                return true;
            }
            if (zIsAlive && !z) {
                return false;
            }
            f13.a(zd7VarK);
            jp6Var.invoke();
        }
        zd7 zd7VarJ = k55.j();
        if (zd7VarJ.isAlive() && zd7VarJ.isRoot()) {
            return true;
        }
        if (!z) {
            return false;
        }
        f13.a(zd7VarJ);
        jp6Var.invoke();
        try {
            Thread.sleep(1500L);
        } catch (Exception unused) {
        }
        zd7 zd7VarJ2 = k55.j();
        return zd7VarJ2.isAlive() && zd7VarJ2.isRoot();
    }

    public static String c() {
        return (String) e.getValue();
    }

    public static boolean d(mp6 mp6Var, boolean z, boolean z2, int i2) {
        boolean zA;
        hp6 hp6Var;
        boolean z3;
        if ((i2 & 1) != 0) {
            z = false;
        }
        if ((i2 & 2) != 0) {
            z2 = false;
        }
        Log.d("mp6", "isAvailable: Checking");
        if (!z2 && pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
            return false;
        }
        synchronized (mp6Var) {
            boolean z4 = g;
            try {
                zA = a(z);
            } catch (Exception e2) {
                vr6.e$default(vr6.INSTANCE, "mp6", yc9.g0(e2), null, 4, null);
                zA = false;
            }
            g = zA;
            z3 = z4 != zA;
            hp6Var = new hp6(zA, z3);
        }
        if (zA) {
            qc2.a.h("RootHelper verified root access", z2);
        }
        if (z3) {
            StringBuilder sb = new StringBuilder();
            sb.append("Root access log: " + zA);
            if (zA) {
                sb.append(", Version=" + a.b());
            }
            vr6.i$default(vr6.INSTANCE, "mp6", sb.toString(), null, 4, null);
            zn4 zn4Var = zn4.a;
            zn4.b(null, new lp6(hp6Var, null));
        }
        Log.d("mp6", "isAvailable: Result = " + zA);
        if (zA) {
            SharedPreferences.Editor editor = cz4.k;
            if (editor == null) {
                pe4.F("editor");
                throw null;
            }
            editor.putBoolean("was_root_available", true).apply();
        }
        return zA;
    }

    public static boolean e() {
        String str = h;
        return str != null && nq7.Z(str, "magisk", true);
    }

    public static boolean f() {
        return g || g();
    }

    public static boolean g() {
        if (g) {
            return false;
        }
        gv7 gv7Var = qe7.a;
        return le7.f() && qe7.b();
    }

    public static /* synthetic */ List k(mp6 mp6Var, boolean z, String[] strArr) {
        return mp6Var.j(z, strArr, ip6.SU);
    }

    /* JADX WARN: Code duplicated, block: B:31:0x008d A[PHI: r8
      0x008d: PHI (r8v7 java.lang.Process) = (r8v6 java.lang.Process), (r8v9 java.lang.Process) binds: [B:30:0x008b, B:35:0x00a6] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:39:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:48:? A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.lang.Process] */
    /* JADX WARN: Type inference failed for: r2v6 */
    public static ArrayList l(String... strArr) throws Throwable {
        Process process;
        Throwable th;
        String str = b;
        String strS0 = x50.s0(62, " ; ", strArr);
        List listA0 = g ? fl1.A0("su", "-c", strS0) : fl1.A0("/system/bin/sh", "-c", strS0);
        ArrayList arrayList = new ArrayList();
        ?? r2 = 0;
        try {
            try {
                try {
                    Process processStart = new ProcessBuilder((List<String>) listA0).redirectErrorStream(true).start();
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(processStart.getInputStream()));
                    try {
                        Iterator it = ((ws1) rs9.p(bufferedReader)).iterator();
                        while (it.hasNext()) {
                            arrayList.add(it.next());
                        }
                        bufferedReader.close();
                        processStart.waitFor();
                        processStart.destroy();
                        return arrayList;
                    } catch (Throwable th2) {
                        try {
                            throw th2;
                        } catch (Throwable th3) {
                            rs9.c(bufferedReader, th2);
                            throw th3;
                        }
                    }
                } catch (InterruptedException e2) {
                    process = null;
                    Thread.currentThread().interrupt();
                    vr6.e$default(vr6.INSTANCE, str, "runCommandBasic interrupted", e2, null, 8, null);
                    if (0 != 0) {
                        process.destroy();
                    }
                    return arrayList;
                }
            } catch (Exception e3) {
                process = null;
                vr6.e$default(vr6.INSTANCE, str, "runCommandBasic", e3, null, 8, null);
                if (0 != 0) {
                    process.destroy();
                }
                return arrayList;
            } catch (Throwable th4) {
                th = th4;
                th = th;
                if (r2 != 0) {
                    throw th;
                }
                r2.destroy();
                throw th;
            }
        } catch (Throwable th5) {
            th = th5;
            r2 = listA0;
            th = th;
            if (r2 != 0) {
                throw th;
            }
            r2.destroy();
            throw th;
        }
    }

    public final synchronized String b() {
        try {
            if (!g) {
                return null;
            }
            String str = h;
            if (str == null || str.length() == 0) {
                h = (String) el1.U0(k(this, true, new String[]{"su -v"}));
                if (e()) {
                    h = (String) el1.U0(k(this, true, new String[]{"magisk -c"}));
                    zn4 zn4Var = zn4.a;
                    zn4.c(new ov(13));
                }
            }
            return h;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final List h(String[] strArr, ip6 ip6Var) {
        ip6Var.getClass();
        if (!pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            return m((String[]) Arrays.copyOf(strArr, strArr.length), ip6Var);
        }
        d6.o();
        return null;
    }

    public final List j(boolean z, String[] strArr, ip6 ip6Var) {
        ip6Var.getClass();
        if (z || !pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            return m((String[]) Arrays.copyOf(strArr, strArr.length), ip6Var);
        }
        d6.o();
        return null;
    }

    public final List m(String[] strArr, ip6 ip6Var) {
        if (ip6Var == ip6.SU && !g) {
            return ov2.a;
        }
        String[] strArr2 = (String[]) Arrays.copyOf(strArr, strArr.length);
        g00 g00Var = g00.a;
        if (g00.x()) {
            ArrayList arrayList = new ArrayList(strArr2.length);
            for (String str : strArr2) {
                arrayList.add(uq7.T(str, c(), (String) f.getValue()));
            }
            strArr2 = (String[]) arrayList.toArray(new String[0]);
        }
        List<String> listRunCommands = ip6Var.runCommands(strArr2);
        if (listRunCommands == null || !listRunCommands.isEmpty()) {
            Iterator<T> it = listRunCommands.iterator();
            while (it.hasNext()) {
                if (nq7.Z((String) it.next(), "Segmentation fault", false)) {
                    String str2 = b;
                    Log.i(str2, "Creating new shell");
                    int i2 = Shell.UNKNOWN;
                    zd7 zd7VarK = k55.k();
                    if (zd7VarK != null) {
                        f13.a(zd7VarK);
                    }
                    d(this, true, false, 2);
                    String strFastCmd = ShellUtils.fastCmd(k55.j(), (String[]) Arrays.copyOf(strArr2, strArr2.length));
                    strFastCmd.getClass();
                    if (nq7.Z(strFastCmd, "Segmentation fault", false)) {
                        String str3 = strArr2.length == 0 ? null : strArr2[0];
                        vr6.e$default(vr6.INSTANCE, str2, xs1.j("Segmentation fault with ", str3 != null ? nq7.C0(str3, TokenAuthenticationScheme.SCHEME_DELIMITER, "???") : null), null, 4, null);
                    }
                    return nc8.I(strFastCmd);
                }
            }
        }
        return listRunCommands;
    }
}
