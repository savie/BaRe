package defpackage;

import android.content.ContentResolver;
import android.net.ConnectivityManager;
import android.net.LinkProperties;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.style.RelativeSizeSpan;
import android.text.style.StyleSpan;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.jcraft.jsch.SftpATTRS;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class gg3 {
    public static final gg3 a = new gg3();
    public static volatile xf3 b = xf3.UNKNOWN;
    public static final ex6 c = new ex6();
    public static volatile wf3 d;
    public static final ex6 e;
    public static long f;
    public static long g;
    public static bl7 h;
    public static boolean i;
    public static final zc2 j;
    public static final cg3 k;

    static {
        wf3 wf3Var = wf3.IDLE;
        d = wf3Var;
        ex6 ex6Var = new ex6();
        ex6Var.k(wf3Var);
        e = ex6Var;
        ig3 ig3VarB = ig3.b();
        ig3VarB.a();
        ui8.b(".info/connected");
        j = new zc2(ig3VarB.c, new gy5(".info/connected"));
        k = new cg3();
    }

    public static SpannedString a(il0 il0Var, yf3 yf3Var) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) il0Var.getString(R.string.firebase_backend_diagnostics_message));
        spannableStringBuilder.append((CharSequence) "\n\n");
        spannableStringBuilder.append((CharSequence) il0Var.getString(R.string.firebase_backend_diagnostics_common_causes));
        spannableStringBuilder.append((CharSequence) "\n\n");
        String string = il0Var.getString(R.string.firebase_backend_diagnostics_basic_checks);
        string.getClass();
        c(spannableStringBuilder, string);
        String string2 = il0Var.getString(R.string.firebase_backend_diagnostics_private_dns);
        string2.getClass();
        zf3 zf3Var = yf3Var.a;
        String string3 = zf3Var.a;
        if (string3 != null) {
            int iHashCode = string3.hashCode();
            if (iHashCode != -539229175) {
                if (iHashCode != -299803597) {
                    if (iHashCode == 109935 && string3.equals("off")) {
                        string3 = "Off";
                    }
                } else if (string3.equals("hostname")) {
                    string3 = "Enabled";
                }
            } else if (string3.equals("opportunistic")) {
                string3 = "Automatic";
            }
        }
        String str = zf3Var.b;
        int i2 = R.string.firebase_backend_diagnostics_detected_no;
        if (str != null && !nq7.j0(str) && string3 != null && !nq7.j0(string3)) {
            string3 = u48.n(str, " (", string3, ")");
        } else if (str != null && !nq7.j0(str)) {
            string3 = str;
        } else if (string3 == null || nq7.j0(string3)) {
            string3 = il0Var.getString(R.string.firebase_backend_diagnostics_detected_no);
            string3.getClass();
        }
        b(spannableStringBuilder, il0Var, string2, string3, null);
        String string4 = il0Var.getString(R.string.firebase_backend_diagnostics_vpn);
        string4.getClass();
        if (yf3Var.b) {
            i2 = R.string.firebase_backend_diagnostics_detected_yes;
        }
        String string5 = il0Var.getString(i2);
        string5.getClass();
        b(spannableStringBuilder, il0Var, string4, string5, null);
        String string6 = il0Var.getString(R.string.firebase_backend_diagnostics_network_dns);
        string6.getClass();
        String strY0 = el1.Y0(yf3Var.c, null, null, null, null, 63);
        if (nq7.j0(strY0)) {
            strY0 = null;
        }
        if (strY0 == null) {
            strY0 = "-";
        }
        b(spannableStringBuilder, il0Var, string6, strY0, null);
        spannableStringBuilder.append((CharSequence) "\n\n");
        String string7 = il0Var.getString(R.string.firebase_backend_diagnostics_root_firewall_checks);
        string7.getClass();
        c(spannableStringBuilder, string7);
        ag3 ag3Var = yf3Var.d;
        b(spannableStringBuilder, il0Var, "", ag3Var.a, ag3Var.b);
        spannableStringBuilder.append((CharSequence) "\n\n");
        String string8 = il0Var.getString(R.string.firebase_backend_diagnostics_try_these_steps);
        string8.getClass();
        c(spannableStringBuilder, string8);
        spannableStringBuilder.append((CharSequence) "\n- ");
        spannableStringBuilder.append((CharSequence) il0Var.getString(R.string.firebase_backend_diagnostics_workaround_allowlist));
        spannableStringBuilder.append((CharSequence) "\n- ");
        spannableStringBuilder.append((CharSequence) il0Var.getString(R.string.firebase_backend_diagnostics_workaround_disable_filters));
        spannableStringBuilder.append((CharSequence) "\n- ");
        spannableStringBuilder.append((CharSequence) il0Var.getString(R.string.firebase_backend_diagnostics_workaround_network_vpn));
        return new SpannedString(spannableStringBuilder);
    }

    public static final void b(SpannableStringBuilder spannableStringBuilder, il0 il0Var, String str, String str2, String str3) {
        spannableStringBuilder.append("\n");
        if (str.length() > 0) {
            StyleSpan styleSpan = new StyleSpan(1);
            int length = spannableStringBuilder.length();
            spannableStringBuilder.append((CharSequence) str.concat(": "));
            spannableStringBuilder.setSpan(styleSpan, length, spannableStringBuilder.length(), 17);
        }
        if (str3 == null || nq7.j0(str3)) {
            spannableStringBuilder.append((CharSequence) str2);
            return;
        }
        int iH0 = nq7.h0(str2, str3, 0, false, 6);
        if (iH0 == -1) {
            spannableStringBuilder.append((CharSequence) str2);
            return;
        }
        spannableStringBuilder.append((CharSequence) str2.substring(0, iH0));
        yl1 yl1Var = new yl1(sz8.r(il0Var));
        int length2 = spannableStringBuilder.length();
        spannableStringBuilder.append((CharSequence) str3);
        spannableStringBuilder.setSpan(yl1Var, length2, spannableStringBuilder.length(), 17);
        spannableStringBuilder.append((CharSequence) str2.substring(str3.length() + iH0));
    }

    public static final void c(SpannableStringBuilder spannableStringBuilder, String str) {
        RelativeSizeSpan relativeSizeSpan = new RelativeSizeSpan(1.2f);
        int length = spannableStringBuilder.length();
        StyleSpan styleSpan = new StyleSpan(1);
        int length2 = spannableStringBuilder.length();
        spannableStringBuilder.append((CharSequence) str);
        spannableStringBuilder.setSpan(styleSpan, length2, spannableStringBuilder.length(), 17);
        spannableStringBuilder.setSpan(relativeSizeSpan, length, spannableStringBuilder.length(), 17);
    }

    public static ArrayList e(List list, int i2, List list2) {
        Pattern patternCompile = Pattern.compile("--uid-owner\\s+" + i2 + "(\\D|$)");
        patternCompile.getClass();
        Pattern patternCompile2 = Pattern.compile("(^|\\s)-d\\s+\\S+");
        patternCompile2.getClass();
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            String str = (String) obj;
            String lowerCase = str.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            boolean z = false;
            boolean z2 = nq7.Z(lowerCase, "-j reject", false) || nq7.Z(lowerCase, "-j drop", false);
            boolean zFind = patternCompile.matcher(str).find();
            boolean zFind2 = patternCompile2.matcher(str).find();
            if (!list2.isEmpty()) {
                Iterator it = list2.iterator();
                while (it.hasNext()) {
                    String lowerCase2 = ((String) it.next()).toLowerCase(Locale.ROOT);
                    lowerCase2.getClass();
                    if (nq7.Z(lowerCase, lowerCase2, false)) {
                        z = true;
                        break;
                    }
                }
            }
            if (z2 && zFind && (!zFind2 || z)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static boolean f() {
        d45.b.getClass();
        if (d45.a() == null) {
            return false;
        }
        Boolean boolValueOf = null;
        try {
            d45.b.getClass();
            MFirebaseUser mFirebaseUserA = d45.a();
            if (mFirebaseUserA != null) {
                boolValueOf = Boolean.valueOf(mFirebaseUserA.isAnonymous());
            }
        } catch (Exception unused) {
        }
        return !pe4.d(boolValueOf, Boolean.TRUE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r8v1, types: [bn6] */
    /* JADX WARN: Type inference failed for: r8v10, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v8 */
    public static wa g(il0 il0Var, Integer num, bt3 bt3Var, Integer num2, bt3 bt3Var2) {
        Object bn6Var;
        Object bn6Var2;
        Object bn6Var3;
        ?? bn6Var4;
        Network activeNetwork;
        LinkProperties linkProperties;
        if (!f()) {
            return null;
        }
        SwiftApp.Companion companion = SwiftApp.d;
        ContentResolver contentResolver = SwiftApp.Companion.c().getContentResolver();
        try {
            bn6Var = Settings.Global.getString(contentResolver, "private_dns_mode");
        } catch (Throwable th) {
            bn6Var = new bn6(th);
        }
        if (bn6Var instanceof bn6) {
            bn6Var = null;
        }
        String str = (String) bn6Var;
        if (str == null || nq7.j0(str)) {
            str = null;
        }
        try {
            bn6Var2 = Settings.Global.getString(contentResolver, "private_dns_specifier");
        } catch (Throwable th2) {
            bn6Var2 = new bn6(th2);
        }
        if (bn6Var2 instanceof bn6) {
            bn6Var2 = null;
        }
        String str2 = (String) bn6Var2;
        if (str2 == null || nq7.j0(str2)) {
            str2 = null;
        }
        zf3 zf3Var = new zf3(str, str2);
        int i2 = 1;
        int i3 = 0;
        try {
            SwiftApp.Companion companion2 = SwiftApp.d;
            Object systemService = SwiftApp.Companion.c().getSystemService("connectivity");
            ConnectivityManager connectivityManager = systemService instanceof ConnectivityManager ? (ConnectivityManager) systemService : null;
            NetworkCapabilities networkCapabilities = connectivityManager != null ? connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork()) : null;
            bn6Var3 = Boolean.valueOf(networkCapabilities != null && networkCapabilities.hasTransport(4));
        } catch (Throwable th3) {
            bn6Var3 = new bn6(th3);
        }
        Object obj = Boolean.FALSE;
        if (bn6Var3 instanceof bn6) {
            bn6Var3 = obj;
        }
        boolean zBooleanValue = ((Boolean) bn6Var3).booleanValue();
        ov2 ov2Var = ov2.a;
        try {
            SwiftApp.Companion companion3 = SwiftApp.d;
            Object systemService2 = SwiftApp.Companion.c().getSystemService("connectivity");
            ConnectivityManager connectivityManager2 = systemService2 instanceof ConnectivityManager ? (ConnectivityManager) systemService2 : null;
            if (connectivityManager2 == null || (activeNetwork = connectivityManager2.getActiveNetwork()) == null || (linkProperties = connectivityManager2.getLinkProperties(activeNetwork)) == null) {
                bn6Var4 = ov2Var;
            } else {
                List<InetAddress> dnsServers = linkProperties.getDnsServers();
                dnsServers.getClass();
                bn6Var4 = new ArrayList();
                Iterator it = dnsServers.iterator();
                while (it.hasNext()) {
                    String hostAddress = ((InetAddress) it.next()).getHostAddress();
                    if (hostAddress == null || nq7.j0(hostAddress)) {
                        hostAddress = null;
                    }
                    if (hostAddress != null) {
                        bn6Var4.add(hostAddress);
                    }
                }
            }
        } catch (Throwable th4) {
            bn6Var4 = new bn6(th4);
        }
        ?? r7 = ov2Var;
        if (!(bn6Var4 instanceof bn6)) {
            r7 = bn6Var4;
        }
        String string = il0Var.getString(R.string.firebase_backend_diagnostics_root_firewall_checking);
        string.getClass();
        yf3 yf3Var = new yf3(zf3Var, zBooleanValue, (List) r7, new ag3(string));
        s35 s35Var = new s35(il0Var, R.style.M3AlertDialogTheme, new hv1(il0Var, R.style.M3AlertDialogTheme), Float.valueOf(13.5f));
        s35Var.v(R.string.firebase_backend_diagnostics_title);
        ((ra) s35Var.b).f = a(il0Var, yf3Var);
        s35Var.s(num.intValue(), new wi2(bt3Var, i2));
        if (num2 != null) {
            s35Var.q(num2.intValue(), new vf3(bt3Var2, i3));
        }
        wa waVarM = s35Var.m();
        zn4 zn4Var = zn4.a;
        zn4.b(null, new j41(il0Var, waVarM, yf3Var, null));
        return waVarM;
    }

    public static /* synthetic */ wa h(sa1 sa1Var, Integer num, ah ahVar, ej ejVar, int i2) {
        if ((i2 & 4) != 0) {
            ahVar = null;
        }
        if ((i2 & 16) != 0) {
            ejVar = null;
        }
        return g(sa1Var, num, ahVar, null, ejVar);
    }

    public final void d() {
        i(wf3.IDLE);
    }

    public final synchronized void i(wf3 wf3Var) {
        try {
            if (d == wf3Var) {
                return;
            }
            if (wf3Var == wf3.IDLE) {
                f = 0L;
            }
            d = wf3Var;
            e.k(wf3Var);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void j(xf3 xf3Var) {
        try {
            if (xf3Var == xf3.CONNECTED) {
                g++;
                bl7 bl7Var = h;
                if (bl7Var != null) {
                    bl7Var.cancel(null);
                }
                h = null;
                d();
            }
            if (b == xf3Var) {
                return;
            }
            b = xf3Var;
            c.k(xf3Var);
            int i2 = bg3.a[xf3Var.ordinal()];
            if (i2 == 1) {
                vr6.i$default(vr6.INSTANCE, "FCW", "Firebase connection state unknown", null, 4, null);
            } else if (i2 == 2) {
                vr6.i$default(vr6.INSTANCE, "FCW", "Firebase connecting", null, 4, null);
            } else if (i2 == 3) {
                vr6.INSTANCE.i("FCW", "Firebase successfully connected", vr6.a.GREEN);
            } else {
                if (i2 != 4) {
                    throw new mn5();
                }
                vr6.INSTANCE.e("FCW", "Firebase not connected", vr6.a.YELLOW);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:71:0x0143  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public final Object k(long j2, kv1 kv1Var) {
        fg3 fg3Var;
        long j3;
        long j4;
        long j5;
        if (kv1Var instanceof fg3) {
            fg3Var = (fg3) kv1Var;
            int i2 = fg3Var.e;
            if ((i2 & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                fg3Var.e = i2 - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                fg3Var = new fg3(this, kv1Var);
            }
        } else {
            fg3Var = new fg3(this, kv1Var);
        }
        Object obj = fg3Var.c;
        yx1 yx1Var = yx1.a;
        int i3 = fg3Var.e;
        if (i3 == 0) {
            lg7.H(obj);
            if (!f()) {
                d();
                return Boolean.TRUE;
            }
            if (b == xf3.CONNECTED) {
                d();
                return Boolean.TRUE;
            }
            j(xf3.CONNECTING);
            synchronized (this) {
                try {
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    wf3 wf3Var = d;
                    wf3 wf3Var2 = wf3.WAITING;
                    if (wf3Var != wf3Var2 || f <= jElapsedRealtime) {
                        f = jElapsedRealtime + j2;
                    }
                    i(wf3Var2);
                    j3 = f;
                } catch (Throwable th) {
                    throw th;
                }
            }
            j4 = j3;
            j5 = j2;
        } else {
            if (i3 != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            long j6 = fg3Var.b;
            long j7 = fg3Var.a;
            lg7.H(obj);
            j4 = j6;
            j5 = j7;
        }
        while (SystemClock.elapsedRealtime() < j4) {
            xf3 xf3Var = b;
            xf3 xf3Var2 = xf3.CONNECTED;
            if (xf3Var == xf3Var2) {
                d();
                return Boolean.TRUE;
            }
            SwiftApp.Companion companion = SwiftApp.d;
            if (!ai8.i(SwiftApp.Companion.c())) {
                d();
                return Boolean.FALSE;
            }
            long jElapsedRealtime2 = j4 - SystemClock.elapsedRealtime();
            if (jElapsedRealtime2 <= 0) {
                break;
            }
            long jMin = Math.min(5000L, jElapsedRealtime2);
            try {
                zc2 zc2VarD = re3.b().d("health").d("enabled");
                wj6 wj6Var = zc2VarD.a;
                wj6Var.getClass();
                TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
                try {
                    wj6Var.n(new uj6(wj6Var, zc2VarD, taskCompletionSource, wj6Var));
                    Tasks.await(taskCompletionSource.getTask(), jMin, TimeUnit.MILLISECONDS);
                    j(xf3Var2);
                    d();
                    return Boolean.TRUE;
                } catch (Exception e2) {
                    e = e2;
                    vr6.w$default(vr6.INSTANCE, "FCW", "Backend health probe failed: ".concat(io4.b(e)), null, 4, null);
                    long jMin2 = Math.min(1000L, j4 - SystemClock.elapsedRealtime());
                    if (jMin2 > 0) {
                        fg3Var.a = j5;
                        fg3Var.b = j4;
                        fg3Var.e = 1;
                        if (yc9.j(jMin2, fg3Var) == yx1Var) {
                            return yx1Var;
                        }
                    }
                }
            } catch (Exception e3) {
                e = e3;
            }
        }
        boolean z = b == xf3.CONNECTED;
        if (z) {
            d();
        } else {
            SwiftApp.Companion companion2 = SwiftApp.d;
            if (ai8.i(SwiftApp.Companion.c())) {
                j(xf3.DISCONNECTED);
                i(wf3.TIMED_OUT);
            } else {
                d();
            }
        }
        return Boolean.valueOf(z);
    }
}
