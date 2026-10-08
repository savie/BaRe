package defpackage;

import android.content.Context;
import android.util.Log;
import android.view.View;
import android.widget.LinearLayout;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Stack;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ca3 implements jk8 {
    public final Object a;
    public final Object b;
    public final Object c;
    public final Object d;
    public final Object e;
    public final Object f;
    public final Object k;

    public ca3(Context context) {
        String string;
        String str = ((wc0) l76.a.b(context)).a;
        this.a = str;
        File filesDir = context.getFilesDir();
        this.b = filesDir;
        if (str.isEmpty()) {
            string = ".com.google.firebase.crashlytics.files.v1";
        } else {
            StringBuilder sb = new StringBuilder(".crashlytics.v3");
            sb.append(File.separator);
            sb.append(str.length() > 40 ? jm1.W(str) : str.replaceAll("[^a-zA-Z0-9.]", "_"));
            string = sb.toString();
        }
        File file = new File(filesDir, string);
        j(file);
        this.c = file;
        File file2 = new File(file, "open-sessions");
        j(file2);
        this.d = file2;
        File file3 = new File(file, "reports");
        j(file3);
        this.e = file3;
        File file4 = new File(file, "priority-reports");
        j(file4);
        this.f = file4;
        File file5 = new File(file, "native-reports");
        j(file5);
        this.k = file5;
    }

    public static mc0 a(mc0 mc0Var, ot9 ot9Var, i75 i75Var, Map map) {
        Map mapUnmodifiableMap;
        Map mapUnmodifiableMap2;
        Map mapUnmodifiableMap3;
        lc0 lc0VarA = mc0Var.a();
        String strE = ((w83) ot9Var.b).e();
        if (strE != null) {
            lc0VarA.e = new zc0(strE);
        } else if (Log.isLoggable("FirebaseCrashlytics", 2)) {
            Log.v("FirebaseCrashlytics", "No log data to include with this event.", null);
        }
        boolean zIsEmpty = map.isEmpty();
        fh8 fh8Var = (fh8) i75Var.d;
        if (zIsEmpty) {
            bp4 bp4Var = (bp4) fh8Var.a.getReference();
            synchronized (bp4Var) {
                mapUnmodifiableMap2 = Collections.unmodifiableMap(new HashMap(bp4Var.a));
            }
        } else {
            bp4 bp4Var2 = (bp4) fh8Var.a.getReference();
            synchronized (bp4Var2) {
                mapUnmodifiableMap = Collections.unmodifiableMap(new HashMap(bp4Var2.a));
            }
            HashMap map2 = new HashMap(mapUnmodifiableMap);
            int i = 0;
            for (Map.Entry entry : map.entrySet()) {
                String strA = bp4.a(1024, (String) entry.getKey());
                if (map2.size() < 64 || map2.containsKey(strA)) {
                    map2.put(strA, bp4.a(1024, (String) entry.getValue()));
                } else {
                    i++;
                }
            }
            if (i > 0) {
                Log.w("FirebaseCrashlytics", "Ignored " + i + " keys when adding event specific keys. Maximum allowable: 1024", null);
            }
            mapUnmodifiableMap2 = Collections.unmodifiableMap(map2);
        }
        List listH = h(mapUnmodifiableMap2);
        bp4 bp4Var3 = (bp4) ((fh8) i75Var.e).a.getReference();
        synchronized (bp4Var3) {
            mapUnmodifiableMap3 = Collections.unmodifiableMap(new HashMap(bp4Var3.a));
        }
        List listH2 = h(mapUnmodifiableMap3);
        if (!listH.isEmpty() || !listH2.isEmpty()) {
            nc0 nc0Var = (nc0) mc0Var.c;
            lc0VarA.c = new nc0(nc0Var.a, listH, listH2, nc0Var.d, nc0Var.e, nc0Var.f, nc0Var.g);
        }
        return lc0VarA.a();
    }

    public static yz1 b(mc0 mc0Var, i75 i75Var) {
        List listUnmodifiableList;
        i66 i66Var = (i66) i75Var.f;
        synchronized (i66Var) {
            listUnmodifiableList = Collections.unmodifiableList(new ArrayList((ArrayList) i66Var.b));
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < listUnmodifiableList.size(); i++) {
            yn6 yn6Var = (yn6) listUnmodifiableList.get(i);
            yn6Var.getClass();
            ad0 ad0Var = new ad0();
            fe0 fe0Var = (fe0) yn6Var;
            String str = fe0Var.e;
            if (str == null) {
                f6.n("Null variantId");
                return null;
            }
            String str2 = fe0Var.b;
            if (str2 == null) {
                f6.n("Null rolloutId");
                return null;
            }
            ad0Var.a = new cd0(str2, str);
            String str3 = fe0Var.c;
            if (str3 == null) {
                f6.n("Null parameterKey");
                return null;
            }
            ad0Var.b = str3;
            ad0Var.c = fe0Var.d;
            ad0Var.d = fe0Var.f;
            ad0Var.e = (byte) (ad0Var.e | 1);
            arrayList.add(ad0Var.a());
        }
        if (arrayList.isEmpty()) {
            return mc0Var;
        }
        lc0 lc0VarA = mc0Var.a();
        lc0VarA.f = new dd0(arrayList);
        return lc0VarA.a();
    }

    public static String d(InputStream inputStream) throws IOException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                byte[] bArr = new byte[8192];
                while (true) {
                    int i = bufferedInputStream.read(bArr);
                    if (i == -1) {
                        String string = byteArrayOutputStream.toString(StandardCharsets.UTF_8.name());
                        byteArrayOutputStream.close();
                        bufferedInputStream.close();
                        return string;
                    }
                    byteArrayOutputStream.write(bArr, 0, i);
                    try {
                        bufferedInputStream.close();
                    } catch (Throwable th) {
                        th.addSuppressed(th);
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        } catch (Throwable th4) {
            bufferedInputStream.close();
            throw th4;
        }
    }

    public static ca3 e(Context context, k94 k94Var, ca3 ca3Var, cq cqVar, ot9 ot9Var, i75 i75Var, oe oeVar, f80 f80Var, c00 c00Var, oy1 oy1Var, s02 s02Var) {
        d02 d02Var = new d02(context, k94Var, cqVar, oeVar, f80Var);
        k02 k02Var = new k02(ca3Var, f80Var, oy1Var);
        f02 f02Var = rc2.b;
        ya8.b(context);
        return new ca3(d02Var, k02Var, new rc2(new dk6(ya8.a().c(new oy0(rc2.c, rc2.d)).a("FIREBASE_CRASHLYTICS_REPORT", new dw2("json"), rc2.e), f80Var.c(), c00Var)), ot9Var, i75Var, k94Var, s02Var);
    }

    public static List h(Map map) {
        ArrayList arrayList = new ArrayList();
        arrayList.ensureCapacity(map.size());
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            if (str == null) {
                f6.n("Null key");
                return null;
            }
            String str2 = (String) entry.getValue();
            if (str2 == null) {
                f6.n("Null value");
                return null;
            }
            arrayList.add(new cc0(str, str2));
        }
        Collections.sort(arrayList, new g97());
        return Collections.unmodifiableList(arrayList);
    }

    public static synchronized void j(File file) {
        try {
            if (file.exists()) {
                if (file.isDirectory()) {
                    return;
                }
                String str = "Unexpected non-directory file: " + file + "; deleting file and creating new directory.";
                if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                    Log.d("FirebaseCrashlytics", str, null);
                }
                file.delete();
            }
            if (!file.mkdirs()) {
                Log.e("FirebaseCrashlytics", "Could not create Crashlytics-specific directory: " + file, null);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public static boolean k(File file) {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                k(file2);
            }
        }
        return file.delete();
    }

    public static List l(Object[] objArr) {
        return objArr == null ? Collections.EMPTY_LIST : Arrays.asList(objArr);
    }

    public void c(String str) {
        File file = new File((File) this.b, str);
        if (file.exists() && k(file)) {
            String str2 = "Deleted previous Crashlytics file system: " + file.getPath();
            if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                Log.d("FirebaseCrashlytics", str2, null);
            }
        }
    }

    public File f(String str) {
        File file = new File((File) this.d, str);
        file.mkdirs();
        File file2 = new File(file, "native");
        file2.mkdirs();
        return file2;
    }

    public File g(String str, String str2) {
        File file = new File((File) this.d, str);
        file.mkdirs();
        return new File(file, str2);
    }

    @Override // defpackage.jk8
    public View getRoot() {
        return (LinearLayout) this.a;
    }

    public void i(Throwable th, Thread thread, String str, final az2 az2Var, boolean z) {
        final boolean zEquals = str.equals("crash");
        d02 d02Var = (d02) this.a;
        long j = az2Var.b;
        Context context = d02Var.a;
        int i = context.getResources().getConfiguration().orientation;
        oe oeVar = d02Var.d;
        Stack stack = new Stack();
        for (Throwable cause = th; cause != null; cause = cause.getCause()) {
            stack.push(cause);
        }
        y8 y8Var = null;
        while (!stack.isEmpty()) {
            Throwable th2 = (Throwable) stack.pop();
            y8Var = new y8(th2.getLocalizedMessage(), th2.getClass().getName(), oeVar.l(th2.getStackTrace()), y8Var);
        }
        lc0 lc0Var = new lc0();
        lc0Var.b = str;
        lc0Var.a = j;
        lc0Var.g = (byte) (lc0Var.g | 1);
        rz1 rz1VarB = l76.a.b(context);
        int i2 = ((wc0) rz1VarB).c;
        Boolean boolValueOf = i2 > 0 ? Boolean.valueOf(i2 != 100) : null;
        ArrayList arrayListA = l76.a(context);
        ArrayList arrayList = new ArrayList();
        StackTraceElement[] stackTraceElementArr = (StackTraceElement[]) y8Var.c;
        String name = thread.getName();
        if (name == null) {
            f6.n("Null name");
            return;
        }
        List listD = d02.d(stackTraceElementArr, 4);
        if (listD == null) {
            f6.n("Null frames");
            return;
        }
        arrayList.add(new sc0(4, name, listD));
        if (z) {
            for (Iterator<Map.Entry<Thread, StackTraceElement[]>> it = Thread.getAllStackTraces().entrySet().iterator(); it.hasNext(); it = it) {
                Map.Entry<Thread, StackTraceElement[]> next = it.next();
                Thread key = next.getKey();
                if (!key.equals(thread)) {
                    StackTraceElement[] stackTraceElementArrL = oeVar.l(next.getValue());
                    String name2 = key.getName();
                    if (name2 == null) {
                        f6.n("Null name");
                        return;
                    }
                    List listD2 = d02.d(stackTraceElementArrL, 0);
                    if (listD2 == null) {
                        f6.n("Null frames");
                        return;
                    }
                    arrayList.add(new sc0(0, name2, listD2));
                }
            }
        }
        List listUnmodifiableList = Collections.unmodifiableList(arrayList);
        qc0 qc0VarC = d02.c(y8Var, 0);
        rc0 rc0VarE = d02.e();
        List listA = d02Var.a();
        if (listA == null) {
            f6.n("Null binaries");
            return;
        }
        lc0Var.c = new nc0(new oc0(listUnmodifiableList, qc0VarC, null, rc0VarE, listA), null, null, boolValueOf, rz1VarB, arrayListA, i);
        lc0Var.d = d02Var.b(i);
        mc0 mc0VarA = lc0Var.a();
        Map map = az2Var.c;
        ot9 ot9Var = (ot9) this.d;
        i75 i75Var = (i75) this.e;
        final yz1 yz1VarB = b(a(mc0VarA, ot9Var, i75Var, map), i75Var);
        if (z) {
            ((k02) this.b).d(yz1VarB, az2Var.a, zEquals);
        } else {
            ((o02) ((s02) this.k).b).a(new Runnable() { // from class: f97
                @Override // java.lang.Runnable
                public final void run() {
                    if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                        Log.d("FirebaseCrashlytics", "disk worker: log non-fatal event to persistence", null);
                    }
                    ((k02) this.a.b).d(yz1VarB, az2Var.a, zEquals);
                }
            });
        }
    }

    public Task m(String str, Executor executor) {
        TaskCompletionSource taskCompletionSource;
        ArrayList<File> arrayListB = ((k02) this.b).b();
        ArrayList<yb0> arrayList = new ArrayList();
        for (File file : arrayListB) {
            try {
                f02 f02Var = k02.g;
                String strE = k02.e(file);
                f02Var.getClass();
                arrayList.add(new yb0(f02.i(strE), file.getName(), file));
            } catch (IOException e) {
                Log.w("FirebaseCrashlytics", "Could not load report file " + file + "; deleting", e);
                file.delete();
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (yb0 yb0Var : arrayList) {
            if (str == null || str.equals(yb0Var.b)) {
                rc2 rc2Var = (rc2) this.c;
                xb0 xb0Var = yb0Var.a;
                int i = 1;
                if (xb0Var.f == null || xb0Var.g == null) {
                    mg3 mg3VarB = ((k94) this.f).b(true);
                    xb0 xb0Var2 = yb0Var.a;
                    String str2 = mg3VarB.a;
                    wb0 wb0VarA = xb0Var2.a();
                    wb0VarA.e = str2;
                    xb0 xb0VarA = wb0VarA.a();
                    String str3 = mg3VarB.b;
                    wb0 wb0VarA2 = xb0VarA.a();
                    wb0VarA2.f = str3;
                    yb0Var = new yb0(wb0VarA2.a(), yb0Var.b, yb0Var.c);
                }
                boolean z = str != null;
                dk6 dk6Var = rc2Var.a;
                synchronized (dk6Var.f) {
                    try {
                        taskCompletionSource = new TaskCompletionSource();
                        if (z) {
                            ((AtomicInteger) dk6Var.i.b).getAndIncrement();
                            if (dk6Var.f.size() < dk6Var.e) {
                                nh4 nh4Var = nh4.c;
                                nh4Var.h("Enqueueing report: " + yb0Var.b);
                                nh4Var.h("Queue size: " + dk6Var.f.size());
                                dk6Var.g.execute(new rj6(i, dk6Var, yb0Var, taskCompletionSource));
                                nh4Var.h("Closing task for report: " + yb0Var.b);
                                taskCompletionSource.trySetResult(yb0Var);
                            } else {
                                dk6Var.a();
                                String str4 = "Dropping report due to queue being full: " + yb0Var.b;
                                if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                                    Log.d("FirebaseCrashlytics", str4, null);
                                }
                                ((AtomicInteger) dk6Var.i.c).getAndIncrement();
                                taskCompletionSource.trySetResult(yb0Var);
                            }
                        } else {
                            dk6Var.b(yb0Var, taskCompletionSource);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                arrayList2.add(taskCompletionSource.getTask().continueWith(executor, new f6(this)));
            }
        }
        return Tasks.whenAll(arrayList2);
    }

    public /* synthetic */ ca3(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7) {
        this.a = obj;
        this.b = obj2;
        this.c = obj3;
        this.d = obj4;
        this.e = obj5;
        this.f = obj6;
        this.k = obj7;
    }
}
