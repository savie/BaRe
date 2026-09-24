package org.swiftapps.swiftbackup.cloud.protocols.filen;

import defpackage.b7;
import defpackage.bn6;
import defpackage.bt3;
import defpackage.c6;
import defpackage.cz4;
import defpackage.el1;
import defpackage.f51;
import defpackage.fl1;
import defpackage.fl4;
import defpackage.hb3;
import defpackage.iw4;
import defpackage.ka;
import defpackage.kc3;
import defpackage.lc3;
import defpackage.mb3;
import defpackage.mt3;
import defpackage.nb3;
import defpackage.nc8;
import defpackage.nq7;
import defpackage.ob3;
import defpackage.pe4;
import defpackage.qj4;
import defpackage.uq7;
import defpackage.wa3;
import defpackage.ww4;
import defpackage.x13;
import defpackage.xi4;
import defpackage.zj;
import defpackage.zk;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class c {
    public final FilenSession a;
    public final wa3 b;
    public final bt3 c;
    public final bt3 d;
    public final bt3 e;
    public final long f;
    public final ka g;
    public final LinkedHashMap h;
    public final mb3 i;

    public c(FilenSession filenSession, wa3 wa3Var) {
        zj zjVar = new zj(7);
        b7 b7Var = new b7(17);
        kc3 kc3Var = kc3.a;
        wa3Var.getClass();
        this.a = filenSession;
        this.b = wa3Var;
        this.c = zjVar;
        this.d = b7Var;
        this.e = kc3Var;
        this.f = 5000L;
        this.g = new ka(filenSession);
        this.h = new LinkedHashMap();
        this.i = new mb3(filenSession.getBaseFolderUuid(), "", "", 0L);
    }

    public static ArrayList d(String str) {
        List listW0 = nq7.w0(str, new char[]{'/'}, 6);
        ArrayList arrayList = new ArrayList();
        for (Object obj : listW0) {
            String str2 = (String) obj;
            if (!nq7.j0(str2) && !str2.equals(".")) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (pe4.d((String) it.next(), "..")) {
                c6.f("Parent traversal is not allowed");
                return null;
            }
        }
        return arrayList;
    }

    public final synchronized void a(ob3 ob3Var) {
        try {
            if (pe4.d(ob3Var.a(), this.i.a)) {
                throw new IllegalArgumentException("Cannot delete Filen root");
            }
            String str = ob3Var instanceof mb3 ? "/v3/dir/delete/permanent" : "/v3/file/delete/permanent";
            wa3 wa3Var = this.b;
            Map mapSingletonMap = Collections.singletonMap("uuid", ob3Var.a());
            mapSingletonMap.getClass();
            String apiKey = this.a.getApiKey();
            wa3Var.getClass();
            wa3Var.b("POST", str, mapSingletonMap, apiKey, null, new zk(9));
            b(ob3Var.b());
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void b(String str) {
        str.getClass();
        this.h.remove(str);
    }

    public final List c(String str) {
        Object bn6Var;
        long jL;
        iw4 iw4Var;
        Object bn6Var2;
        byte[] bytes;
        long jLongValue = ((Number) this.e.invoke()).longValue();
        LinkedHashMap linkedHashMap = this.h;
        lc3 lc3Var = (lc3) linkedHashMap.get(str);
        if (lc3Var != null) {
            if (jLongValue - lc3Var.b > this.f) {
                lc3Var = null;
            }
            if (lc3Var != null) {
                return lc3Var.a;
            }
        }
        Map mapSingletonMap = Collections.singletonMap("uuid", str);
        mapSingletonMap.getClass();
        String apiKey = this.a.getApiKey();
        wa3 wa3Var = this.b;
        wa3Var.getClass();
        iw4 iw4Var2 = wa3Var.b("POST", "/v3/dir/content", mapSingletonMap, apiKey, null, new zk(9)).i().a;
        final ka kaVar = this.g;
        kaVar.getClass();
        ww4 ww4VarP = nc8.p();
        xi4 xi4Var = (xi4) iw4Var2.get("uploads");
        if (xi4Var != null) {
            Iterator it = xi4Var.a.iterator();
            while (it.hasNext()) {
                try {
                    fl4 fl4VarI = ((qj4) it.next()).i();
                    FilenItemCodec$FileMetadata filenItemCodec$FileMetadata = (FilenItemCodec$FileMetadata) kaVar.d(ka.f(fl4VarI, "metadata"), new mt3() { // from class: org.swiftapps.swiftbackup.cloud.protocols.filen.a
                        @Override // defpackage.mt3
                        public final Object invoke(Object obj) {
                            String str2 = (String) obj;
                            str2.getClass();
                            FilenItemCodec$FileMetadata filenItemCodec$FileMetadata2 = (FilenItemCodec$FileMetadata) ((com.google.gson.a) kaVar.b).c(str2, FilenItemCodec$FileMetadata.class);
                            if (nq7.j0(filenItemCodec$FileMetadata2.getName())) {
                                c6.f("Missing Filen file name");
                                return null;
                            }
                            if (!nq7.j0(filenItemCodec$FileMetadata2.getKey())) {
                                return filenItemCodec$FileMetadata2;
                            }
                            c6.f("Missing Filen file key");
                            return null;
                        }
                    });
                    qj4 qj4VarX = fl4VarI.x("chunks");
                    long jL2 = qj4VarX != null ? qj4VarX.l() : 0L;
                    iw4Var = iw4Var2;
                    try {
                        if (!x13.F(filenItemCodec$FileMetadata.getSize(), jL2)) {
                            throw new IllegalArgumentException("Inconsistent Filen file size and chunk count");
                        }
                        if (filenItemCodec$FileMetadata.getKey().length() == 64) {
                            byte[] bArr = hb3.a;
                            bytes = hb3.q(filenItemCodec$FileMetadata.getKey());
                        } else {
                            bytes = filenItemCodec$FileMetadata.getKey().getBytes(f51.a);
                            bytes.getClass();
                        }
                        if (bytes.length != 32) {
                            throw new IllegalArgumentException("Invalid Filen file key length");
                        }
                        String strF = ka.f(fl4VarI, "uuid");
                        String name = filenItemCodec$FileMetadata.getName();
                        String strF2 = ka.f(fl4VarI, "parent");
                        long size = filenItemCodec$FileMetadata.getSize();
                        String mime = filenItemCodec$FileMetadata.getMime();
                        long jK = cz4.k(filenItemCodec$FileMetadata.getCreation());
                        long jK2 = cz4.k(filenItemCodec$FileMetadata.getLastModified());
                        byte[] bArr2 = bytes;
                        String strG = ka.g(fl4VarI, "bucket");
                        String strG2 = ka.g(fl4VarI, "region");
                        qj4 qj4VarX2 = fl4VarI.x("version");
                        bn6Var2 = new nb3(strF, name, strF2, size, mime, bArr2, jK, jK2, jL2, strG, strG2, qj4VarX2 != null ? qj4VarX2.f() : 2, ka.h(64, filenItemCodec$FileMetadata.getBlake3()), ka.h(128, filenItemCodec$FileMetadata.getHash()));
                        if (bn6Var2 instanceof bn6) {
                            bn6Var2 = null;
                        }
                        nb3 nb3Var = (nb3) bn6Var2;
                        if (nb3Var != null) {
                            ww4VarP.add(nb3Var);
                        }
                        iw4Var2 = iw4Var;
                    } catch (Throwable th) {
                        th = th;
                        bn6Var2 = new bn6(th);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    iw4Var = iw4Var2;
                }
            }
        }
        xi4 xi4Var2 = (xi4) iw4Var2.get("folders");
        if (xi4Var2 != null) {
            Iterator it2 = xi4Var2.a.iterator();
            while (it2.hasNext()) {
                try {
                    fl4 fl4VarI2 = ((qj4) it2.next()).i();
                    FilenItemCodec$DirectoryMetadata filenItemCodec$DirectoryMetadata = (FilenItemCodec$DirectoryMetadata) kaVar.d(ka.f(fl4VarI2, "name"), new mt3() { // from class: org.swiftapps.swiftbackup.cloud.protocols.filen.b
                        @Override // defpackage.mt3
                        public final Object invoke(Object obj) {
                            String str2 = (String) obj;
                            str2.getClass();
                            FilenItemCodec$DirectoryMetadata filenItemCodec$DirectoryMetadata2 = (FilenItemCodec$DirectoryMetadata) ((com.google.gson.a) kaVar.b).c(str2, FilenItemCodec$DirectoryMetadata.class);
                            if (!nq7.j0(filenItemCodec$DirectoryMetadata2.getName())) {
                                return filenItemCodec$DirectoryMetadata2;
                            }
                            c6.f("Missing Filen directory name");
                            return null;
                        }
                    });
                    String strF3 = ka.f(fl4VarI2, "uuid");
                    String name2 = filenItemCodec$DirectoryMetadata.getName();
                    String strF4 = ka.f(fl4VarI2, "parent");
                    long creation = filenItemCodec$DirectoryMetadata.getCreation();
                    Long lValueOf = Long.valueOf(creation);
                    if (creation == 0) {
                        lValueOf = null;
                    }
                    if (lValueOf != null) {
                        jL = lValueOf.longValue();
                    } else {
                        qj4 qj4VarX3 = fl4VarI2.x("timestamp");
                        jL = qj4VarX3 != null ? qj4VarX3.l() : 0L;
                    }
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    if (jL == 0) {
                        jL = 0;
                    } else {
                        long j = 1000 * jL;
                        if (Math.abs(jCurrentTimeMillis - jL) > Math.abs(jCurrentTimeMillis - j)) {
                            jL = j;
                        }
                    }
                    bn6Var = new mb3(strF3, name2, strF4, jL);
                } catch (Throwable th3) {
                    bn6Var = new bn6(th3);
                }
                if (bn6Var instanceof bn6) {
                    bn6Var = null;
                }
                mb3 mb3Var = (mb3) bn6Var;
                if (mb3Var != null) {
                    ww4VarP.add(mb3Var);
                }
            }
        }
        ww4 ww4VarH = nc8.h(ww4VarP);
        linkedHashMap.put(str, new lc3(ww4VarH, jLongValue));
        return ww4VarH;
    }

    public final synchronized ob3 e(String str) {
        try {
            str.getClass();
            ArrayList arrayListD = d(str);
            boolean zIsEmpty = arrayListD.isEmpty();
            mb3 mb3Var = this.i;
            if (zIsEmpty) {
                return mb3Var;
            }
            int i = 0;
            for (Object obj : arrayListD) {
                int i2 = i + 1;
                if (i < 0) {
                    fl1.F0();
                    throw null;
                }
                String str2 = (String) obj;
                List listC = c(mb3Var.a);
                ArrayList arrayList = new ArrayList();
                for (Object obj2 : listC) {
                    if (uq7.P(((ob3) obj2).getName(), str2, true)) {
                        arrayList.add(obj2);
                    }
                }
                if (arrayList.size() > 1) {
                    throw new IllegalStateException(("Duplicate Filen item name in " + mb3Var.a + ": " + str2).toString());
                }
                ob3 ob3Var = (ob3) el1.l1(arrayList);
                if (ob3Var == null) {
                    return null;
                }
                if (i == arrayListD.size() - 1) {
                    return ob3Var;
                }
                mb3Var = ob3Var instanceof mb3 ? (mb3) ob3Var : null;
                if (mb3Var == null) {
                    return null;
                }
                i = i2;
            }
            return mb3Var;
        } catch (Throwable th) {
            throw th;
        }
    }
}
