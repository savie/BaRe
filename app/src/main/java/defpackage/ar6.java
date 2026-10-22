package defpackage;

import android.content.SharedPreferences;
import android.util.Log;
import java.io.ByteArrayInputStream;
import java.net.InetAddress;
import java.net.URI;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CompletionException;
import java.util.concurrent.TimeUnit;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.internal._UtilJvmKt;
import org.swiftapps.swiftbackup.cloud.protocols.CloudCredentials;
import org.swiftapps.swiftbackup.cloud.protocols.CloudOperationsImpl$LoginResult;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ar6 extends mj1 {
    public final dd1 c = dd1.S3;

    public static final void v(ar6 ar6Var, ArrayList arrayList, ArrayList arrayList2, String str) {
        Iterator it = ar6Var.z(str).iterator();
        while (it.hasNext()) {
            qg4 qg4Var = (qg4) ((dn6) it.next()).a();
            if (qg4Var.e()) {
                String strH = qg4Var.h();
                strH.getClass();
                arrayList.add(strH);
                String strH2 = qg4Var.h();
                strH2.getClass();
                v(ar6Var, arrayList, arrayList2, strH2);
            } else {
                String strH3 = qg4Var.h();
                strH3.getClass();
                arrayList2.add(strH3);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:39:0x00ab  */
    public final String A(String str) {
        boolean z;
        int i;
        str.getClass();
        String path = t().getPath();
        String strY0 = path != null ? el1.Y0(el1.N0(1, nq7.w0(path, new char[]{'/'}, 6)), "/", null, null, null, 62) : null;
        if (strY0 == null) {
            strY0 = "";
        }
        String strI0 = nq7.I0(strY0, '/');
        if (!uq7.V(str, strI0, false)) {
            str = dj7.k(strI0, "/", nq7.L0(str, '/'));
        }
        if (nq7.b0(str, '/')) {
            z = false;
        } else {
            char c = mc3.a;
            if (c == '\\') {
                int iLastIndexOf = str.lastIndexOf(c);
                int iLastIndexOf2 = str.lastIndexOf(mc3.b);
                if (iLastIndexOf == -1) {
                    i = iLastIndexOf2 == -1 ? 0 : iLastIndexOf2 + 1;
                } else {
                    if (iLastIndexOf2 != -1) {
                        iLastIndexOf = Math.max(iLastIndexOf, iLastIndexOf2);
                    }
                    i = iLastIndexOf + 1;
                }
                if (str.indexOf(58, i) != -1) {
                    c6.f("NTFS ADS separator (':') in file name is forbidden.");
                    return null;
                }
            }
            int iLastIndexOf3 = str.lastIndexOf(46);
            if (Math.max(str.lastIndexOf(47), str.lastIndexOf(92)) > iLastIndexOf3) {
                iLastIndexOf3 = -1;
            }
            if ((iLastIndexOf3 != -1 ? str.substring(iLastIndexOf3 + 1) : "").length() == 0) {
                z = false;
            } else {
                z = true;
            }
        }
        return (z || nq7.b0(str, '/')) ? nq7.L0(str, '/') : nq7.L0(str.concat("/"), '/');
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.jh1
    public final tc4 c(String str, t15 t15Var) throws Exception {
        str.getClass();
        String strA = A(str);
        if (t15Var != null) {
            Log.i("get", "Called with: path = " + str + ", range = " + t15Var);
        }
        try {
            lw3.a aVar = (lw3.a) ((lw3.a) lw3.u().p(x())).z(strA);
            if (t15Var != null) {
                long j = t15Var.a;
                aVar.b0(Long.valueOf(j));
                aVar.X(Long.valueOf((t15Var.b - j) + 1));
            }
            qg5 qg5VarY = y();
            lw3 lw3Var = (lw3) aVar.d();
            pg5 pg5Var = qg5VarY.a;
            bt3 bt3Var = null;
            try {
                pw3 pw3Var = (pw3) pg5Var.O(lw3Var).join();
                pw3Var.getClass();
                return new tc4(pw3Var, bt3Var, 6);
            } catch (CompletionException e) {
                pg5Var.getClass();
                pg5.W(e);
                throw null;
            }
        } catch (Exception e2) {
            vr6.e$default(vr6.INSTANCE, "S3Service", "get: ".concat(io4.b(e2)), null, 4, null);
            throw e2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.jh1
    public final CloudOperationsImpl$LoginResult d(boolean z) {
        try {
            t();
            gw0 gw0Var = (gw0) ((gw0.a) gw0.h().p(x())).d();
            pg5 pg5Var = y().a;
            try {
                if (((Boolean) pg5Var.J(gw0Var).join()).booleanValue()) {
                    return new CloudOperationsImpl$LoginResult.Success();
                }
                throw new IllegalStateException(("Bucket '" + x() + "' doesn't exist").toString());
            } catch (CompletionException e) {
                pg5Var.getClass();
                pg5.W(e);
                throw null;
            }
        } catch (Exception e2) {
            vr6.e$default(vr6.INSTANCE, "S3Service", "login", e2, null, 8, null);
            return new CloudOperationsImpl$LoginResult.TempConnectionError(e2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.jh1
    public final void e(c62 c62Var, String str, long j, cz czVar) throws Exception {
        String strA = A(str);
        try {
            d86 d86Var = new d86(c62Var.a(), j, new zq6(0, czVar));
            Log.i("S3Service", "put: " + strA);
            int i = 5;
            try {
                SharedPreferences sharedPreferences = cz4.f;
                if (sharedPreferences == null) {
                    pe4.F("prefs");
                    throw null;
                }
                i = sharedPreferences.getInt("s3_chunk_size", 5);
                try {
                    bc6 bc6Var = (bc6) ((bc6.a) ((bc6.a) bc6.D().p(x())).z(strA)).x0(d86Var, Long.valueOf(j), Long.valueOf(((long) i) * 1048576)).d();
                    pg5 pg5Var = y().a;
                    try {
                        d86Var.close();
                    } catch (CompletionException e) {
                        pg5Var.getClass();
                        pg5.W(e);
                        throw null;
                    }
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        rs9.c(d86Var, th);
                        throw th2;
                    }
                }
            } catch (ClassCastException unused) {
            }
        } catch (Exception e2) {
            vr6.e$default(vr6.INSTANCE, "S3Service", "put: ".concat(io4.b(e2)), null, 4, null);
            throw e2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.jh1
    public final pg1 f(String str) {
        str.getClass();
        String strA = A(str);
        try {
            List listV1 = el1.v1(y().a((wx4) wx4.u().p(x()).h0(strA).d()));
            if (listV1.size() == 1) {
                qg4 qg4Var = (qg4) ((dn6) el1.S0(listV1)).a();
                qg4Var.getClass();
                return og1.e(qg4Var);
            }
            throw new IllegalStateException(("getFile: " + listV1.size() + " items listed for path '" + strA + "'").toString());
        } catch (Exception e) {
            vr6.e$default(vr6.INSTANCE, "S3Service", eq3.k("getFile: Failed for path '", strA, "'"), e, null, 8, null);
            return null;
        }
    }

    @Override // defpackage.jh1
    public final dd1 g() {
        return this.c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.jh1
    public final synchronized void h(String str) {
        str.getClass();
        String strA = A(str);
        bc6 bc6Var = (bc6) ((bc6.a) ((bc6.a) bc6.D().p(x())).z(strA)).x0(new ByteArrayInputStream(new byte[0]), 0L, -1L).d();
        Log.i("S3Service", "Creating directory " + strA);
        pg5 pg5Var = y().a;
        try {
        } catch (CompletionException e) {
            pg5Var.getClass();
            pg5.W(e);
            throw null;
        }
    }

    @Override // defpackage.jh1
    public final void j(String str) {
        int i;
        str.getClass();
        boolean z = false;
        if (!nq7.b0(str, '/')) {
            int i2 = mc3.a;
            if (i2 == 92) {
                int iLastIndexOf = str.lastIndexOf(i2);
                int iLastIndexOf2 = str.lastIndexOf(mc3.b);
                if (iLastIndexOf == -1) {
                    i = iLastIndexOf2 == -1 ? 0 : iLastIndexOf2 + 1;
                } else {
                    if (iLastIndexOf2 != -1) {
                        iLastIndexOf = Math.max(iLastIndexOf, iLastIndexOf2);
                    }
                    i = iLastIndexOf + 1;
                }
                if (str.indexOf(58, i) != -1) {
                    c6.f("NTFS ADS separator (':') in file name is forbidden.");
                    return;
                }
            }
            int iLastIndexOf3 = str.lastIndexOf(46);
            if (Math.max(str.lastIndexOf(47), str.lastIndexOf(92)) > iLastIndexOf3) {
                iLastIndexOf3 = -1;
            }
            if ((iLastIndexOf3 == -1 ? "" : str.substring(iLastIndexOf3 + 1)).length() != 0) {
                z = true;
            }
        }
        if (z) {
            w(nc8.I(str));
            return;
        }
        if (!nq7.b0(str, '/')) {
            str = str.concat("/");
        }
        String strA = A(str);
        Log.i("S3Service", "deleteDir: " + strA);
        ArrayList arrayListC0 = fl1.C0(strA);
        ArrayList arrayList = new ArrayList();
        v(this, arrayListC0, arrayList, strA);
        if (!arrayList.isEmpty()) {
            w(arrayList);
        }
        w(el1.n1(arrayListC0, new jc1(4)));
        if (r(strA)) {
            g84.f("Failed deleting director at ".concat(strA));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.jh1
    public final ni1 l() {
        Iterator it = el1.v1(y().a((wx4) wx4.u().p(x()).i0(true).d())).iterator();
        long jL = 0;
        while (it.hasNext()) {
            jL += ((qg4) ((dn6) it.next()).a()).l();
        }
        return new ni1(Long.valueOf(jL), null);
    }

    @Override // defpackage.jh1
    public final String n() {
        return "S3Service";
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0058 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:11:0x0059 A[RETURN] */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.jh1
    public final boolean r(String str) {
        str.getClass();
        String strA = A(str);
        for (Object obj : y().a((wx4) wx4.u().p(x()).h0(nq7.I0(strA, '/')).d())) {
            if (pe4.d(((qg4) ((dn6) obj).a()).h(), strA)) {
                if (obj != null) {
                    return true;
                }
                return false;
            }
        }
        obj = null;
        if (obj != null) {
            return true;
        }
        return false;
    }

    @Override // defpackage.jh1
    public final List s(String str) {
        str.getClass();
        ArrayList arrayListZ = z(str);
        ArrayList arrayList = new ArrayList(hl1.G0(arrayListZ, 10));
        Iterator it = arrayListZ.iterator();
        while (it.hasNext()) {
            qg4 qg4Var = (qg4) ((dn6) it.next()).a();
            qg4Var.getClass();
            arrayList.add(og1.e(qg4Var));
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void w(List list) {
        Log.d("S3Service", "deleteObjects: ".concat(el1.Y0(list, null, null, null, null, 63)));
        ArrayList arrayList = new ArrayList(hl1.G0(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new vh2.a(A((String) it.next())));
        }
        ij6 ij6Var = (ij6) ij6.j().p(x()).C(arrayList).d();
        pg5 pg5Var = y().a;
        pg5Var.b(ij6Var);
        Iterator it2 = el1.v1(new jg5(pg5Var, ij6Var)).iterator();
        boolean z = true;
        while (it2.hasNext()) {
            wh2.b bVar = (wh2.b) ((dn6) it2.next()).a();
            Log.e("S3Service", "deleteObjects: Unable to delete object: " + bVar.e() + ". Error: " + bVar.d());
            z = false;
        }
        if (z) {
            return;
        }
        g84.f(xs1.h(list.size(), "deleteObjects: Error while deleting ", " objects"));
    }

    public final String x() {
        String str;
        String path = t().getPath();
        return (path == null || (str = (String) el1.U0(nq7.x0(path, new String[]{"/"}, 6))) == null) ? "" : str;
    }

    public final qg5 y() throws vq6 {
        Object bn6Var;
        String str;
        boolean z;
        CloudCredentials cloudCredentialsT = t();
        int i = 0;
        String baseUrl$default = CloudCredentials.getBaseUrl$default(cloudCredentialsT, false, 1, null);
        zd1 zd1Var = new zd1(1, uq6.a, uq6.class, "resolveHost", "resolveHost(Ljava/lang/String;)Ljava/util/List;", 0, 3);
        baseUrl$default.getClass();
        String string = nq7.H0(baseUrl$default).toString();
        if (string.length() <= 0) {
            string = null;
        }
        if (string == null) {
            str = null;
        } else {
            if (!nq7.Z(string, "://", false)) {
                string = "https://".concat(string);
            }
            try {
                bn6Var = URI.create(string).getHost();
            } catch (Throwable th) {
                bn6Var = new bn6(th);
            }
            if (bn6Var instanceof bn6) {
                bn6Var = null;
            }
            String str2 = (String) bn6Var;
            if (str2 == null || str2.length() <= 0) {
                str2 = null;
            }
            str = str2;
        }
        ov2 ov2Var = ov2.a;
        if (str == null) {
            throw new vq6(baseUrl$default, null, ov2Var, eq3.k("S3 endpoint '", baseUrl$default, "' is not a valid endpoint URL."));
        }
        try {
            List list = (List) zd1Var.invoke(str);
            if (list.isEmpty()) {
                throw new vq6(baseUrl$default, str, ov2Var, eq3.k("S3 endpoint '", str, "' did not resolve to any address. Check Private DNS, ad blocker, VPN or DNS settings."));
            }
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                InetAddress inetAddress = (InetAddress) obj;
                if (inetAddress.isAnyLocalAddress() || inetAddress.isLoopbackAddress()) {
                    arrayList.add(obj);
                }
            }
            if (list.isEmpty()) {
                z = false;
                break;
            }
            Iterator it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                if (!arrayList.contains((InetAddress) it.next())) {
                    z = true;
                    break;
                }
            }
            if (!arrayList.isEmpty() && !z && !str.equalsIgnoreCase("localhost") && !str.equals("127.0.0.1") && !str.equals("::1") && !str.equals("[::1]")) {
                ArrayList arrayList2 = new ArrayList(hl1.G0(arrayList, 10));
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    String hostAddress = ((InetAddress) it2.next()).getHostAddress();
                    if (hostAddress == null) {
                        hostAddress = "";
                    }
                    arrayList2.add(hostAddress);
                }
                throw new vq6(baseUrl$default, str, arrayList2, eq3.l("S3 endpoint '", str, "' resolved to unusable local address(es): ", el1.Y0(arrayList2, null, null, null, null, 63), ". Check Private DNS, ad blocker, VPN or DNS settings."));
            }
            qg5.a aVar = new qg5.a();
            int port = cloudCredentialsT.getPort();
            boolean zV = uq7.V(baseUrl$default, "https", false);
            pg5.a aVar2 = aVar.a;
            aVar2.getClass();
            v64.a aVar3 = new v64.a(baseUrl$default, port, zV);
            if (aVar3.e == null) {
                aVar3.e = aVar2.b;
            }
            aVar2.b = null;
            aVar2.a = aVar3;
            String username = cloudCredentialsT.getUsername();
            String password = cloudCredentialsT.getPassword();
            aVar2.getClass();
            aVar2.c = new um7(username, password, null);
            String region = cloudCredentialsT.getRegion();
            if (region != null) {
                aVar2.getClass();
                if (!ki8.g.matcher(region).find()) {
                    c6.f("invalid region ".concat(region));
                    return null;
                }
            }
            v64.a aVar4 = aVar2.a;
            if (aVar4 != null) {
                aVar4.e = region;
            } else {
                aVar2.b = region;
            }
            ki8.i(aVar2.a, "endpoint");
            String str3 = aVar2.a.c;
            if (str3 != null && str3.endsWith(".cn") && !aVar2.a.b.endsWith("s3-accelerate.") && aVar2.a.e == null) {
                b6.e(aVar2.a, "Region missing in Amazon S3 China endpoint ");
                return null;
            }
            if (aVar2.d == null) {
                aVar2.e = true;
                MediaType mediaType = v64.a;
                OkHttpClient.Builder builderB = new OkHttpClient().b();
                long j = v64.c;
                TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                builderB.a(j, timeUnit);
                builderB.y = _UtilJvmKt.b(j, timeUnit);
                builderB.x = _UtilJvmKt.b(j, timeUnit);
                builderB.b(Arrays.asList(Protocol.HTTP_1_1));
                try {
                    aVar2.d = v64.b(new OkHttpClient(builderB));
                } catch (rg5 e) {
                    y5.k(e);
                    return null;
                }
            }
            return new qg5(new pg5(aVar2.a, aVar2.c, aVar2.d, aVar2.e), i);
        } catch (UnknownHostException e2) {
            String str4 = str;
            throw new vq6(baseUrl$default, str4, ov2Var, eq3.k("S3 endpoint '", str4, "' could not be resolved. Check Private DNS, ad blocker, VPN or DNS settings."), e2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final ArrayList z(String str) {
        String strA = A(str);
        wx4.a aVarP = wx4.u().p(x());
        if (str.length() > 0) {
            aVarP.h0(strA);
        }
        List listV1 = el1.v1(y().a((wx4) aVarP.d()));
        ArrayList arrayList = new ArrayList();
        for (Object obj : listV1) {
            String strH = ((qg4) ((dn6) obj).a()).h();
            strH.getClass();
            if (!pe4.d(nq7.I0(strH, '/'), nq7.I0(strA, '/'))) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    @Override // defpackage.jh1
    public final void b() {
    }
}
