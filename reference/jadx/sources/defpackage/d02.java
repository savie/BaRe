package defpackage;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.SensorManager;
import android.os.Environment;
import android.os.StatFs;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class d02 {
    public static final HashMap f;
    public static final String g;
    public final Context a;
    public final k94 b;
    public final cq c;
    public final oe d;
    public final f80 e;

    static {
        HashMap map = new HashMap();
        f = map;
        map.put("armeabi", 5);
        map.put("armeabi-v7a", 6);
        map.put("arm64-v8a", 9);
        map.put("x86", 0);
        map.put("x86_64", 1);
        Locale locale = Locale.US;
        g = "Crashlytics Android SDK/20.0.6";
    }

    public d02(Context context, k94 k94Var, cq cqVar, oe oeVar, f80 f80Var) {
        this.a = context;
        this.b = k94Var;
        this.c = cqVar;
        this.d = oeVar;
        this.e = f80Var;
    }

    public static qc0 c(y8 y8Var, int i) {
        String str = (String) y8Var.b;
        String str2 = (String) y8Var.a;
        StackTraceElement[] stackTraceElementArr = (StackTraceElement[]) y8Var.c;
        int i2 = 0;
        if (stackTraceElementArr == null) {
            stackTraceElementArr = new StackTraceElement[0];
        }
        y8 y8Var2 = (y8) y8Var.d;
        if (i >= 8) {
            y8 y8Var3 = y8Var2;
            while (y8Var3 != null) {
                y8Var3 = (y8) y8Var3.d;
                i2++;
            }
        }
        int i3 = i2;
        List listD = d(stackTraceElementArr, 4);
        if (listD == null) {
            f6.n("Null frames");
            return null;
        }
        byte b = (byte) (0 | 1);
        qc0 qc0VarC = (y8Var2 == null || i3 != 0) ? null : c(y8Var2, i + 1);
        if (b == 1) {
            return new qc0(str, str2, listD, qc0VarC, i3);
        }
        StringBuilder sb = new StringBuilder();
        if ((b & 1) == 0) {
            sb.append(" overflowCount");
        }
        l0.e(xs1.k("Missing required properties:", sb));
        return null;
    }

    public static List d(StackTraceElement[] stackTraceElementArr, int i) {
        ArrayList arrayList = new ArrayList();
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            tc0 tc0Var = new tc0();
            tc0Var.e = i;
            tc0Var.f = (byte) (tc0Var.f | 4);
            long lineNumber = 0;
            long jMax = stackTraceElement.isNativeMethod() ? Math.max(stackTraceElement.getLineNumber(), 0L) : 0L;
            String str = stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName();
            String fileName = stackTraceElement.getFileName();
            if (!stackTraceElement.isNativeMethod() && stackTraceElement.getLineNumber() > 0) {
                lineNumber = stackTraceElement.getLineNumber();
            }
            tc0Var.a = jMax;
            byte b = (byte) (tc0Var.f | 1);
            tc0Var.b = str;
            tc0Var.c = fileName;
            tc0Var.d = lineNumber;
            tc0Var.f = (byte) (b | 2);
            arrayList.add(tc0Var.a());
        }
        return Collections.unmodifiableList(arrayList);
    }

    public static rc0 e() {
        return new rc0("0", "0", 0L);
    }

    public final List a() {
        byte b = (byte) (((byte) (0 | 1)) | 2);
        cq cqVar = this.c;
        String str = cqVar.e;
        if (str == null) {
            f6.n("Null name");
            return null;
        }
        String str2 = cqVar.b;
        if (b == 3) {
            return Collections.singletonList(new pc0(str, str2, 0L, 0L));
        }
        StringBuilder sb = new StringBuilder();
        if ((b & 1) == 0) {
            sb.append(" baseAddress");
        }
        if ((b & 2) == 0) {
            sb.append(" size");
        }
        l0.e(xs1.k("Missing required properties:", sb));
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0051  */
    /* JADX WARN: Code duplicated, block: B:35:0x0070  */
    /* JADX WARN: Code duplicated, block: B:45:0x00a7  */
    public final yc0 b(int i) {
        boolean z;
        Float fValueOf;
        int i2;
        long j;
        Context context = this.a;
        boolean z2 = false;
        try {
            Intent intentRegisterReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            if (intentRegisterReceiver != null) {
                int intExtra = intentRegisterReceiver.getIntExtra("status", -1);
                z = intExtra != -1 && (intExtra == 2 || intExtra == 5);
                try {
                    int intExtra2 = intentRegisterReceiver.getIntExtra("level", -1);
                    int intExtra3 = intentRegisterReceiver.getIntExtra("scale", -1);
                    if (intExtra2 != -1 && intExtra3 != -1) {
                        fValueOf = Float.valueOf(intExtra2 / intExtra3);
                    }
                } catch (IllegalStateException e) {
                    e = e;
                    Log.e("FirebaseCrashlytics", "An error occurred getting battery state.", e);
                }
                Double dValueOf = fValueOf != null ? Double.valueOf(fValueOf.doubleValue()) : null;
                if (z || fValueOf == null) {
                    i2 = 1;
                } else {
                    i2 = ((double) fValueOf.floatValue()) < 0.99d ? 2 : 3;
                }
                if (!jm1.B() && ((SensorManager) context.getSystemService("sensor")).getDefaultSensor(8) != null) {
                    z2 = true;
                }
                long jG = jm1.g(context);
                ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
                ((ActivityManager) context.getSystemService("activity")).getMemoryInfo(memoryInfo);
                j = jG - memoryInfo.availMem;
                if (j <= 0) {
                    j = 0;
                }
                StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
                long blockSize = statFs.getBlockSize();
                long blockCount = (((long) statFs.getBlockCount()) * blockSize) - (blockSize * ((long) statFs.getAvailableBlocks()));
                xc0 xc0Var = new xc0();
                xc0Var.a = dValueOf;
                xc0Var.b = i2;
                byte b = (byte) (xc0Var.g | 1);
                xc0Var.c = z2;
                xc0Var.d = i;
                xc0Var.e = j;
                xc0Var.f = blockCount;
                xc0Var.g = (byte) (((byte) (((byte) (((byte) (b | 2)) | 4)) | 8)) | 16);
                return xc0Var.a();
            }
            z = false;
        } catch (IllegalStateException e2) {
            e = e2;
            z = false;
        }
        fValueOf = null;
        if (fValueOf != null) {
        }
        if (z) {
            i2 = 1;
        } else {
            i2 = 1;
        }
        if (!jm1.B()) {
            z2 = true;
        }
        long jG2 = jm1.g(context);
        ActivityManager.MemoryInfo memoryInfo2 = new ActivityManager.MemoryInfo();
        ((ActivityManager) context.getSystemService("activity")).getMemoryInfo(memoryInfo2);
        j = jG2 - memoryInfo2.availMem;
        if (j <= 0) {
            j = 0;
        }
        StatFs statFs2 = new StatFs(Environment.getDataDirectory().getPath());
        long blockSize2 = statFs2.getBlockSize();
        long blockCount2 = (((long) statFs2.getBlockCount()) * blockSize2) - (blockSize2 * ((long) statFs2.getAvailableBlocks()));
        xc0 xc0Var2 = new xc0();
        xc0Var2.a = dValueOf;
        xc0Var2.b = i2;
        byte b2 = (byte) (xc0Var2.g | 1);
        xc0Var2.c = z2;
        xc0Var2.d = i;
        xc0Var2.e = j;
        xc0Var2.f = blockCount2;
        xc0Var2.g = (byte) (((byte) (((byte) (((byte) (b2 | 2)) | 4)) | 8)) | 16);
        return xc0Var2.a();
    }
}
