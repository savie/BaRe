package defpackage;

import android.app.ActivityManager;
import android.app.ApplicationExitInfo;
import android.content.Context;
import android.os.Build;
import android.util.Log;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Base64;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.zip.GZIPOutputStream;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class t02 {
    public static final Charset d = Charset.forName("UTF-8");
    public final Context a;
    public final lk5 b;
    public final ca3 c;

    public t02(Context context, lk5 lk5Var, ca3 ca3Var) {
        this.a = context;
        this.b = lk5Var;
        this.c = ca3Var;
    }

    public static String a(InputStream inputStream) throws IOException {
        if (inputStream == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[8192];
        while (true) {
            int i = inputStream.read(bArr);
            if (i == -1) {
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                try {
                    GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream2);
                    try {
                        gZIPOutputStream.write(byteArray);
                        gZIPOutputStream.finish();
                        String strEncodeToString = Base64.getEncoder().encodeToString(byteArrayOutputStream2.toByteArray());
                        gZIPOutputStream.close();
                        byteArrayOutputStream2.close();
                        return strEncodeToString;
                    } catch (Throwable th) {
                        try {
                            gZIPOutputStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    try {
                        byteArrayOutputStream2.close();
                    } catch (Throwable th4) {
                        th3.addSuppressed(th4);
                    }
                    throw th3;
                }
            }
            byteArrayOutputStream.write(bArr, 0, i);
        }
    }

    public static File c(File file, String str) {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return null;
        }
        for (File file2 : fileArrListFiles) {
            if (file2.getName().endsWith(str)) {
                return file2;
            }
        }
        return null;
    }

    public static void g(ca3 ca3Var, String str, String str2, String str3) throws Throwable {
        File file = new File(ca3Var.f(str), str3);
        BufferedWriter bufferedWriter = null;
        try {
            BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file), d));
            try {
                bufferedWriter2.write(str2);
                jm1.h(bufferedWriter2, "Failed to close " + file);
            } catch (IOException unused) {
                bufferedWriter = bufferedWriter2;
                jm1.h(bufferedWriter, "Failed to close " + file);
            } catch (Throwable th) {
                th = th;
                bufferedWriter = bufferedWriter2;
                jm1.h(bufferedWriter, "Failed to close " + file);
                throw th;
            }
        } catch (IOException unused2) {
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final ca2 b(String str) {
        ca3 ca3Var = this.c;
        File fileF = ca3Var.f(str);
        File file = new File(fileF, "pending");
        String str2 = "Minidump directory: " + file.getAbsolutePath();
        ac0 ac0VarA = null;
        String strA = null;
        ac0VarA = null;
        if (Log.isLoggable("FirebaseCrashlytics", 2)) {
            Log.v("FirebaseCrashlytics", str2, null);
        }
        File fileC = c(file, ".dmp");
        String strConcat = "Minidump file ".concat((fileC == null || !fileC.exists()) ? "does not exist" : "exists");
        if (Log.isLoggable("FirebaseCrashlytics", 2)) {
            Log.v("FirebaseCrashlytics", strConcat, null);
        }
        xf1 xf1Var = new xf1();
        if (fileF.exists() && file.exists()) {
            File fileC2 = c(file, ".dmp");
            if (Build.VERSION.SDK_INT >= 31) {
                List<ApplicationExitInfo> historicalProcessExitReasons = ((ActivityManager) this.a.getSystemService("activity")).getHistoricalProcessExitReasons(null, 0, 0);
                long jLastModified = ca3Var.g(str, "start-time").lastModified();
                ArrayList arrayList = new ArrayList();
                Iterator<ApplicationExitInfo> it = historicalProcessExitReasons.iterator();
                while (it.hasNext()) {
                    ApplicationExitInfo applicationExitInfoD = x5.d(it.next());
                    if (applicationExitInfoD.getReason() == 5 && applicationExitInfoD.getTimestamp() >= jLastModified) {
                        arrayList.add(applicationExitInfoD);
                    }
                }
                if (!arrayList.isEmpty()) {
                    ApplicationExitInfo applicationExitInfoD2 = x5.d(arrayList.get(0));
                    zb0 zb0Var = new zb0();
                    zb0Var.d = applicationExitInfoD2.getImportance();
                    zb0Var.j = (byte) (zb0Var.j | 4);
                    String processName = applicationExitInfoD2.getProcessName();
                    if (processName == null) {
                        f6.n("Null processName");
                        return null;
                    }
                    zb0Var.b = processName;
                    zb0Var.c = applicationExitInfoD2.getReason();
                    zb0Var.j = (byte) (zb0Var.j | 2);
                    zb0Var.g = applicationExitInfoD2.getTimestamp();
                    zb0Var.j = (byte) (zb0Var.j | 32);
                    zb0Var.a = applicationExitInfoD2.getPid();
                    zb0Var.j = (byte) (zb0Var.j | 1);
                    zb0Var.e = applicationExitInfoD2.getPss();
                    zb0Var.j = (byte) (zb0Var.j | 8);
                    zb0Var.f = applicationExitInfoD2.getRss();
                    zb0Var.j = (byte) (zb0Var.j | 16);
                    try {
                        strA = a(applicationExitInfoD2.getTraceInputStream());
                    } catch (IOException unused) {
                        Log.w("FirebaseCrashlytics", "Failed to get input stream from ApplicationExitInfo", null);
                    }
                    zb0Var.h = strA;
                    ac0VarA = zb0Var.a();
                }
            }
            xf1Var.c = new yf1(10, fileC2, ac0VarA);
            xf1Var.d = c(fileF, ".device_info");
            xf1Var.e = new File(fileF, "session.json");
            xf1Var.f = new File(fileF, "app.json");
            xf1Var.b = new File(fileF, "device.json");
            xf1Var.k = new File(fileF, "os.json");
        }
        return new ca2(xf1Var);
    }

    public final void d(String str, String str2, long j) throws Throwable {
        HashMap map = new HashMap();
        map.put("session_id", str);
        map.put("generator", str2);
        map.put("started_at_seconds", Long.valueOf(j));
        g(this.c, str, new JSONObject(map).toString(), "session.json");
    }

    public final void e(String str, ke0 ke0Var) throws Throwable {
        String str2 = ke0Var.a;
        String str3 = ke0Var.b;
        String str4 = ke0Var.c;
        String str5 = ke0Var.d;
        int i = ke0Var.e;
        oe oeVar = ke0Var.f;
        String str6 = (String) oeVar.i().b;
        String str7 = (String) oeVar.i().c;
        HashMap map = new HashMap();
        map.put("app_identifier", str2);
        map.put("version_code", str3);
        map.put("version_name", str4);
        map.put("install_uuid", str5);
        map.put("delivery_mechanism", Integer.valueOf(i));
        if (str6 == null) {
            str6 = "";
        }
        map.put("development_platform", str6);
        if (str7 == null) {
            str7 = "";
        }
        map.put("development_platform_version", str7);
        g(this.c, str, new JSONObject(map).toString(), "app.json");
    }

    public final void f(String str, le0 le0Var) throws Throwable {
        int i = le0Var.a;
        String str2 = Build.MODEL;
        int i2 = le0Var.b;
        long j = le0Var.c;
        long j2 = le0Var.d;
        boolean z = le0Var.e;
        int i3 = le0Var.f;
        String str3 = Build.MANUFACTURER;
        String str4 = Build.PRODUCT;
        HashMap map = new HashMap();
        map.put("arch", Integer.valueOf(i));
        map.put("build_model", str2);
        map.put("available_processors", Integer.valueOf(i2));
        map.put("total_ram", Long.valueOf(j));
        map.put("disk_space", Long.valueOf(j2));
        map.put("is_emulator", Boolean.valueOf(z));
        map.put("state", Integer.valueOf(i3));
        map.put("build_manufacturer", str3);
        map.put("build_product", str4);
        g(this.c, str, new JSONObject(map).toString(), "device.json");
    }

    public final void h(String str, me0 me0Var) throws Throwable {
        String str2 = Build.VERSION.RELEASE;
        String str3 = Build.VERSION.CODENAME;
        boolean z = me0Var.a;
        HashMap map = new HashMap();
        map.put("version", str2);
        map.put("build_version", str3);
        map.put("is_rooted", Boolean.valueOf(z));
        g(this.c, str, new JSONObject(map).toString(), "os.json");
    }
}
