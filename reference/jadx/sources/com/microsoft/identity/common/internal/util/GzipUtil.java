package com.microsoft.identity.common.internal.util;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import com.microsoft.identity.common.internal.broker.BrokerData;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class GzipUtil {
    private static volatile Boolean sCachedIsBrokerProcess;

    public static byte[] compressString(String str) throws IOException {
        byte[] bytes = str.getBytes("UTF-8");
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
        gZIPOutputStream.write(bytes, 0, bytes.length);
        gZIPOutputStream.flush();
        gZIPOutputStream.close();
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        byteArrayOutputStream.close();
        return byteArray;
    }

    public static String decompressBytesToString(byte[] bArr) throws IOException {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
        byte[] bArr2 = new byte[256];
        while (true) {
            int i = gZIPInputStream.read(bArr2);
            if (i < 0) {
                gZIPInputStream.close();
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                byteArrayInputStream.close();
                return new String(byteArray, 0, byteArray.length, "UTF-8");
            }
            byteArrayOutputStream.write(bArr2, 0, i);
        }
    }

    public static Handler getPreferredHandler() {
        return Looper.myLooper() != null ? new Handler(Looper.myLooper()) : new Handler(Looper.getMainLooper());
    }

    public static boolean isBrokerProcess(Context context) {
        String str;
        if (sCachedIsBrokerProcess != null) {
            return sCachedIsBrokerProcess.booleanValue();
        }
        int iMyPid = Process.myPid();
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getApplicationContext().getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses == null) {
            str = null;
            break;
        }
        Iterator<ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
        while (true) {
            if (!it.hasNext()) {
                str = null;
                break;
            }
            ActivityManager.RunningAppProcessInfo next = it.next();
            if (next.pid == iMyPid) {
                str = next.processName;
                break;
            }
        }
        Iterator it2 = BrokerData.prodBrokers.iterator();
        while (it2.hasNext()) {
            if ((((BrokerData) it2.next()).getPackageName() + ":auth").equalsIgnoreCase(str)) {
                sCachedIsBrokerProcess = Boolean.TRUE;
                return true;
            }
        }
        sCachedIsBrokerProcess = Boolean.FALSE;
        return false;
    }

    public static boolean isEmpty(String str) {
        return str == null || str.trim().length() == 0;
    }
}
