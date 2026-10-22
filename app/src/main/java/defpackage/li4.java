package defpackage;

import android.util.Log;
import com.jcraft.jsch.Channel;
import com.jcraft.jsch.ChannelSftp;
import com.jcraft.jsch.JSch;
import com.jcraft.jsch.JSchException;
import com.jcraft.jsch.Session;
import com.jcraft.jsch.SftpATTRS;
import com.jcraft.jsch.SftpException;
import java.io.BufferedInputStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;
import org.swiftapps.swiftbackup.cloud.protocols.CloudCredentials;
import org.swiftapps.swiftbackup.cloud.protocols.CloudOperationsImpl$LoginResult;
import org.swiftapps.swiftbackup.common.V;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class li4 extends mj1 {
    public static final ai6 e = new ai6("^[A-Za-z]:/.*");
    public final dd1 c = dd1.SFTP;
    public JSch d;

    public static final void A(ChannelSftp channelSftp, Session session) {
        try {
            channelSftp.disconnect();
        } catch (Exception unused) {
        }
        try {
            session.disconnect();
        } catch (Exception unused2) {
        }
    }

    public static void B(String str) {
        if (str.length() <= 0 || nq7.j0(str)) {
            g84.f("Invalid path: ".concat(str));
        }
    }

    public static void D(CloudCredentials cloudCredentials, ChannelSftp channelSftp) throws SftpException {
        String strJ;
        String path = cloudCredentials.getPath();
        if (path == null || path.length() == 0) {
            return;
        }
        String strS = uq7.S(nq7.H0(path).toString(), '\\', '/');
        if (strS.length() == 0) {
            strJ = ".";
        } else {
            String strI0 = nq7.I0(strS, '/');
            strJ = (uq7.V(strS, "/", false) || e.b(strS)) ? xs1.j("/", strI0) : strI0;
        }
        channelSftp.cd(strJ);
    }

    public static Object E(li4 li4Var, boolean z, qt3 qt3Var, int i) throws Exception {
        Session session;
        byte[] bytes;
        byte[] bytes2;
        if ((i & 1) != 0) {
            z = true;
        }
        boolean z2 = (i & 2) != 0;
        li4Var.getClass();
        ChannelSftp channelSftp = null;
        try {
            try {
                JSch jSchY = li4Var.y(!z);
                CloudCredentials cloudCredentialsT = li4Var.t();
                session = jSchY.getSession(cloudCredentialsT.getValidUsername(), cloudCredentialsT.getServer(), cloudCredentialsT.getPort());
                if (z) {
                    session.setConfig("StrictHostKeyChecking", z ? "no" : "yes");
                }
                nc1 authType = cloudCredentialsT.getAuthType();
                int i2 = authType == null ? -1 : ki4.a[authType.ordinal()];
                if (i2 != 1) {
                    if (i2 != 2) {
                        throw new io5("Unhandled authType: " + cloudCredentialsT.getAuthType());
                    }
                    session.setConfig("PreferredAuthentications", "publickey");
                    String server = cloudCredentialsT.getServer();
                    CloudCredentials.CloudPrivateKey key = cloudCredentialsT.getKey();
                    String keyString = key != null ? key.getKeyString() : null;
                    if (keyString != null && keyString.length() != 0) {
                        String keyString2 = key.getKeyString();
                        Charset charset = f51.a;
                        byte[] bytes3 = keyString2.getBytes(charset);
                        bytes3.getClass();
                        String passphrase = key.getPassphrase();
                        if (passphrase != null) {
                            bytes2 = passphrase.getBytes(charset);
                            bytes2.getClass();
                        } else {
                            bytes2 = null;
                        }
                        jSchY.addIdentity(server, bytes3, null, bytes2);
                        bytes = null;
                    }
                    throw new IllegalStateException(("Invalid key = " + (key != null ? key.getKeyString() : null)).toString());
                }
                session.setConfig("PreferredAuthentications", "password");
                String password = cloudCredentialsT.getPassword();
                if (password == null) {
                    throw new IllegalStateException("Missing SFTP password");
                }
                bytes = password.getBytes(f51.a);
                bytes.getClass();
                session.setPassword(bytes);
                try {
                    try {
                        session.connect(yr5.p);
                        if (bytes != null) {
                            Arrays.fill(bytes, 0, bytes.length, (byte) 0);
                        }
                        Channel channelOpenChannel = session.openChannel("sftp");
                        channelOpenChannel.getClass();
                        ChannelSftp channelSftp2 = (ChannelSftp) channelOpenChannel;
                        try {
                            channelSftp2.connect(yr5.p);
                            D(cloudCredentialsT, channelSftp2);
                            Object objInvoke = qt3Var.invoke(channelSftp2, session);
                            if (z2) {
                                try {
                                    channelSftp2.disconnect();
                                } catch (Exception unused) {
                                }
                                try {
                                    session.disconnect();
                                } catch (Exception unused2) {
                                }
                            }
                            return objInvoke;
                        } catch (Exception e2) {
                            throw e2;
                        } catch (Throwable th) {
                            th = th;
                            channelSftp = channelSftp2;
                            if (z2) {
                                if (channelSftp != null) {
                                    try {
                                        channelSftp.disconnect();
                                    } catch (Exception unused3) {
                                    }
                                }
                                if (session != null) {
                                    try {
                                        session.disconnect();
                                    } catch (Exception unused4) {
                                    }
                                }
                            }
                            throw th;
                        }
                    } catch (Exception e3) {
                        throw e3;
                    }
                } catch (Throwable th2) {
                    if (bytes != null) {
                        Arrays.fill(bytes, 0, bytes.length, (byte) 0);
                    }
                    throw th2;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Exception e4) {
            throw e4;
        } catch (Throwable th4) {
            th = th4;
            session = null;
        }
    }

    public static ArrayList F(Vector vector) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : vector) {
            if (obj instanceof ChannelSftp.LsEntry) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : arrayList) {
            ChannelSftp.LsEntry lsEntry = (ChannelSftp.LsEntry) obj2;
            if (!pe4.d(lsEntry.a, ".") && !pe4.d(lsEntry.a, "..")) {
                arrayList2.add(obj2);
            }
        }
        return arrayList2;
    }

    public static boolean z(Exception exc) {
        String message;
        String message2 = exc.getMessage();
        return (message2 != null && nq7.Z(message2, "No such file", false)) || ((message = exc.getMessage()) != null && nq7.Z(message, "The file does not exist", false));
    }

    public final String C(String str) {
        str.getClass();
        return nq7.I0(str, '/', '\\');
    }

    @Override // defpackage.jh1
    public final tc4 c(String str, t15 t15Var) {
        str.getClass();
        B(str);
        return (tc4) E(this, false, new mu3(t15Var, C(str), this), 1);
    }

    @Override // defpackage.jh1
    public final CloudOperationsImpl$LoginResult d(boolean z) {
        String message;
        try {
            return (CloudOperationsImpl$LoginResult) E(this, z, new pc1(4), 2);
        } catch (Exception e2) {
            vr6.e$default(vr6.INSTANCE, "JschService", "login", e2, null, 8, null);
            if (!(e2 instanceof JSchException) || (message = e2.getMessage()) == null || !uq7.V(message, "UnknownHostKey", false)) {
                return new CloudOperationsImpl$LoginResult.TempConnectionError(e2);
            }
            String message2 = e2.getMessage();
            String strA0 = message2 != null ? nq7.A0(message2, "fingerprint is ", message2) : null;
            if (strA0 == null) {
                strA0 = "";
            }
            return new CloudOperationsImpl$LoginResult.UnknownHostKey(e2, nc8.I(new pw5("Fingerprint", strA0)));
        } catch (Throwable th) {
            vr6.e$default(vr6.INSTANCE, "JschService", "login", th, null, 8, null);
            return new CloudOperationsImpl$LoginResult.TempConnectionError(new Exception(th));
        }
    }

    @Override // defpackage.jh1
    public final void e(final c62 c62Var, final String str, final long j, final cz czVar) throws Exception {
        B(str);
        final String strConcat = str.concat(".tmp");
        E(this, false, new qt3() { // from class: ji4
            @Override // defpackage.qt3
            public final Object invoke(Object obj, Object obj2) {
                final li4 li4Var = this.a;
                final String str2 = strConcat;
                c62 c62Var2 = c62Var;
                long j2 = j;
                final String str3 = str;
                mt3 mt3Var = czVar;
                ChannelSftp channelSftp = (ChannelSftp) obj;
                Session session = (Session) obj2;
                channelSftp.getClass();
                session.getClass();
                try {
                    try {
                        String strE0 = nq7.E0('/', nq7.I0(str2, '/'), "");
                        if (strE0.length() > 0) {
                            li4Var.v(strE0, channelSftp);
                        }
                        BufferedInputStream bufferedInputStreamA = c62Var2.a();
                        f86 f86Var = new f86(channelSftp.put(li4Var.C(str2)), j2, new h20(mt3Var, 2));
                        try {
                            try {
                                cy0.j(bufferedInputStreamA, f86Var, 262144);
                                f86Var.close();
                                bufferedInputStreamA.close();
                                li4.A(channelSftp, session);
                                li4.B(str2);
                                li4.B(str3);
                                final String strC = li4Var.C(str2);
                                final String strC2 = li4Var.C(str3);
                                li4.E(li4Var, false, new qt3() { // from class: ei4
                                    @Override // defpackage.qt3
                                    public final Object invoke(Object obj3, Object obj4) {
                                        String str4 = str3;
                                        String str5 = strC;
                                        String str6 = strC2;
                                        ChannelSftp channelSftp2 = (ChannelSftp) obj3;
                                        channelSftp2.getClass();
                                        ((Session) obj4).getClass();
                                        try {
                                            String strE1 = nq7.E0('/', nq7.I0(str4, '/'), "");
                                            int length = strE1.length();
                                            li4 li4Var2 = li4Var;
                                            if (length > 0) {
                                                li4Var2.v(strE1, channelSftp2);
                                            }
                                            if (li4Var2.r(str4)) {
                                                li4Var2.j(str4);
                                            }
                                            channelSftp2.rename(str5, str6);
                                        } catch (Exception e2) {
                                            String strL = dj7.l("move: Error while moving file from path=", str2, " to newPath=", str4);
                                            Log.e("JschService", strL, e2);
                                            vr6.e$default(vr6.INSTANCE, "JschService", dj7.k(strL, ": ", io4.b(e2)), null, 4, null);
                                        }
                                        return be8.a;
                                    }
                                }, 3);
                                li4.A(channelSftp, session);
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
                    } catch (Exception e2) {
                        li4.A(channelSftp, session);
                        li4Var.j(str2);
                        vr6.e$default(vr6.INSTANCE, "JschService", "put: ".concat(io4.b(e2)), null, 4, null);
                        throw e2;
                    }
                } catch (Throwable th5) {
                    li4.A(channelSftp, session);
                    throw th5;
                }
            }
        }, 1);
    }

    @Override // defpackage.jh1
    public final pg1 f(String str) {
        Object next;
        str.getClass();
        String strB0 = nq7.B0(nq7.I0(str, '/'), '/');
        try {
            Iterator it = s(nq7.E0('/', str, str)).iterator();
            while (it.hasNext()) {
                next = it.next();
                if (pe4.d(((pg1) next).a, strB0)) {
                    return (pg1) next;
                }
            }
            next = null;
            return (pg1) next;
        } catch (Exception e2) {
            String strConcat = "getFile: Error while getting file at path=".concat(str);
            Log.e("JschService", strConcat, e2);
            vr6.e$default(vr6.INSTANCE, "JschService", dj7.k(strConcat, ": ", io4.b(e2)), null, 4, null);
            return null;
        }
    }

    @Override // defpackage.jh1
    public final dd1 g() {
        return this.c;
    }

    @Override // defpackage.jh1
    public final synchronized void h(String str) {
        str.getClass();
        B(str);
        E(this, false, new hi4(0, this, str), 3);
    }

    @Override // defpackage.jh1
    public final void j(String str) throws Exception {
        str.getClass();
        B(str);
        E(this, false, new mi(3, this, str), 3);
    }

    @Override // defpackage.jh1
    public final ni1 l() {
        return (ni1) E(this, false, new xc1(this), 3);
    }

    @Override // defpackage.jh1
    public final String n() {
        return "JschService";
    }

    @Override // defpackage.jh1
    public final ih1 o(String str) {
        try {
            return (ih1) E(this, false, new gi4(0, this, str), 3);
        } catch (Exception e2) {
            Log.e("JschService", "getMetadataPathExistence", e2);
            vr6.e$default(vr6.INSTANCE, "JschService", "getMetadataPathExistence: ".concat(io4.b(e2)), null, 4, null);
            return ih1.Unknown;
        }
    }

    @Override // defpackage.jh1
    public final hh1 q(String str) {
        str.getClass();
        try {
            return (hh1) E(this, false, new ii4(0, this, str), 3);
        } catch (Exception e2) {
            Log.e("JschService", "listMetadataDirectory", e2);
            vr6.e$default(vr6.INSTANCE, "JschService", "listMetadataDirectory: ".concat(io4.b(e2)), null, 4, null);
            return fh1.a;
        }
    }

    @Override // defpackage.jh1
    public final boolean r(final String str) {
        str.getClass();
        return ((Boolean) E(this, false, new qt3() { // from class: fi4
            @Override // defpackage.qt3
            public final Object invoke(Object obj, Object obj2) {
                boolean z;
                li4 li4Var = this.a;
                String str2 = str;
                ChannelSftp channelSftp = (ChannelSftp) obj;
                channelSftp.getClass();
                ((Session) obj2).getClass();
                try {
                    channelSftp.stat(li4Var.C(str2));
                    z = true;
                } catch (Exception e2) {
                    if (!li4.z(e2)) {
                        Log.e("JschService", "exists", e2);
                        vr6.e$default(vr6.INSTANCE, "JschService", "exists: ".concat(io4.b(e2)), null, 4, null);
                    }
                    z = false;
                }
                return Boolean.valueOf(z);
            }
        }, 3)).booleanValue();
    }

    @Override // defpackage.jh1
    public final List s(String str) {
        str.getClass();
        return (List) E(this, false, new lj2(2, this, str), 3);
    }

    public final synchronized void v(String str, ChannelSftp channelSftp) {
        try {
            SftpATTRS sftpATTRSX = x(str, channelSftp);
            if (sftpATTRSX != null && sftpATTRSX.b(16384)) {
                return;
            }
            List listW0 = nq7.w0(str, new char[]{'/'}, 6);
            if (listW0.size() > 1) {
                String str2 = "";
                Iterator it = listW0.iterator();
                while (it.hasNext()) {
                    str2 = str2 + "/" + ((String) it.next());
                    SftpATTRS sftpATTRSX2 = x(str2, channelSftp);
                    if (!(sftpATTRSX2 != null && sftpATTRSX2.b(16384))) {
                        channelSftp.mkdir(C(str2));
                    }
                }
            } else {
                channelSftp.mkdir(C(str));
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void w(String str, ChannelSftp channelSftp) throws SftpException {
        ArrayList<ChannelSftp.LsEntry> arrayListF = F(channelSftp.ls(C(str)));
        if (!arrayListF.isEmpty()) {
            for (ChannelSftp.LsEntry lsEntry : arrayListF) {
                String strK = dj7.k(nq7.I0(str, '/'), "/", lsEntry.a);
                if (lsEntry.c.b(16384)) {
                    w(strK, channelSftp);
                } else {
                    channelSftp.rm(C(strK));
                    if (x(strK, channelSftp) != null) {
                        l0.e("Check failed.");
                        return;
                    }
                }
            }
        }
        channelSftp.rmdir(C(str));
        if (x(str, channelSftp) == null) {
            return;
        }
        l0.e("Check failed.");
    }

    public final SftpATTRS x(String str, ChannelSftp channelSftp) {
        try {
            return channelSftp.stat(C(str));
        } catch (Exception unused) {
            return null;
        }
    }

    public final JSch y(boolean z) {
        if (this.d == null || z) {
            JSch jSch = new JSch();
            JSch.setLogger(V.INSTANCE.getT() ? new mi4() : null);
            this.d = jSch;
        }
        JSch jSch2 = this.d;
        jSch2.getClass();
        return jSch2;
    }

    @Override // defpackage.jh1
    public final void b() {
    }
}
