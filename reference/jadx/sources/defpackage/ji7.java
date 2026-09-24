package defpackage;

import android.util.Log;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.locks.ReentrantLock;
import org.swiftapps.swiftbackup.cloud.protocols.CloudCredentials;
import org.swiftapps.swiftbackup.cloud.protocols.CloudOperationsImpl$LoginResult;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ji7 extends mj1 {
    public final dd1 c = dd1.SMB;
    public h80 d;
    public ru3 e;

    public static void A(wm2 wm2Var, String str, String str2) throws Exception {
        wm2 wm2Var2;
        String str3;
        s5 s5Var = s5.DELETE;
        Iterator it = fl1.A0(sz8.Y(s5Var), x50.A0(new s5[]{s5Var, s5.FILE_WRITE_ATTRIBUTES}), sz8.Y(s5.GENERIC_WRITE), sz8.Y(s5.MAXIMUM_ALLOWED)).iterator();
        Exception exc = null;
        Exception exc2 = null;
        while (true) {
            if (!it.hasNext()) {
                wm2Var2 = wm2Var;
                str3 = str;
                exc = exc2;
                break;
            }
            try {
                wm2Var2 = wm2Var;
                str3 = str;
                try {
                    r63 r63VarU = wm2Var2.u(str3, (Set) it.next(), null, ju6.e, 2, null);
                    try {
                        r63VarU.b.A(r63VarU.c, new j93(str2));
                        r63VarU.close();
                        break;
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            rs9.c(r63VarU, th);
                            throw th2;
                        }
                    }
                } catch (Exception e) {
                    e = e;
                    Exception exc3 = e;
                    if (exc2 == null) {
                        exc2 = exc3;
                    } else {
                        yc9.a(exc2, exc3);
                    }
                    wm2Var = wm2Var2;
                    str = str3;
                }
            } catch (Exception e2) {
                e = e2;
                wm2Var2 = wm2Var;
                str3 = str;
            }
            wm2Var = wm2Var2;
            str = str3;
        }
        if (exc == null) {
            return;
        }
        try {
            v(wm2Var2, str3, str2);
            wm2Var2.v(str3);
        } catch (Exception e3) {
            yc9.a(exc, e3);
            throw exc;
        }
    }

    public static void B(String str) {
        if (str.length() <= 0 || nq7.j0(str)) {
            g84.f("Invalid path: ".concat(str));
        }
    }

    public static void v(wm2 wm2Var, String str, String str2) throws va8 {
        Set setY = sz8.Y(s5.GENERIC_READ);
        Set set = ju6.e;
        r63 r63VarU = wm2Var.u(str, setY, null, set, 2, null);
        try {
            r63 r63VarU2 = wm2Var.u(str2, sz8.Y(s5.GENERIC_WRITE), sz8.Y(w63.FILE_ATTRIBUTE_NORMAL), set, 6, null);
            try {
                wm2 wm2Var2 = r63VarU.b;
                o83 o83Var = new o83(r63VarU, wm2Var2.f, wm2Var2.k);
                try {
                    b93 b93VarT0 = r63VarU2.t0();
                    try {
                        try {
                            try {
                                cy0.j(o83Var, b93VarT0, 262144);
                                b93VarT0.close();
                                o83Var.close();
                                b93VarT0.close();
                                o83Var.close();
                                r63VarU2.close();
                                r63VarU.close();
                            } catch (Throwable th) {
                                try {
                                    throw th;
                                } catch (Throwable th2) {
                                    rs9.c(b93VarT0, th);
                                    throw th2;
                                }
                            }
                        } catch (Throwable th3) {
                            try {
                                throw th3;
                            } catch (Throwable th4) {
                                rs9.c(b93VarT0, th3);
                                throw th4;
                            }
                        }
                    } catch (Throwable th5) {
                        try {
                            throw th5;
                        } catch (Throwable th6) {
                            rs9.c(o83Var, th5);
                            throw th6;
                        }
                    }
                } catch (Throwable th7) {
                    try {
                        throw th7;
                    } catch (Throwable th8) {
                        rs9.c(o83Var, th7);
                        throw th8;
                    }
                }
            } catch (Throwable th9) {
                try {
                    throw th9;
                } catch (Throwable th10) {
                    rs9.c(r63VarU2, th9);
                    throw th10;
                }
            }
        } catch (Throwable th11) {
            try {
                throw th11;
            } catch (Throwable th12) {
                rs9.c(r63VarU, th11);
                throw th12;
            }
        }
    }

    public final String C(String str) {
        str.getClass();
        String path = t().getPath();
        if (path == null || path.length() == 0) {
            g84.f(eq3.k("Invalid path in getCredentials().path=", path, ". The path must at least have a share name!"));
            return null;
        }
        String strY0 = el1.Y0(el1.N0(1, nq7.w0(cy0.D(path), new char[]{'\\'}, 6)), "\\", null, null, null, 62);
        String strD = cy0.D(str);
        return strY0.length() == 0 ? strD : dj7.k(strY0, "\\", strD);
    }

    public final void D(boolean z) throws IOException {
        ur1 ur1VarZ = z(z);
        try {
            ru3 ru3Var = ur1VarZ.c.b;
            ru3Var.getClass();
            String string = ru3Var.toString();
            ru3 ru3Var2 = this.e;
            if (!string.equals(ru3Var2 != null ? ru3Var2.toString() : null)) {
                this.e = ru3Var;
                vr6.i$default(vr6.INSTANCE, "SmbService", "Negotiated protocol: " + ru3Var, null, 4, null);
            }
            j87 j87VarA = ur1VarZ.a(this.d);
            try {
                wm2 wm2Var = (wm2) j87VarA.a(y());
                try {
                    wm2Var.m();
                    k55.d(wm2Var, null);
                    k55.d(j87VarA, null);
                    ur1VarZ.close();
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        k55.d(wm2Var, th);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                try {
                    throw th3;
                } catch (Throwable th4) {
                    k55.d(j87VarA, th3);
                    throw th4;
                }
            }
        } catch (Throwable th5) {
            try {
                throw th5;
            } catch (Throwable th6) {
                rs9.c(ur1VarZ, th5);
                throw th6;
            }
        }
    }

    public final synchronized Object E(mt3 mt3Var) {
        Object objInvoke;
        ur1 ur1VarZ = z(pe4.d(t().getEncryption(), Boolean.TRUE));
        try {
            ru3 ru3Var = ur1VarZ.c.b;
            ru3Var.getClass();
            String string = ru3Var.toString();
            ru3 ru3Var2 = this.e;
            if (!string.equals(ru3Var2 != null ? ru3Var2.toString() : null)) {
                this.e = ru3Var;
                vr6.i$default(vr6.INSTANCE, "SmbService", "Negotiated protocol: " + ru3Var, null, 4, null);
            }
            j87 j87VarA = ur1VarZ.a(this.d);
            try {
                wm2 wm2Var = (wm2) j87VarA.a(y());
                try {
                    objInvoke = mt3Var.invoke(wm2Var);
                    k55.d(wm2Var, null);
                    k55.d(j87VarA, null);
                    ur1VarZ.b(false);
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        k55.d(wm2Var, th);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                try {
                    throw th3;
                } catch (Throwable th4) {
                    k55.d(j87VarA, th3);
                    throw th4;
                }
            }
        } catch (Throwable th5) {
            try {
                throw th5;
            } catch (Throwable th6) {
                rs9.c(ur1VarZ, th5);
                throw th6;
            }
        }
        return objInvoke;
    }

    @Override // defpackage.jh1
    public final synchronized tc4 c(String str, t15 t15Var) {
        final ur1 ur1VarZ;
        final j87 j87VarA;
        final wm2 wm2Var;
        final r63 r63VarU;
        InputStream o83Var;
        try {
            str.getClass();
            B(str);
            String strC = C(str);
            ur1VarZ = z(pe4.d(t().getEncryption(), Boolean.TRUE));
            j87VarA = ur1VarZ.a(this.d);
            wm2Var = (wm2) j87VarA.a(y());
            try {
                r63VarU = wm2Var.u(strC, sz8.Y(s5.GENERIC_READ), null, ju6.e, 2, null);
                if (t15Var != null) {
                    wm2 wm2Var2 = r63VarU.b;
                    o83 o83Var2 = new o83(r63VarU, wm2Var2.f, wm2Var2.k);
                    o83Var2.skip(t15Var.a);
                    long j = (t15Var.b - t15Var.a) + 1;
                    vu0 vu0VarB = wu0.b();
                    vu0VarB.k = new y4(o83Var2);
                    vu0VarB.K(j);
                    o83Var = new wu0(vu0VarB);
                } else {
                    wm2 wm2Var3 = r63VarU.b;
                    o83Var = new o83(r63VarU, wm2Var3.f, wm2Var3.k);
                }
            } catch (Exception e) {
                vr6.e$default(vr6.INSTANCE, "SmbService", "get: ".concat(io4.b(e)), null, 4, null);
                throw e;
            }
        } catch (Throwable th) {
            throw th;
        }
        return new tc4(o83Var, new bt3() { // from class: ii7
            @Override // defpackage.bt3
            public final Object invoke() {
                wm2 wm2Var4 = wm2Var;
                j87 j87Var = j87VarA;
                ur1 ur1Var = ur1VarZ;
                r63VarU.g();
                try {
                    wm2Var4.close();
                } catch (Exception unused) {
                }
                try {
                    j87Var.m();
                } catch (Exception unused2) {
                }
                try {
                    ur1Var.b(true);
                } catch (Exception unused3) {
                }
                return be8.a;
            }
        }, 4);
    }

    @Override // defpackage.jh1
    public final CloudOperationsImpl$LoginResult d(boolean z) {
        Object bn6Var;
        try {
            D(pe4.d(t().getEncryption(), Boolean.TRUE));
            return new CloudOperationsImpl$LoginResult.Success();
        } catch (Exception e) {
            Log.e("SmbService", "login", e);
            String strB = io4.b(e);
            vr6.e$default(vr6.INSTANCE, "SmbService", "login ".concat(strB), null, 4, null);
            if (e instanceof mf8) {
                return new CloudOperationsImpl$LoginResult.UntrustedCertificate((mf8) e);
            }
            boolean z2 = false;
            if (!pe4.d(t().getEncryption(), Boolean.TRUE)) {
                String strB2 = io4.b(e);
                if (nq7.Z(strB2, "encrypt", true) || nq7.Z(strB2, "STATUS_ACCESS_DENIED", true)) {
                    try {
                        D(true);
                        bn6Var = be8.a;
                    } catch (Throwable th) {
                        bn6Var = new bn6(th);
                    }
                    z2 = !(bn6Var instanceof bn6);
                }
            }
            if (z2) {
                return new CloudOperationsImpl$LoginResult.TempConnectionError(new ei7("SMB server requires Data Encryption (SMB 3+). Enable Data Encryption and try again.", e));
            }
            List listA0 = fl1.A0("401 Unauthorized", "Invalid URL host", "Authentication failed for");
            if (!listA0.isEmpty()) {
                Iterator it = listA0.iterator();
                while (it.hasNext()) {
                    if (nq7.Z(strB, (String) it.next(), true)) {
                        return CloudOperationsImpl$LoginResult.InvalidCredentials.INSTANCE;
                    }
                }
            }
            return new CloudOperationsImpl$LoginResult.TempConnectionError(e);
        }
    }

    @Override // defpackage.jh1
    public final void e(final c62 c62Var, final String str, final long j, final cz czVar) {
        B(str);
        final String strConcat = str.concat(".tmp");
        E(new mt3() { // from class: hi7
            @Override // defpackage.mt3
            public final Object invoke(Object obj) throws Exception {
                ji7 ji7Var = this.a;
                String str2 = strConcat;
                String str3 = str;
                c62 c62Var2 = c62Var;
                long j2 = j;
                mt3 mt3Var = czVar;
                wm2 wm2Var = (wm2) obj;
                wm2Var.getClass();
                try {
                    ji7Var.w(str2);
                    r63 r63VarU = wm2Var.u(ji7Var.C(str2), x50.A0(new s5[]{s5.GENERIC_READ, s5.GENERIC_WRITE}), sz8.Y(w63.FILE_ATTRIBUTE_NORMAL), ju6.e, 6, null);
                    try {
                        BufferedInputStream bufferedInputStreamA = c62Var2.a();
                        try {
                            f86 f86Var = new f86(r63VarU.t0(), j2, new zq6(1, mt3Var));
                            try {
                                try {
                                    try {
                                        cy0.j(bufferedInputStreamA, f86Var, 262144);
                                        f86Var.close();
                                        bufferedInputStreamA.close();
                                        f86Var.close();
                                        bufferedInputStreamA.close();
                                        r63VarU.close();
                                        ji7.B(str2);
                                        ji7.B(str3);
                                        ji7Var.E(new yy(ji7Var, str3, ji7Var.C(str2), ji7Var.C(str3), 1));
                                        return be8.a;
                                    } catch (Throwable th) {
                                        try {
                                            throw th;
                                        } catch (Throwable th2) {
                                            rs9.c(bufferedInputStreamA, th);
                                            throw th2;
                                        }
                                    }
                                } catch (Throwable th3) {
                                    try {
                                        throw th3;
                                    } catch (Throwable th4) {
                                        rs9.c(f86Var, th3);
                                        throw th4;
                                    }
                                }
                            } catch (Throwable th5) {
                                try {
                                    throw th5;
                                } catch (Throwable th6) {
                                    rs9.c(f86Var, th5);
                                    throw th6;
                                }
                            }
                        } catch (Throwable th7) {
                            try {
                                throw th7;
                            } catch (Throwable th8) {
                                rs9.c(bufferedInputStreamA, th7);
                                throw th8;
                            }
                        }
                    } catch (Throwable th9) {
                        try {
                            throw th9;
                        } catch (Throwable th10) {
                            rs9.c(r63VarU, th9);
                            throw th10;
                        }
                    }
                } catch (Exception e) {
                    vr6.e$default(vr6.INSTANCE, "SmbService", "put: ".concat(io4.b(e)), null, 4, null);
                    ji7Var.j(str2);
                    throw e;
                }
            }
        });
    }

    @Override // defpackage.jh1
    public final pg1 f(String str) {
        str.getClass();
        return (pg1) E(new q24(2, this, str));
    }

    @Override // defpackage.jh1
    public final dd1 g() {
        return this.c;
    }

    @Override // defpackage.jh1
    public final synchronized void h(String str) {
        str.getClass();
        B(str);
        E(new bz(7, this, str));
    }

    @Override // defpackage.jh1
    public final void j(String str) {
        str.getClass();
        B(str);
        E(new hq0(5, this, str));
    }

    @Override // defpackage.jh1
    public final ni1 l() {
        return (ni1) E(new hw(6));
    }

    @Override // defpackage.jh1
    public final String n() {
        return "SmbService";
    }

    @Override // defpackage.jh1
    public final ih1 o(String str) {
        try {
            return (ih1) E(new nj2(6, this, str));
        } catch (Exception e) {
            Log.e("SmbService", "getMetadataPathExistence", e);
            vr6.e$default(vr6.INSTANCE, "SmbService", "getMetadataPathExistence: ".concat(io4.b(e)), null, 4, null);
            return ih1.Unknown;
        }
    }

    @Override // defpackage.jh1
    public final hh1 q(String str) {
        str.getClass();
        try {
            return (hh1) E(new xs(5, this, str));
        } catch (Exception e) {
            Log.e("SmbService", "listMetadataDirectory", e);
            vr6.e$default(vr6.INSTANCE, "SmbService", "listMetadataDirectory: ".concat(io4.b(e)), null, 4, null);
            return fh1.a;
        }
    }

    @Override // defpackage.jh1
    public final boolean r(String str) {
        str.getClass();
        return ((Boolean) E(new jj2(8, this, str))).booleanValue();
    }

    @Override // defpackage.jh1
    public final List s(String str) {
        str.getClass();
        return (List) E(new eh2(6, this, str));
    }

    @Override // defpackage.mj1
    public final void u(CloudCredentials cloudCredentials) {
        cloudCredentials.getClass();
        super.u(cloudCredentials);
        String validUsername = cloudCredentials.getValidUsername();
        String password = cloudCredentials.getPassword();
        if (password == null) {
            password = "";
        }
        char[] charArray = password.toCharArray();
        charArray.getClass();
        this.d = new h80(validUsername, charArray);
    }

    public final void w(String str) {
        String strY0 = el1.Y0(el1.O0(1, nq7.w0(cy0.D(str), new char[]{'\\'}, 6)), "\\", null, null, null, 62);
        h(strY0);
        if (r(strY0)) {
            return;
        }
        l0.e("Check failed.");
    }

    public final boolean x(String str) {
        final String strC = C(str);
        final LinkedHashMap linkedHashMap = new LinkedHashMap();
        final int i = 1;
        E(new mt3() { // from class: gi7
            @Override // defpackage.mt3
            public final Object invoke(Object obj) {
                int i2 = i;
                be8 be8Var = be8.a;
                LinkedHashMap linkedHashMap2 = linkedHashMap;
                switch (i2) {
                    case 0:
                        String str2 = strC;
                        wm2 wm2Var = (wm2) obj;
                        wm2Var.getClass();
                        try {
                            r63 r63VarU = wm2Var.u(str2, x50.A0(new s5[]{s5.DELETE, s5.GENERIC_READ}), sz8.Y(w63.FILE_ATTRIBUTE_NORMAL), ju6.e, 2, sz8.Y(ps6.FILE_NON_DIRECTORY_FILE));
                            r63VarU.u();
                            r63VarU.close();
                        } catch (Exception e) {
                            linkedHashMap2.put("Error deleting file with full access file.deleteOnClose() at " + str2, e);
                        }
                        break;
                    default:
                        String str3 = strC;
                        wm2 wm2Var2 = (wm2) obj;
                        wm2Var2.getClass();
                        try {
                            wm2Var2.v(str3);
                        } catch (Exception e2) {
                            linkedHashMap2.put("Error deleting file with share.rm() at " + str3, e2);
                        }
                        break;
                }
                return be8Var;
                return be8Var;
            }
        });
        if (r(str)) {
            try {
                Thread.sleep(500L);
            } catch (Exception unused) {
            }
            Log.i("SmbService", "Attempting delete with Method 2");
            final int i2 = 0;
            E(new mt3() { // from class: gi7
                @Override // defpackage.mt3
                public final Object invoke(Object obj) {
                    int i3 = i2;
                    be8 be8Var = be8.a;
                    LinkedHashMap linkedHashMap2 = linkedHashMap;
                    switch (i3) {
                        case 0:
                            String str2 = strC;
                            wm2 wm2Var = (wm2) obj;
                            wm2Var.getClass();
                            try {
                                r63 r63VarU = wm2Var.u(str2, x50.A0(new s5[]{s5.DELETE, s5.GENERIC_READ}), sz8.Y(w63.FILE_ATTRIBUTE_NORMAL), ju6.e, 2, sz8.Y(ps6.FILE_NON_DIRECTORY_FILE));
                                r63VarU.u();
                                r63VarU.close();
                            } catch (Exception e) {
                                linkedHashMap2.put("Error deleting file with full access file.deleteOnClose() at " + str2, e);
                            }
                            break;
                        default:
                            String str3 = strC;
                            wm2 wm2Var2 = (wm2) obj;
                            wm2Var2.getClass();
                            try {
                                wm2Var2.v(str3);
                            } catch (Exception e2) {
                                linkedHashMap2.put("Error deleting file with share.rm() at " + str3, e2);
                            }
                            break;
                    }
                    return be8Var;
                    return be8Var;
                }
            });
            if (r(str)) {
                try {
                    Thread.sleep(500L);
                } catch (Exception unused2) {
                }
                Log.i("SmbService", "Attempting delete with Method 3");
                E(new hf(2, strC, linkedHashMap));
                if (r(str)) {
                    for (Map.Entry entry : linkedHashMap.entrySet()) {
                        vr6.e$default(vr6.INSTANCE, "SmbService", (String) entry.getKey(), (Exception) entry.getValue(), null, 8, null);
                    }
                    return false;
                }
            }
        }
        return true;
    }

    public final String y() {
        String path = t().getPath();
        String strD = path != null ? cy0.D(path) : null;
        String str = strD != null ? (String) el1.U0(nq7.w0(strD, new char[]{'\\'}, 6)) : null;
        if (str != null && str.length() != 0) {
            return str;
        }
        g84.f(eq3.l("Invalid share name '", str, "' from path '", strD, "'"));
        return null;
    }

    public final ur1 z(boolean z) {
        CloudCredentials cloudCredentialsT = t();
        di7 di7Var = new di7();
        Random random = di7Var.d;
        zv8 zv8Var = zv8.WINDOWS_MAJOR_VERSION_6;
        aw8 aw8Var = aw8.WINDOWS_MINOR_VERSION_1;
        yv8 yv8Var = yv8.b;
        bw8 bw8Var = new bw8();
        bw8Var.a = zv8Var;
        bw8Var.b = aw8Var;
        bw8Var.c = 7600;
        bw8Var.d = yv8Var;
        random.nextBytes(new byte[32]);
        UUID uuidRandomUUID = UUID.randomUUID();
        if (uuidRandomUUID == null) {
            c6.f("Client GUID may not be null");
            return null;
        }
        di7Var.e = uuidRandomUUID;
        di7Var.h = new lv1(7);
        di7Var.c = new ma6();
        di7Var.f = true;
        di7Var.g = false;
        di7Var.i = 1048576;
        di7Var.k = 1048576;
        di7Var.m = 1048576;
        di7Var.n = di7.t;
        di7Var.s = 0;
        List<us6> listAsList = Arrays.asList(us6.SMB_3_1_1, us6.SMB_3_0_2, us6.SMB_3_0, us6.SMB_2_1, us6.SMB_2_0_2);
        if (listAsList == null) {
            c6.f("Dialects may not be null");
            return null;
        }
        EnumSet enumSet = di7Var.a;
        enumSet.clear();
        for (us6 us6Var : listAsList) {
            if (us6Var == null) {
                c6.f("Dialect may not be null");
                return null;
            }
            enumSet.add(us6Var);
        }
        ArrayList<v23> arrayList = new ArrayList();
        if (!di7.u) {
            try {
                arrayList.add((v23) dk7.class.getDeclaredConstructor(null).newInstance(null));
            } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
                throw new gv6(e);
            }
        }
        arrayList.add(new ep5());
        ArrayList arrayList2 = di7Var.b;
        arrayList2.clear();
        for (v23 v23Var : arrayList) {
            if (v23Var == null) {
                c6.f("Authenticator may not be null");
                return null;
            }
            arrayList2.add(v23Var);
        }
        di7Var.p = new us2(13);
        di7Var.q = false;
        di7Var.j = 30000L;
        di7Var.l = 30000L;
        di7Var.o = 30000L;
        UUID uuidRandomUUID2 = UUID.randomUUID();
        if (uuidRandomUUID2 == null) {
            c6.f("Client GUID may not be null");
            return null;
        }
        di7Var.e = uuidRandomUUID2;
        di7Var.g = true;
        di7Var.q = z;
        if (enumSet.isEmpty()) {
            l0.e("At least one SMB dialect should be specified");
            return null;
        }
        if (!di7Var.f && us6.b(enumSet)) {
            l0.e("Signing cannot be disabled when using SMB3.x dialects");
            return null;
        }
        if (di7Var.q && !us6.b(enumSet)) {
            l0.e("If encryption is enabled, at least one dialect should be SMB3.x compatible");
            return null;
        }
        z28 z28Var = new z28(12);
        z28Var.b = bw8Var;
        di7Var.r = z28Var;
        di7 di7Var2 = new di7();
        di7Var2.a.addAll(enumSet);
        di7Var2.b.addAll(arrayList2);
        di7Var2.c = di7Var.c;
        di7Var2.d = di7Var.d;
        di7Var2.e = di7Var.e;
        di7Var2.f = di7Var.f;
        di7Var2.h = di7Var.h;
        di7Var2.i = di7Var.i;
        di7Var2.j = di7Var.j;
        di7Var2.k = di7Var.k;
        di7Var2.l = di7Var.l;
        di7Var2.m = di7Var.m;
        di7Var2.o = di7Var.o;
        di7Var2.n = di7Var.n;
        di7Var2.s = di7Var.s;
        di7Var2.g = di7Var.g;
        di7Var2.p = di7Var.p;
        di7Var2.q = di7Var.q;
        di7Var2.r = di7Var.r;
        ju7 ju7Var = new ju7(new bv6());
        cv6 cv6Var = new cv6();
        cv6Var.a = ju7Var;
        av6 av6Var = new av6();
        av6Var.a = new ConcurrentHashMap();
        yf1 yf1Var = new yf1(9);
        yf1Var.b = new ReentrantLock();
        yf1Var.c = new HashMap();
        av6Var.b = yf1Var;
        av6Var.c = di7Var2;
        av6Var.d = cv6Var;
        cv6Var.a(av6Var);
        return av6Var.b(cloudCredentialsT.getPort(), cloudCredentialsT.getServer());
    }

    @Override // defpackage.jh1
    public final void b() {
    }
}
