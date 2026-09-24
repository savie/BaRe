package defpackage;

import android.util.AtomicFile;
import com.google.gson.reflect.TypeToken;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.lang.reflect.Type;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.tasks.fgs.DataSyncFgsRuntimeLedger$Entry;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class kc2 {
    public static final kc2 a = new kc2();
    public static final Type b = new TypeToken<List<? extends DataSyncFgsRuntimeLedger$Entry>>() { // from class: org.swiftapps.swiftbackup.tasks.fgs.DataSyncFgsRuntimeLedger$listType$1
    }.getType();

    public static ArrayList a(long j, List list) {
        ArrayList arrayList = new ArrayList(hl1.G0(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            DataSyncFgsRuntimeLedger$Entry dataSyncFgsRuntimeLedger$EntryCopy$default = (DataSyncFgsRuntimeLedger$Entry) it.next();
            if (dataSyncFgsRuntimeLedger$EntryCopy$default.getEndMs() == null) {
                dataSyncFgsRuntimeLedger$EntryCopy$default = DataSyncFgsRuntimeLedger$Entry.copy$default(dataSyncFgsRuntimeLedger$EntryCopy$default, null, null, 0L, Long.valueOf(j), false, false, null, jc2.PROCESS_RESTARTED, null, 375, null);
            }
            arrayList.add(dataSyncFgsRuntimeLedger$EntryCopy$default);
        }
        return arrayList;
    }

    public static long b(long j, List list) {
        long j2 = j - 86400000;
        Iterator it = list.iterator();
        long j3 = 0;
        while (it.hasNext()) {
            DataSyncFgsRuntimeLedger$Entry dataSyncFgsRuntimeLedger$Entry = (DataSyncFgsRuntimeLedger$Entry) it.next();
            Long endMs = dataSyncFgsRuntimeLedger$Entry.getEndMs();
            long jLongValue = endMs != null ? endMs.longValue() : j;
            if (jLongValue > j) {
                jLongValue = j;
            }
            long startMs = dataSyncFgsRuntimeLedger$Entry.getStartMs();
            if (startMs < j2) {
                startMs = j2;
            }
            if (jLongValue > startMs) {
                j3 = (jLongValue - startMs) + j3;
            }
        }
        return j3;
    }

    public static void c(String str, jc2 jc2Var) {
        synchronized (a) {
            try {
                str.getClass();
                jc2Var.getClass();
                long jCurrentTimeMillis = System.currentTimeMillis();
                List<DataSyncFgsRuntimeLedger$Entry> listD = d();
                ArrayList arrayList = new ArrayList(hl1.G0(listD, 10));
                for (DataSyncFgsRuntimeLedger$Entry dataSyncFgsRuntimeLedger$EntryCopy$default : listD) {
                    if (pe4.d(dataSyncFgsRuntimeLedger$EntryCopy$default.getId(), str)) {
                        dataSyncFgsRuntimeLedger$EntryCopy$default = DataSyncFgsRuntimeLedger$Entry.copy$default(dataSyncFgsRuntimeLedger$EntryCopy$default, null, null, 0L, Long.valueOf(jCurrentTimeMillis), false, false, null, jc2Var, dataSyncFgsRuntimeLedger$EntryCopy$default.getNote(), 119, null);
                    }
                    arrayList.add(dataSyncFgsRuntimeLedger$EntryCopy$default);
                }
                g(e(arrayList, jCurrentTimeMillis));
                vr6.i$default(vr6.INSTANCE, "DataSyncFgsRuntimeLedger", "Finished dataSync FGS session: id=" + str + ", outcome=" + jc2Var + ", used24h=" + b(jCurrentTimeMillis, arrayList) + "ms", null, 4, null);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static List d() {
        SwiftApp.Companion companion = SwiftApp.d;
        File file = new File(SwiftApp.Companion.c().getFilesDir(), "diagnostics/data_sync_fgs_runtime_ledger.json");
        boolean zExists = file.exists();
        ov2 ov2Var = ov2.a;
        if (!zExists) {
            return ov2Var;
        }
        try {
            FileInputStream fileInputStreamOpenRead = new AtomicFile(file).openRead();
            fileInputStreamOpenRead.getClass();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fileInputStreamOpenRead, f51.a), 8192);
            try {
                gv7 gv7Var = w14.a;
                List list = (List) w14.c().b(bufferedReader, TypeToken.get(b));
                if (list == null) {
                    list = ov2Var;
                }
                bufferedReader.close();
                return list;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    rs9.c(bufferedReader, th);
                    throw th2;
                }
            }
        } catch (Exception e) {
            vr6.e$default(vr6.INSTANCE, "DataSyncFgsRuntimeLedger", "Failed to read dataSync FGS ledger", e, null, 8, null);
            return ov2Var;
        }
    }

    public static List e(ArrayList arrayList, long j) {
        long j2 = j - 86400000;
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            Long endMs = ((DataSyncFgsRuntimeLedger$Entry) obj).getEndMs();
            if ((endMs != null ? endMs.longValue() : j) >= j2) {
                arrayList2.add(obj);
            }
        }
        return el1.q1(200, arrayList2);
    }

    public static void g(List list) {
        try {
            SwiftApp.Companion companion = SwiftApp.d;
            File file = new File(SwiftApp.Companion.c().getFilesDir(), "diagnostics/data_sync_fgs_runtime_ledger.json");
            File parentFile = file.getParentFile();
            if (parentFile != null) {
                parentFile.mkdirs();
            }
            AtomicFile atomicFile = new AtomicFile(file);
            FileOutputStream fileOutputStreamStartWrite = atomicFile.startWrite();
            try {
                gv7 gv7Var = w14.a;
                String strI = w14.c().i(list);
                Charset charset = StandardCharsets.UTF_8;
                charset.getClass();
                byte[] bytes = strI.getBytes(charset);
                bytes.getClass();
                fileOutputStreamStartWrite.write(bytes);
                atomicFile.finishWrite(fileOutputStreamStartWrite);
            } catch (Exception e) {
                atomicFile.failWrite(fileOutputStreamStartWrite);
                throw e;
            }
        } catch (Exception e2) {
            vr6.e$default(vr6.INSTANCE, "DataSyncFgsRuntimeLedger", "Failed to save dataSync FGS ledger", e2, null, 8, null);
        }
    }

    public final synchronized void f(String str, String str2, String str3, boolean z, boolean z2) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        String string = UUID.randomUUID().toString();
        string.getClass();
        g(e(el1.f1(new DataSyncFgsRuntimeLedger$Entry(string, str, jCurrentTimeMillis, Long.valueOf(jCurrentTimeMillis), z, z2, str2, jc2.START_BLOCKED_QUOTA, str3), d()), jCurrentTimeMillis));
    }

    public final synchronized String h(String str, String str2, boolean z, boolean z2) {
        String string;
        long jCurrentTimeMillis = System.currentTimeMillis();
        string = UUID.randomUUID().toString();
        string.getClass();
        List listE = e(el1.f1(new DataSyncFgsRuntimeLedger$Entry(string, str, jCurrentTimeMillis, null, z, z2, str2, null, null, 392, null), d()), jCurrentTimeMillis);
        g(listE);
        vr6.i$default(vr6.INSTANCE, "DataSyncFgsRuntimeLedger", "Started " + str + " dataSync FGS session: id=" + string + ", used24h=" + b(jCurrentTimeMillis, listE) + "ms", null, 4, null);
        return string;
    }
}
