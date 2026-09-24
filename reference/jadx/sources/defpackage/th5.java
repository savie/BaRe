package defpackage;

import android.os.ParcelFileDescriptor;
import com.swiftapps.sba.SbaZstdNative;
import com.swiftapps.sba.internal.progress.SbaNativeProgressListener;
import java.io.FileDescriptor;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import org.swiftapps.swiftbackup.compress.compressor.MultiCompressor$CompressedFileMetadata;
import org.swiftapps.swiftbackup.compress.compressor.MultiCompressor$Type;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class th5 {
    public static final MultiCompressor$Type a = MultiCompressor$Type.ZSTD;

    /* JADX WARN: Type inference failed for: r5v3, types: [m27] */
    public static q63 a(q63 q63Var, q63 q63Var2, MultiCompressor$CompressedFileMetadata multiCompressor$CompressedFileMetadata, boolean z, qw qwVar) throws IOException {
        String strP = q63Var.p();
        q63 q63Var3 = new q63(2, q63Var2, nq7.E0('.', strP, strP));
        q63Var3.h();
        long decompressedSize = multiCompressor$CompressedFileMetadata.getDecompressedSize();
        sh5 sh5Var = new sh5(decompressedSize, qwVar);
        System.currentTimeMillis();
        ParcelFileDescriptor parcelFileDescriptorR = q63Var.r(1);
        if (parcelFileDescriptorR == null) {
            g84.f(xs1.i(q63Var, "Unable to open zstd input fd for "));
            return null;
        }
        try {
            ParcelFileDescriptor parcelFileDescriptorR2 = q63Var3.r(2);
            if (parcelFileDescriptorR2 == null) {
                throw new IllegalStateException(("Unable to open zstd output fd for " + q63Var3).toString());
            }
            try {
                FileDescriptor fileDescriptor = parcelFileDescriptorR.getFileDescriptor();
                fileDescriptor.getClass();
                FileDescriptor fileDescriptor2 = parcelFileDescriptorR2.getFileDescriptor();
                fileDescriptor2.getClass();
                final sn1 sn1Var = new sn1(sh5Var, 5);
                try {
                    ge.B(SbaZstdNative.a(fileDescriptor, fileDescriptor2, new SbaNativeProgressListener() { // from class: m27
                        @Override // com.swiftapps.sba.internal.progress.SbaNativeProgressListener
                        public final void onProgress(long j, long j2) {
                            sh5 sh5Var2 = (sh5) sn1Var.b;
                            long j3 = sh5Var2.a;
                            if (j2 == 0) {
                                return;
                            }
                            long jCurrentTimeMillis = System.currentTimeMillis();
                            long j4 = jCurrentTimeMillis - sh5Var2.d;
                            boolean z2 = j2 >= j3;
                            if (j4 >= 1000 || z2) {
                                sh5Var2.d = jCurrentTimeMillis;
                                sh5Var2.b.a(Long.valueOf(j2), Long.valueOf(j3), Long.valueOf(z2 ? 0L : tu0.w((j2 - sh5Var2.c) / (j4 / 1000))));
                                sh5Var2.c = j2;
                            }
                        }
                    }));
                    parcelFileDescriptorR2.close();
                    parcelFileDescriptorR.close();
                    if (!q63Var3.j()) {
                        String strI = xs1.i(q63Var3, "Failed to decompress file ");
                        vr6 vr6Var = vr6.INSTANCE;
                        vr6.e$default(vr6Var, "MultiCompressor", strI, null, 4, null);
                        io4.j("MultiCompressor", "MultiCompressor.decompress", true, new ak(q63Var3, 28), 8);
                        if (z) {
                            vr6.i$default(vr6Var, "MultiCompressor", "Retrying decompression", null, 4, null);
                            return a(q63Var, q63Var2, multiCompressor$CompressedFileMetadata, false, qwVar);
                        }
                        l0.e(strI);
                        return null;
                    }
                    long jA = q63Var3.A();
                    if (jA <= 0) {
                        p93 p93Var = p93.a;
                        g84.f("Decompressed file has invalid size: ".concat(p93.c(Long.valueOf(jA))));
                        return null;
                    }
                    if (jA != decompressedSize) {
                        p93 p93Var2 = p93.a;
                        vr6.e$default(vr6.INSTANCE, "MultiCompressor", dj7.l("Decompressed file size mismatch: Expected=", decompressedSize + " (" + p93.c(Long.valueOf(decompressedSize)) + ")", ", Actual=", jA + " (" + p93.c(Long.valueOf(jA)) + ")"), null, 4, null);
                    }
                    q63Var.h();
                    return q63Var3;
                } catch (IOException e) {
                    throw new yy6("Native zstd decompress failed: " + e.getMessage(), e);
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    rs9.c(parcelFileDescriptorR2, th);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            try {
                throw th3;
            } catch (Throwable th4) {
                rs9.c(parcelFileDescriptorR, th3);
                throw th4;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:32:0x00b0  */
    public static ArrayList b(ArrayList arrayList, q63 q63Var, rt3 rt3Var) {
        Object next;
        MultiCompressor$CompressedFileMetadata multiCompressor$CompressedFileMetadata;
        arrayList.getClass();
        q63Var.getClass();
        ArrayList<q63> arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (((q63) obj).m().equals("compressed")) {
                arrayList2.add(obj);
            }
        }
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : arrayList) {
            if (((q63) obj2).m().equals("meta")) {
                arrayList3.add(obj2);
            }
        }
        int iQ0 = x65.q0(hl1.G0(arrayList2, 10));
        if (iQ0 < 16) {
            iQ0 = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(iQ0);
        for (q63 q63Var2 : arrayList2) {
            Iterator it = arrayList3.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!((q63) next).p().equals(q63Var2.p().concat(".meta")));
            q63 q63Var3 = (q63) next;
            if (q63Var3 != null) {
                gv7 gv7Var = w14.a;
                multiCompressor$CompressedFileMetadata = (MultiCompressor$CompressedFileMetadata) w14.a(q63Var3, MultiCompressor$CompressedFileMetadata.class);
                if (multiCompressor$CompressedFileMetadata == null) {
                    vr6.e$default(vr6.INSTANCE, "MultiCompressor", xs1.i(q63Var2, "Metadata null for file "), null, 4, null);
                    multiCompressor$CompressedFileMetadata = new MultiCompressor$CompressedFileMetadata(null, q63Var2.A(), 1, null);
                }
            } else {
                vr6.e$default(vr6.INSTANCE, "MultiCompressor", xs1.i(q63Var2, "Metadata null for file "), null, 4, null);
                multiCompressor$CompressedFileMetadata = new MultiCompressor$CompressedFileMetadata(null, q63Var2.A(), 1, null);
            }
            linkedHashMap.put(q63Var2, multiCompressor$CompressedFileMetadata);
        }
        ArrayList arrayList4 = new ArrayList();
        kh6 kh6Var = new kh6();
        Iterator it2 = linkedHashMap.values().iterator();
        long decompressedSize = 0;
        while (it2.hasNext()) {
            decompressedSize += ((MultiCompressor$CompressedFileMetadata) it2.next()).getDecompressedSize();
        }
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            q63 q63Var4 = (q63) entry.getKey();
            MultiCompressor$CompressedFileMetadata multiCompressor$CompressedFileMetadata2 = (MultiCompressor$CompressedFileMetadata) entry.getValue();
            arrayList4.add(a(q63Var4, q63Var, multiCompressor$CompressedFileMetadata2, true, new qw(kh6Var, rt3Var, decompressedSize)));
            kh6Var.a = multiCompressor$CompressedFileMetadata2.getDecompressedSize() + kh6Var.a;
        }
        if (rt3Var != null) {
            rt3Var.a(Long.valueOf(decompressedSize), Long.valueOf(decompressedSize), 0L);
        }
        Iterator it3 = arrayList3.iterator();
        while (it3.hasNext()) {
            ((q63) it3.next()).h();
        }
        return arrayList4;
    }

    public static long c(ArrayList arrayList) {
        arrayList.getClass();
        ArrayList<q63> arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (((q63) obj).m().equals("meta")) {
                arrayList2.add(obj);
            }
        }
        ArrayList arrayList3 = new ArrayList();
        for (q63 q63Var : arrayList2) {
            gv7 gv7Var = w14.a;
            MultiCompressor$CompressedFileMetadata multiCompressor$CompressedFileMetadata = (MultiCompressor$CompressedFileMetadata) w14.a(q63Var, MultiCompressor$CompressedFileMetadata.class);
            if (multiCompressor$CompressedFileMetadata != null) {
                arrayList3.add(multiCompressor$CompressedFileMetadata);
            }
        }
        Iterator it = arrayList3.iterator();
        long decompressedSize = 0;
        while (it.hasNext()) {
            decompressedSize += ((MultiCompressor$CompressedFileMetadata) it.next()).getDecompressedSize();
        }
        return decompressedSize;
    }
}
