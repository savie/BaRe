package defpackage;

import android.os.Build;
import java.net.ConnectException;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.LinkedHashSet;
import java.util.Set;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.cloud.protocols.CloudCredentials;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class uz4 {
    public static zz4 a(dd1 dd1Var, String str, boolean z, int i, int i2, bt3 bt3Var) {
        dd1Var.getClass();
        if (!yz4.b(dd1Var, str, i, i2) || z || ((Boolean) bt3Var.invoke()).booleanValue()) {
            return null;
        }
        vz4 vz4VarC = yz4.c(str);
        return new zz4(dd1Var, vz4VarC != null ? vz4VarC.a : null);
    }

    public static zz4 b(jh1 jh1Var) {
        dz5 dz5Var = dz5.a;
        boolean zH = dz5.h("android.permission.ACCESS_LOCAL_NETWORK");
        int i = Build.VERSION.SDK_INT;
        SwiftApp.Companion companion = SwiftApp.d;
        int i2 = SwiftApp.Companion.c().getApplicationInfo().targetSdkVersion;
        qz4 qz4Var = new qz4(0, dz5Var, dz5.class, "grantLocalNetworkPermissionWithRootOrShizuku", "grantLocalNetworkPermissionWithRootOrShizuku()Z", 0);
        jh1Var.getClass();
        return a(jh1Var.g(), e(jh1Var), zH, i, i2, qz4Var);
    }

    /* JADX WARN: Code duplicated, block: B:46:0x009a  */
    /* JADX WARN: Code duplicated, block: B:58:0x00b5 A[PHI: r3
      0x00b5: PHI (r3v9 java.lang.Integer) = (r3v3 java.lang.Integer), (r3v12 java.lang.Integer) binds: [B:66:0x00c9, B:57:0x00b3] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:59:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:65:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:68:0x00cc A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:69:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:70:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:73:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:75:0x00ec A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:76:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:78:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:83:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:85:0x0105  */
    /* JADX WARN: Code duplicated, block: B:86:0x010a  */
    /* JADX WARN: Code duplicated, block: B:88:0x0115  */
    /* JADX WARN: Code duplicated, block: B:90:0x0121  */
    /* JADX WARN: Code duplicated, block: B:91:0x0126  */
    /* JADX WARN: Code duplicated, block: B:93:0x0131  */
    /* JADX WARN: Code duplicated, block: B:94:0x013c  */
    public static zz4 c(dd1 dd1Var, String str, fd1 fd1Var, Integer num, Exception exc, boolean z, int i, int i2, bt3 bt3Var, rt3 rt3Var) {
        vz4 vz4VarC;
        Integer num2;
        Integer numValueOf;
        String str2;
        int i3;
        fd1 fd1Var2;
        int defPort;
        fd1 fd1Var3;
        int defPort2;
        int iIntValue;
        int iIntValue2;
        wz4 wz4Var;
        Object bn6Var;
        dd1Var.getClass();
        for (Throwable th : h77.y0(exc, new hc1(2))) {
            if (!(th instanceof ConnectException) && !(th instanceof SocketException) && !(th instanceof SocketTimeoutException) && !(th instanceof UnknownHostException)) {
                String message = th.getMessage();
                if (message == null) {
                    message = "";
                }
                if (!nq7.Z(message, "timeout", true)) {
                    String message2 = th.getMessage();
                    if (message2 == null) {
                        message2 = "";
                    }
                    if (!nq7.Z(message2, "EPERM", true)) {
                        String message3 = th.getMessage();
                        if (message3 == null) {
                            message3 = "";
                        }
                        if (!nq7.Z(message3, "EACCES", true)) {
                            String message4 = th.getMessage();
                            if (nq7.Z(message4 != null ? message4 : "", "permission denied", true)) {
                            }
                        }
                    }
                }
            }
            zz4 zz4VarA = a(dd1Var, str, z, i, i2, bt3Var);
            if (zz4VarA == null) {
                Set set = yz4.a;
                if (i < 37 || i2 < 37 || z) {
                    break;
                    break;
                    break;
                }
                LinkedHashSet linkedHashSet = yz4.b;
                if (!linkedHashSet.contains(dd1Var)) {
                    break;
                }
                if (linkedHashSet.contains(dd1Var) && (vz4VarC = yz4.c(str)) != null) {
                    if (num == null) {
                        num2 = vz4VarC.b;
                        if (num2 != null || 1 > (iIntValue2 = num2.intValue()) || iIntValue2 >= 65536) {
                            num2 = null;
                        }
                        if (num2 != null) {
                            iIntValue = num2.intValue();
                        } else {
                            if (fd1Var != null) {
                                numValueOf = Integer.valueOf(fd1Var.getDefPort());
                            } else {
                                numValueOf = null;
                            }
                            if (numValueOf == null) {
                                str2 = vz4VarC.c;
                                i3 = xz4.a[dd1Var.ordinal()];
                                if (i3 != 1) {
                                    numValueOf = Integer.valueOf(fd1.SMB.getDefPort());
                                } else if (i3 != 2) {
                                    numValueOf = Integer.valueOf(fd1.SFTP.getDefPort());
                                } else if (i3 != 3) {
                                    fd1Var2 = fd1.FTPS_IMPLICIT;
                                    if (pe4.d(str2, fd1Var2.getScheme())) {
                                        defPort = fd1Var2.getDefPort();
                                    } else {
                                        defPort = fd1.FTP.getDefPort();
                                    }
                                    numValueOf = Integer.valueOf(defPort);
                                } else if (i3 != 4 || i3 == 5) {
                                    fd1Var3 = fd1.HTTP;
                                    if (pe4.d(str2, fd1Var3.getScheme())) {
                                        defPort2 = fd1Var3.getDefPort();
                                    } else {
                                        defPort2 = fd1.HTTPS.getDefPort();
                                    }
                                    numValueOf = Integer.valueOf(defPort2);
                                } else {
                                    numValueOf = null;
                                }
                                if (numValueOf != null) {
                                    wz4Var = null;
                                }
                            }
                            iIntValue = numValueOf.intValue();
                        }
                    } else {
                        int iIntValue3 = num.intValue();
                        num2 = (1 > iIntValue3 || iIntValue3 >= 65536) ? null : num;
                        if (num2 != null) {
                            iIntValue = num2.intValue();
                        } else {
                            num2 = vz4VarC.b;
                            if (num2 != null) {
                                num2 = null;
                            } else {
                                num2 = null;
                            }
                            if (num2 != null) {
                                iIntValue = num2.intValue();
                            } else {
                                if (fd1Var != null) {
                                    numValueOf = Integer.valueOf(fd1Var.getDefPort());
                                } else {
                                    numValueOf = null;
                                }
                                if (numValueOf == null) {
                                    str2 = vz4VarC.c;
                                    i3 = xz4.a[dd1Var.ordinal()];
                                    if (i3 != 1) {
                                        numValueOf = Integer.valueOf(fd1.SMB.getDefPort());
                                    } else if (i3 != 2) {
                                        numValueOf = Integer.valueOf(fd1.SFTP.getDefPort());
                                    } else if (i3 != 3) {
                                        fd1Var2 = fd1.FTPS_IMPLICIT;
                                        if (pe4.d(str2, fd1Var2.getScheme())) {
                                            defPort = fd1Var2.getDefPort();
                                        } else {
                                            defPort = fd1.FTP.getDefPort();
                                        }
                                        numValueOf = Integer.valueOf(defPort);
                                    } else if (i3 != 4) {
                                        fd1Var3 = fd1.HTTP;
                                        if (pe4.d(str2, fd1Var3.getScheme())) {
                                            defPort2 = fd1Var3.getDefPort();
                                        } else {
                                            defPort2 = fd1.HTTPS.getDefPort();
                                        }
                                        numValueOf = Integer.valueOf(defPort2);
                                    } else {
                                        fd1Var3 = fd1.HTTP;
                                        if (pe4.d(str2, fd1Var3.getScheme())) {
                                            defPort2 = fd1Var3.getDefPort();
                                        } else {
                                            defPort2 = fd1.HTTPS.getDefPort();
                                        }
                                        numValueOf = Integer.valueOf(defPort2);
                                    }
                                    if (numValueOf != null) {
                                        wz4Var = null;
                                    }
                                }
                                iIntValue = numValueOf.intValue();
                            }
                        }
                    }
                    wz4Var = new wz4(vz4VarC.a, iIntValue);
                } else {
                    wz4Var = null;
                }
                if (wz4Var == null) {
                    break;
                }
                try {
                    bn6Var = (Boolean) rt3Var.a(wz4Var.a, Integer.valueOf(wz4Var.b), 500);
                    bn6Var.getClass();
                } catch (Throwable th2) {
                    bn6Var = new bn6(th2);
                }
                Object obj = Boolean.FALSE;
                if (bn6Var instanceof bn6) {
                    bn6Var = obj;
                }
                if (!((Boolean) bn6Var).booleanValue() || ((Boolean) bt3Var.invoke()).booleanValue()) {
                    break;
                    break;
                }
                return new zz4(dd1Var, wz4Var.a);
            }
            return zz4VarA;
        }
        return null;
    }

    public static zz4 d(jh1 jh1Var, Exception exc) {
        CloudCredentials cloudCredentialsT;
        Integer num;
        String strE;
        dz5 dz5Var = dz5.a;
        boolean zH = dz5.h("android.permission.ACCESS_LOCAL_NETWORK");
        int i = Build.VERSION.SDK_INT;
        SwiftApp.Companion companion = SwiftApp.d;
        int i2 = SwiftApp.Companion.c().getApplicationInfo().targetSdkVersion;
        m92 m92Var = new m92(0, dz5Var, dz5.class, "grantLocalNetworkPermissionWithRootOrShizuku", "grantLocalNetworkPermissionWithRootOrShizuku()Z", 0, 1);
        sz4 sz4Var = new sz4(3, SwiftApp.Companion.a(), SwiftApp.class, "isLocalNetworkTcpBlockedByPermission", "isLocalNetworkTcpBlockedByPermission(Ljava/lang/String;II)Z", 0);
        jh1Var.getClass();
        mj1 mj1Var = jh1Var instanceof mj1 ? (mj1) jh1Var : null;
        if (mj1Var != null && (mj1Var.m() || (mj1Var.i() && mj1Var.k()))) {
            cloudCredentialsT = mj1Var.t();
            num = null;
        } else {
            cloudCredentialsT = null;
            num = null;
        }
        dd1 dd1VarG = jh1Var.g();
        if (cloudCredentialsT == null || (strE = cloudCredentialsT.getServer()) == null) {
            strE = e(jh1Var);
        }
        return c(dd1VarG, strE, cloudCredentialsT != null ? cloudCredentialsT.getProtocol() : num, cloudCredentialsT != null ? cloudCredentialsT.m77getPort() : num, exc, zH, i, i2, m92Var, sz4Var);
    }

    public static String e(jh1 jh1Var) {
        mj1 mj1Var = jh1Var instanceof mj1 ? (mj1) jh1Var : null;
        if (mj1Var != null && (mj1Var.m() || (mj1Var.i() && mj1Var.k()))) {
            return mj1Var.t().getServer();
        }
        return null;
    }
}
