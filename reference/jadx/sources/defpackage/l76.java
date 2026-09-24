package defpackage;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class l76 {
    public static final l76 a = new l76();

    public static ArrayList a(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        context.getClass();
        int i = context.getApplicationInfo().uid;
        String str = context.getApplicationInfo().processName;
        Object systemService = context.getSystemService("activity");
        ActivityManager activityManager = systemService instanceof ActivityManager ? (ActivityManager) systemService : null;
        if (activityManager == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null) {
            runningAppProcesses = ov2.a;
        }
        ArrayList arrayListQ0 = el1.Q0(runningAppProcesses);
        ArrayList<ActivityManager.RunningAppProcessInfo> arrayList = new ArrayList();
        for (Object obj : arrayListQ0) {
            if (((ActivityManager.RunningAppProcessInfo) obj).uid == i) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(hl1.G0(arrayList, 10));
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : arrayList) {
            vc0 vc0Var = new vc0();
            String str2 = runningAppProcessInfo.processName;
            if (str2 == null) {
                f6.n("Null processName");
                return null;
            }
            vc0Var.a = str2;
            vc0Var.b = runningAppProcessInfo.pid;
            byte b = (byte) (vc0Var.e | 1);
            vc0Var.c = runningAppProcessInfo.importance;
            vc0Var.e = (byte) (b | 2);
            vc0Var.d = pe4.d(str2, str);
            vc0Var.e = (byte) (vc0Var.e | 4);
            arrayList2.add(vc0Var.a());
        }
        return arrayList2;
    }

    public final rz1 b(Context context) {
        Object next;
        String processName;
        context.getClass();
        int iMyPid = Process.myPid();
        Iterator it = a(context).iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (((wc0) ((rz1) next)).b != iMyPid);
        rz1 rz1Var = (rz1) next;
        if (rz1Var != null) {
            return rz1Var;
        }
        int i = Build.VERSION.SDK_INT;
        if (i > 33) {
            processName = Process.myProcessName();
            processName.getClass();
        } else if (i < 28 || (processName = Application.getProcessName()) == null) {
            processName = "";
        }
        vc0 vc0Var = new vc0();
        vc0Var.a = processName;
        vc0Var.b = iMyPid;
        byte b = (byte) (vc0Var.e | 1);
        vc0Var.c = 0;
        vc0Var.d = false;
        vc0Var.e = (byte) (((byte) (b | 2)) | 4);
        return vc0Var.a();
    }
}
