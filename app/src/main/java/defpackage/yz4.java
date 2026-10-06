package defpackage;

import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class yz4 {
    public static final Set a;
    public static final LinkedHashSet b;
    public static final ai6 c;
    public static final ai6 d;

    static {
        Set setA0 = x50.A0(new dd1[]{dd1.SFTP, dd1.FTP, dd1.WebDav, dd1.S3});
        a = setA0;
        b = sz8.S(setA0, dd1.SMB);
        c = new ai6("\\d{1,3}(\\.\\d{1,3}){3}");
        d = new ai6("[0-9a-fA-F:.]+");
    }

    public static boolean a(String str) {
        Object bn6Var;
        vz4 vz4VarC = c(str);
        if (vz4VarC != null) {
            String str2 = vz4VarC.a;
            if (!uq7.O(str2, ".local", true)) {
                for (int i = 0; i < str2.length(); i++) {
                    char cCharAt = str2.charAt(i);
                    if (cCharAt == '.' || cCharAt == ':') {
                        boolean zB = c.b(str2);
                        boolean z = nq7.Z(str2, ":", false) && d.b(str2);
                        Object obj = null;
                        if (zB || z) {
                            try {
                                bn6Var = InetAddress.getByName(str2);
                            } catch (Throwable th) {
                                bn6Var = new bn6(th);
                            }
                            obj = (InetAddress) (bn6Var instanceof bn6 ? null : bn6Var);
                        }
                        if (obj != null) {
                            if (obj instanceof Inet4Address) {
                                byte[] address = ((Inet4Address) obj).getAddress();
                                address.getClass();
                                ArrayList arrayList = new ArrayList(address.length);
                                for (byte b2 : address) {
                                    arrayList.add(Integer.valueOf(b2 & 255));
                                }
                                int iIntValue = ((Number) arrayList.get(0)).intValue();
                                int iIntValue2 = ((Number) arrayList.get(1)).intValue();
                                if (iIntValue != 10 && ((iIntValue != 100 || 64 > iIntValue2 || iIntValue2 >= 128) && ((iIntValue != 169 || iIntValue2 != 254) && ((iIntValue != 172 || 16 > iIntValue2 || iIntValue2 >= 32) && ((iIntValue != 192 || iIntValue2 != 168) && ((224 > iIntValue || iIntValue >= 240) && !arrayList.equals(fl1.A0(255, 255, 255, 255)))))))) {
                                    return false;
                                }
                            } else {
                                if (!(obj instanceof Inet6Address)) {
                                    return false;
                                }
                                Inet6Address inet6Address = (Inet6Address) obj;
                                if (!inet6Address.isLinkLocalAddress() && !inet6Address.isMulticastAddress() && (inet6Address.getAddress()[0] & 254) != 252) {
                                    return false;
                                }
                            }
                            return true;
                        }
                    }
                }
            }
            return true;
        }
        return false;
    }

    public static boolean b(dd1 dd1Var, String str, int i, int i2) {
        dd1Var.getClass();
        if (i < 37 || i2 < 37) {
            return false;
        }
        if (dd1Var == dd1.SMB) {
            return a(str);
        }
        if (a.contains(dd1Var)) {
            return a(str);
        }
        return false;
    }

    public static vz4 c(String str) {
        String lowerCase;
        Integer numW;
        String string = str != null ? nq7.H0(str).toString() : null;
        if (string == null) {
            string = "";
        }
        if (string.length() == 0) {
            return null;
        }
        int iH0 = nq7.h0(string, "://", 0, false, 6);
        if (iH0 >= 0) {
            lowerCase = string.substring(0, iH0).toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            string = string.substring(iH0 + 3);
        } else {
            lowerCase = null;
        }
        String strC0 = nq7.C0(string, "/", string);
        String strC1 = nq7.C0(strC0, "?", strC0);
        String strC2 = nq7.C0(strC1, "#", strC1);
        String string2 = nq7.H0(nq7.A0(strC2, "@", strC2)).toString();
        if (uq7.V(string2, "[", false)) {
            String strZ0 = nq7.z0(string2, "[", string2);
            String strC3 = nq7.C0(strZ0, "]", strZ0);
            numW = uq7.W(10, nq7.q0(nq7.z0(strZ0, "]", ""), ":"));
            string2 = strC3;
        } else {
            int i = 0;
            for (int i2 = 0; i2 < string2.length(); i2++) {
                if (string2.charAt(i2) == ':') {
                    i++;
                }
            }
            if (i == 1) {
                numW = uq7.W(10, nq7.A0(string2, ":", string2));
                if (numW != null) {
                    string2 = nq7.F0(string2, ":", string2);
                }
            } else {
                numW = null;
            }
        }
        String string3 = nq7.H0(nq7.C0(string2, "%", string2)).toString();
        if (string3.length() <= 0) {
            string3 = null;
        }
        if (string3 != null) {
            return new vz4(numW, string3, lowerCase);
        }
        return null;
    }
}
