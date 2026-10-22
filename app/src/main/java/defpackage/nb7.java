package defpackage;

import android.util.Log;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class nb7 {
    public static final void a(q63 q63Var, q63 q63Var2, List list, rt3 rt3Var, char[] cArr) {
        q63 q63VarT;
        byte[] bArrArray;
        q63Var.getClass();
        q63Var2.getClass();
        if (!q63Var2.j() && !q63.E(q63Var2)) {
            g84.f(xs1.i(q63Var2, "LegacySevenZipArchive: Unable to create destination dir at "));
            return;
        }
        ov2 ov2Var = ov2.a;
        List<String> list2 = list == null ? ov2Var : list;
        ArrayList arrayList = new ArrayList(hl1.G0(list2, 10));
        for (String str : list2) {
            arrayList.add(nq7.j0(str) ? "" : jq6.v(str));
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (((String) obj).length() > 0) {
                arrayList2.add(obj);
            }
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        boolean z = true;
        c73 c73VarL = q63Var.l(1);
        if (c73VarL == null) {
            g84.f(xs1.i(q63Var, "LegacySevenZipArchive: Unable to open archive channel: "));
            return;
        }
        try {
            db7 db7VarB = eb7.b();
            db7VarB.t = c73VarL.a;
            if (cArr != null && cArr.length != 0) {
                char[] cArr2 = (char[]) cArr.clone();
                if (cArr2 == null) {
                    bArrArray = null;
                } else {
                    ByteBuffer byteBufferEncode = StandardCharsets.UTF_16LE.encode(CharBuffer.wrap(cArr2));
                    if (byteBufferEncode.hasArray()) {
                        bArrArray = byteBufferEncode.array();
                    } else {
                        byte[] bArr = new byte[byteBufferEncode.remaining()];
                        byteBufferEncode.get(bArr);
                        bArrArray = bArr;
                    }
                }
                db7VarB.y = bArrArray;
            }
            eb7 eb7VarK = db7VarB.K();
            try {
                List listV1 = el1.v1(new ArrayList(Arrays.asList(eb7VarK.c.g)));
                ArrayList arrayList3 = new ArrayList();
                for (Object obj2 : listV1) {
                    if (!((wa7) obj2).c) {
                        arrayList3.add(obj2);
                    }
                }
                ArrayList arrayList4 = new ArrayList();
                for (Object obj3 : arrayList3) {
                    if (!jq6.x(jq6.v(((wa7) obj3).a), arrayList2)) {
                        arrayList4.add(obj3);
                    }
                }
                Iterator it = arrayList4.iterator();
                long j = 0;
                while (it.hasNext()) {
                    Iterator it2 = it;
                    long j2 = ((wa7) it.next()).p;
                    if (j2 < 0) {
                        j2 = 0;
                    }
                    j += j2;
                    it = it2;
                }
                et4 et4Var = new et4(j, rt3Var);
                byte[] bArr2 = new byte[262144];
                Iterator it3 = listV1.iterator();
                while (it3.hasNext()) {
                    wa7 wa7Var = (wa7) it3.next();
                    String strV = jq6.v(wa7Var.a);
                    if (!jq6.x(strV, arrayList2)) {
                        if (wa7Var.c) {
                            q63 q63Var3 = new q63(2, q63Var2, strV);
                            if (!q63.E(q63Var3) && !q63Var3.x()) {
                                throw new IllegalStateException(("LegacySevenZipArchive: Unable to create directory " + q63Var3).toString());
                            }
                        } else {
                            q63 q63Var4 = new q63(2, q63Var2, strV);
                            q63 q63VarT2 = q63Var4.t();
                            if ((q63VarT2 == null || q63.E(q63VarT2) != z) && ((q63VarT = q63Var4.t()) == null || q63VarT.x() != z)) {
                                throw new IllegalStateException(("LegacySevenZipArchive: Unable to create parent for " + q63Var4).toString());
                            }
                            List list3 = wa7Var.r;
                            List listV2 = list3 != null ? el1.v1(list3) : null;
                            String strY0 = el1.Y0(listV2 == null ? ov2Var : listV2, ",", null, null, new nu(7), 30);
                            StringBuilder sb = new StringBuilder();
                            Iterator it4 = it3;
                            sb.append("Extracting ");
                            sb.append(strV);
                            sb.append(", methods=");
                            sb.append(strY0);
                            Log.i("LegacySevenZipArchive", sb.toString());
                            InputStream inputStreamJ = eb7VarK.j(wa7Var);
                            try {
                                OutputStream outputStreamF = q63Var4.F(true);
                                while (true) {
                                    try {
                                        int i = inputStreamJ.read(bArr2);
                                        if (i < 0) {
                                            break;
                                        }
                                        outputStreamF.write(bArr2, 0, i);
                                        et4Var.c += (long) i;
                                        et4Var.a(false);
                                    } catch (Throwable th) {
                                        try {
                                            throw th;
                                        } catch (Throwable th2) {
                                            rs9.c(outputStreamF, th);
                                            throw th2;
                                        }
                                    }
                                    try {
                                        throw th;
                                    } catch (Throwable th3) {
                                        rs9.c(inputStreamJ, th);
                                        throw th3;
                                    }
                                }
                                outputStreamF.close();
                                inputStreamJ.close();
                                it3 = it4;
                                z = true;
                            } catch (Throwable th4) {
                                throw th4;
                            }
                        }
                    }
                }
                et4Var.a(z);
                eb7VarK.close();
                c73VarL.close();
                Log.i("LegacySevenZipArchive", "Commons 7z extraction succeeded in " + ((System.currentTimeMillis() - jCurrentTimeMillis) / 1000.0d) + "s");
            } catch (Throwable th5) {
                try {
                    throw th5;
                } catch (Throwable th6) {
                    rs9.c(eb7VarK, th5);
                    throw th6;
                }
            }
        } catch (Throwable th7) {
            try {
                throw th7;
            } catch (Throwable th8) {
                rs9.c(c73VarL, th7);
                throw th8;
            }
        }
    }
}
