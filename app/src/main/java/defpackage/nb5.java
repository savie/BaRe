package defpackage;

import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.TreeMap;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorCompletionService;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Semaphore;
import org.swiftapps.swiftbackup.cloud.clients.MegaClient$Credentials;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class nb5 {
    public static final nb5 a = new nb5();
    public static final gt7 b;

    /* JADX WARN: Multi-variable type inference failed */
    static {
        new MegaClient$Credentials(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        b = gt7.a;
    }

    public static void a(String str) {
        str.getClass();
        gt7 gt7Var = b;
        gt7Var.getClass();
        String strI0 = nq7.I0(str, '/');
        if (nq7.j0(strI0)) {
            return;
        }
        synchronized (gt7Var) {
            gt7 gt7Var2 = gt7.a;
            pa5 pa5VarM = gt7Var2.d().m(strI0);
            if (pa5VarM == null) {
                return;
            }
            ((sa5) gt7.e.getValue()).b(gt7Var2.f(), pa5VarM);
            gt7.i = null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:126:0x0280 A[Catch: all -> 0x009a, eb5 -> 0x01f8, LOOP:5: B:124:0x027a->B:126:0x0280, LOOP_END, TryCatch #12 {eb5 -> 0x01f8, blocks: (B:123:0x0269, B:124:0x027a, B:126:0x0280, B:127:0x028b, B:128:0x0291, B:90:0x01ea), top: B:170:0x00d7 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r26v0 */
    /* JADX WARN: Type inference failed for: r26v1 */
    /* JADX WARN: Type inference failed for: r26v2 */
    /* JADX WARN: Type inference failed for: r26v3 */
    /* JADX WARN: Type inference failed for: r26v4 */
    /* JADX WARN: Type inference failed for: r27v0 */
    /* JADX WARN: Type inference failed for: r28v1 */
    /* JADX WARN: Type inference failed for: r28v2 */
    /* JADX WARN: Type inference failed for: r28v3 */
    /* JADX WARN: Type inference failed for: r28v4 */
    /* JADX WARN: Type inference failed for: r28v5 */
    /* JADX WARN: Type inference failed for: r28v6 */
    /* JADX WARN: Type inference failed for: r3v18 */
    /* JADX WARN: Type inference failed for: r3v2, types: [pa5] */
    /* JADX WARN: Type inference failed for: r3v29 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v30 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v20, types: [pa5] */
    /* JADX WARN: Type inference failed for: r4v21 */
    /* JADX WARN: Type inference failed for: r4v27 */
    /* JADX WARN: Type inference failed for: r4v31 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Object, jb5] */
    public static void b(q63 q63Var, z95 z95Var, final ft7 ft7Var, String str) {
        gh ghVar;
        ?? r28;
        int[] iArr;
        char c;
        TreeMap treeMap;
        Iterator it;
        Throwable th;
        ?? r26;
        str.getClass();
        q63Var.getClass();
        ft7Var.getClass();
        gt7 gt7Var = b;
        gt7Var.getClass();
        pa5 pa5VarM = gt7Var.d().m(str);
        if (pa5VarM == null) {
            throw new IllegalStateException("MEGA download path does not exist: ".concat(str).toString());
        }
        final ?? r5 = (jb5) gt7.g.getValue();
        gh ghVarF = gt7Var.f();
        r5.getClass();
        int[] iArr2 = pa5VarM.h;
        int[] iArr3 = pa5VarM.g;
        String str2 = pa5VarM.c;
        if (pa5VarM.f != 0) {
            f6.g("MEGA download path is a folder: ".concat(str2));
            return;
        }
        int i = 4;
        if (iArr3.length != 4) {
            f6.g("MEGA file key has invalid size for ".concat(str2));
            return;
        }
        if (iArr2.length != 8) {
            f6.g("MEGA composite file key has invalid size for ".concat(str2));
            return;
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(iArr3.length * 4);
        byteBufferAllocate.getClass();
        for (int i2 : iArr3) {
            byteBufferAllocate.putInt(i2);
        }
        final byte[] bArrArray = byteBufferAllocate.array();
        bArrArray.getClass();
        int i3 = iArr2[4];
        int i4 = iArr2[5];
        final int[] iArr4 = {i3, i4, 0, 0};
        final int[] iArr5 = {i3, i4, i3, i4};
        ?? r4 = 0;
        ?? r3 = pa5VarM;
        while (true) {
            try {
                final ConcurrentHashMap.KeySetView keySetViewNewKeySet = ConcurrentHashMap.newKeySet();
                try {
                    final gb5 gb5VarM = r5.m(ghVarF, r3);
                    byte[] bArr = qa5.a;
                    qa5.a(iArr3, gb5VarM.c);
                    ArrayList arrayListD = jb5.d(gb5VarM.b);
                    List listH = jb5.h(arrayListD);
                    int size = arrayListD.size();
                    ArrayList arrayList = new ArrayList(size);
                    int i5 = 0;
                    while (i5 < size) {
                        arrayList.add(new byte[0]);
                        i5++;
                        i = i;
                    }
                    int i6 = i;
                    ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(i6);
                    ExecutorCompletionService executorCompletionService = new ExecutorCompletionService(executorServiceNewFixedThreadPool);
                    final Semaphore semaphore = new Semaphore(i6);
                    TreeMap treeMap2 = new TreeMap();
                    q63Var.h();
                    q63 q63VarT = q63Var.t();
                    if (q63VarT != null) {
                        q63.E(q63VarT);
                    }
                    ghVar = ghVarF;
                    iArr = iArr3;
                    try {
                        try {
                            OutputStream outputStreamF = q63Var.F(true);
                            try {
                                Iterator it2 = listH.iterator();
                                long j = 0;
                                int i7 = 0;
                                int i8 = 0;
                                int i9 = 0;
                                r3 = r3;
                                r4 = r4;
                                while (true) {
                                    r26 = r3;
                                    int i10 = 2;
                                    if (!it2.hasNext()) {
                                        break;
                                    }
                                    try {
                                        final ya5 ya5Var = (ya5) it2.next();
                                        jb5.t(ft7Var);
                                        semaphore.acquire();
                                        ?? r27 = r4;
                                        try {
                                            int i11 = i7;
                                            ArrayList arrayList2 = arrayList;
                                            treeMap = treeMap2;
                                            try {
                                                executorCompletionService.submit(new Callable() { // from class: va5
                                                    @Override // java.util.concurrent.Callable
                                                    public final Object call() {
                                                        jb5 jb5Var = r5;
                                                        gb5 gb5Var = gb5VarM;
                                                        ya5 ya5Var2 = ya5Var;
                                                        ft7 ft7Var2 = ft7Var;
                                                        ConcurrentHashMap.KeySetView keySetView = keySetViewNewKeySet;
                                                        byte[] bArr2 = bArrArray;
                                                        int[] iArr6 = iArr4;
                                                        Semaphore semaphore2 = semaphore;
                                                        int[] iArr7 = iArr5;
                                                        try {
                                                            int i12 = jb5.h;
                                                            String str3 = gb5Var.a;
                                                            long j2 = ya5Var2.b;
                                                            long j3 = ya5Var2.b;
                                                            int i13 = ya5Var2.c;
                                                            keySetView.getClass();
                                                            byte[] bArrG = jb5Var.g(str3, j2, i13, ft7Var2, keySetView);
                                                            byte[] bArrF = jb5.f(bArr2, iArr6, j3, bArrG);
                                                            try {
                                                                List<cb5> list = ya5Var2.d;
                                                                ArrayList arrayList3 = new ArrayList(hl1.G0(list, 10));
                                                                for (cb5 cb5Var : list) {
                                                                    db5 db5Var = cb5Var.b;
                                                                    int i14 = (int) (db5Var.a - j3);
                                                                    arrayList3.add(new bb5(jb5.c(bArr2, iArr7, bArrF, i14, db5Var.b), cb5Var.a));
                                                                }
                                                                za5 za5Var = new za5(ya5Var2.a, bArrF, arrayList3);
                                                                Arrays.fill(bArrG, (byte) 0);
                                                                semaphore2.release();
                                                                return za5Var;
                                                            } catch (Throwable th2) {
                                                                Arrays.fill(bArrF, (byte) 0);
                                                                Arrays.fill(bArrG, (byte) 0);
                                                                throw th2;
                                                            }
                                                        } catch (Throwable th3) {
                                                            semaphore2.release();
                                                            throw th3;
                                                        }
                                                    }
                                                });
                                                int i12 = i11 + 1;
                                                int i13 = jb5.i(executorCompletionService, i8, i12, false, new nj2(i10, treeMap, arrayList2));
                                                while (true) {
                                                    try {
                                                        byte[] bArr2 = (byte[]) treeMap.remove(Integer.valueOf(i9));
                                                        if (bArr2 == null) {
                                                            break;
                                                        }
                                                        int i14 = i12;
                                                        try {
                                                            outputStreamF.write(bArr2);
                                                            long length = j + ((long) bArr2.length);
                                                            z95Var.a(length);
                                                            j = length;
                                                            Arrays.fill(bArr2, (byte) 0);
                                                            i9++;
                                                            i12 = i14;
                                                            i10 = 2;
                                                        } catch (Throwable th2) {
                                                            Arrays.fill(bArr2, (byte) 0);
                                                            throw th2;
                                                        }
                                                        th = th;
                                                    } catch (Throwable th3) {
                                                        th = th3;
                                                    }
                                                    th = th;
                                                    try {
                                                        throw th;
                                                    } catch (Throwable th4) {
                                                        try {
                                                            rs9.c(outputStreamF, th);
                                                            throw th4;
                                                        } catch (Throwable th5) {
                                                            th = th5;
                                                            keySetViewNewKeySet.getClass();
                                                            jb5.b(keySetViewNewKeySet);
                                                            Collection collectionValues = treeMap.values();
                                                            collectionValues.getClass();
                                                            it = collectionValues.iterator();
                                                            while (it.hasNext()) {
                                                                Arrays.fill((byte[]) it.next(), (byte) 0);
                                                            }
                                                            treeMap.clear();
                                                            executorServiceNewFixedThreadPool.shutdownNow();
                                                            throw th;
                                                        }
                                                    }
                                                }
                                                i8 = i13;
                                                while (treeMap.size() >= 4) {
                                                    i8 = jb5.i(executorCompletionService, i8, i12, true, new jj2(i10, treeMap, arrayList2));
                                                    while (true) {
                                                        byte[] bArr3 = (byte[]) treeMap.remove(Integer.valueOf(i9));
                                                        if (bArr3 == null) {
                                                            break;
                                                        }
                                                        try {
                                                            outputStreamF.write(bArr3);
                                                            int i15 = i12;
                                                            long length2 = j + ((long) bArr3.length);
                                                            try {
                                                                z95Var.a(length2);
                                                                j = length2;
                                                                try {
                                                                    Arrays.fill(bArr3, (byte) 0);
                                                                    i9++;
                                                                    i12 = i15;
                                                                    i10 = 2;
                                                                } catch (Throwable th6) {
                                                                    th = th6;
                                                                }
                                                            } catch (Throwable th7) {
                                                                th = th7;
                                                                Arrays.fill(bArr3, (byte) 0);
                                                                throw th;
                                                            }
                                                        } catch (Throwable th8) {
                                                            th = th8;
                                                        }
                                                    }
                                                }
                                                treeMap2 = treeMap;
                                                arrayList = arrayList2;
                                                i7 = i12;
                                                r3 = r26;
                                                r4 = r27 == true ? 1 : 0;
                                            } catch (Throwable th9) {
                                                th = th9;
                                                semaphore.release();
                                                throw th;
                                            }
                                        } catch (Throwable th10) {
                                            th = th10;
                                        }
                                    } catch (Throwable th11) {
                                        th = th11;
                                        treeMap = treeMap2;
                                    }
                                }
                                int i16 = i7;
                                r28 = r4;
                                ArrayList arrayList3 = arrayList;
                                treeMap = treeMap2;
                                try {
                                    jb5.i(executorCompletionService, i8, i16, true, new hq0(2, treeMap, arrayList3));
                                    int i17 = i9;
                                    r26 = r26;
                                    while (true) {
                                        byte[] bArr4 = (byte[]) treeMap.remove(Integer.valueOf(i17));
                                        if (bArr4 == null) {
                                            break;
                                        }
                                        ?? r6 = r26;
                                        try {
                                            outputStreamF.write(bArr4);
                                            long length3 = j + ((long) bArr4.length);
                                            z95Var.a(length3);
                                            try {
                                                Arrays.fill(bArr4, (byte) 0);
                                                i17++;
                                                r26 = r6;
                                                j = length3;
                                            } catch (Throwable th12) {
                                                th = th12;
                                            }
                                        } catch (Throwable th13) {
                                            Arrays.fill(bArr4, (byte) 0);
                                            throw th13;
                                        }
                                        th = th;
                                        throw th;
                                    }
                                    if (i17 != listH.size()) {
                                        throw new IllegalStateException(("MEGA download did not write all requests: written=" + i17 + " total=" + listH.size()).toString());
                                    }
                                    try {
                                        outputStreamF.close();
                                        try {
                                            executorServiceNewFixedThreadPool.shutdownNow();
                                            jb5.w(r26, bArrArray, arrayList3);
                                            Arrays.fill(bArrArray, (byte) 0);
                                            Arrays.fill(iArr4, 0);
                                            Arrays.fill(iArr5, 0);
                                            return;
                                        } catch (eb5 e) {
                                            e = e;
                                            r4 = r26;
                                            c = r28 == true ? 1 : 0;
                                            if (c >= 16 || ft7Var.a.get()) {
                                                throw e;
                                            }
                                            r3 = r4;
                                            ghVarF = ghVar;
                                            iArr3 = iArr;
                                            i = 4;
                                            r4 = (c == true ? 1 : 0) + 1;
                                        }
                                    } catch (Throwable th14) {
                                        th = th14;
                                        keySetViewNewKeySet.getClass();
                                        jb5.b(keySetViewNewKeySet);
                                        Collection collectionValues2 = treeMap.values();
                                        collectionValues2.getClass();
                                        it = collectionValues2.iterator();
                                        while (it.hasNext()) {
                                            Arrays.fill((byte[]) it.next(), (byte) 0);
                                        }
                                        treeMap.clear();
                                        executorServiceNewFixedThreadPool.shutdownNow();
                                        throw th;
                                    }
                                } catch (Throwable th15) {
                                    th = th15;
                                }
                            } catch (Throwable th16) {
                                th = th16;
                                treeMap = treeMap2;
                            }
                        } catch (Throwable th17) {
                            th = th17;
                            treeMap = treeMap2;
                        }
                    } catch (eb5 e2) {
                        e = e2;
                    }
                } catch (eb5 e3) {
                    e = e3;
                    ghVar = ghVarF;
                    r28 = r4;
                    iArr = iArr3;
                    r4 = r3;
                }
                r3 = r4;
                ghVarF = ghVar;
                iArr3 = iArr;
                i = 4;
                r4 = (c == true ? 1 : 0) + 1;
            } catch (Throwable th18) {
                q63Var.h();
                Arrays.fill(bArrArray, (byte) 0);
                Arrays.fill(iArr4, 0);
                Arrays.fill(iArr5, 0);
                throw th18;
            }
        }
        throw e;
    }

    public static ArrayList c(String str) {
        str.getClass();
        gt7 gt7Var = b;
        gt7Var.getClass();
        vq vqVarD = gt7Var.d();
        pa5 pa5VarM = vqVarD.m(str);
        List<mb5> list = ov2.a;
        if (pa5VarM != null) {
            List list2 = (List) ((LinkedHashMap) vqVarD.c).get(pa5VarM.a);
            if (list2 != null) {
                list = list2;
            }
            ArrayList arrayList = new ArrayList(hl1.G0(list, 10));
            for (pa5 pa5Var : list) {
                String strI0 = nq7.I0(str, '/');
                String str2 = pa5Var.a;
                String str3 = pa5Var.b;
                String str4 = pa5Var.c;
                List listA0 = fl1.A0(strI0, str4);
                ArrayList arrayList2 = new ArrayList();
                for (Object obj : listA0) {
                    if (!nq7.j0((String) obj)) {
                        arrayList2.add(obj);
                    }
                }
                String strY0 = el1.Y0(arrayList2, "/", null, null, null, 62);
                long j = pa5Var.d;
                long j2 = pa5Var.e;
                arrayList.add(new mb5(str2, str3, str4, strY0, j, j2, j2, pa5Var.f != 0));
            }
            list = arrayList;
        }
        ArrayList arrayList3 = new ArrayList(hl1.G0(list, 10));
        for (mb5 mb5Var : list) {
            mb5Var.getClass();
            String str5 = mb5Var.c;
            String str6 = mb5Var.d;
            pg1 pg1Var = new pg1(str5, str6);
            pg1Var.c = mb5Var.e;
            pg1Var.d = mb5Var.f;
            pg1Var.e = mb5Var.g;
            pg1Var.f = str6;
            pg1Var.g = mb5Var.h;
            arrayList3.add(pg1Var);
        }
        return arrayList3;
    }
}
