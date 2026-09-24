package defpackage;

import java.net.Inet4Address;
import java.net.InetAddress;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class ua5 {
    public static final Object a = new Object();
    public static final ta5 b = new ta5(16, 0.75f, true);

    /* JADX WARN: Code duplicated, block: B:39:0x007e  */
    /* JADX WARN: Code duplicated, block: B:45:0x0088  */
    /* JADX WARN: Code duplicated, block: B:80:0x006d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static List a(List list) {
        InetAddress inetAddress;
        Object bn6Var;
        Object bn6Var2;
        boolean z;
        Object obj;
        if (list.size() != 2) {
            return ov2.a;
        }
        String str = (String) el1.V0(0, list);
        InetAddress inetAddress2 = null;
        inetAddress2 = null;
        inetAddress2 = null;
        if (str != null) {
            List listW0 = nq7.w0(str, new char[]{'.'}, 6);
            if (listW0.size() != 4) {
                inetAddress = null;
            } else if (listW0.isEmpty()) {
                try {
                    bn6Var2 = InetAddress.getByName(str);
                } catch (Throwable th) {
                    bn6Var2 = new bn6(th);
                }
                z = bn6Var2 instanceof bn6;
                obj = bn6Var2;
                if (z) {
                    obj = null;
                }
                inetAddress = (InetAddress) obj;
                if (inetAddress != null || !(inetAddress instanceof Inet4Address)) {
                    inetAddress = null;
                }
            } else {
                Iterator it = listW0.iterator();
                while (true) {
                    if (it.hasNext()) {
                        String str2 = (String) it.next();
                        if (str2.length() > 0 && str2.length() <= 3) {
                            int i = 0;
                            while (true) {
                                if (i < str2.length()) {
                                    char cCharAt = str2.charAt(i);
                                    if ('0' <= cCharAt && cCharAt < ':') {
                                        i++;
                                    }
                                } else {
                                    int i2 = Integer.parseInt(str2);
                                    if (i2 < 0 || i2 >= 256) {
                                    }
                                }
                            }
                        }
                    } else {
                        bn6Var2 = InetAddress.getByName(str);
                        z = bn6Var2 instanceof bn6;
                        obj = bn6Var2;
                        if (z) {
                            obj = null;
                        }
                        inetAddress = (InetAddress) obj;
                        if (inetAddress != null) {
                        }
                    }
                    inetAddress = null;
                }
            }
        } else {
            inetAddress = null;
        }
        String str3 = (String) el1.V0(1, list);
        if (str3 != null && nq7.a0(str3, ':')) {
            for (int i3 = 0; i3 < str3.length(); i3++) {
                char cCharAt2 = str3.charAt(i3);
                if (('0' <= cCharAt2 && cCharAt2 < ':') || (('a' <= cCharAt2 && cCharAt2 < 'g') || (('A' <= cCharAt2 && cCharAt2 < 'G') || cCharAt2 == ':' || cCharAt2 == '.'))) {
                }
            }
            try {
                bn6Var = InetAddress.getByName(str3);
            } catch (Throwable th2) {
                bn6Var = new bn6(th2);
            }
            inetAddress2 = (InetAddress) (bn6Var instanceof bn6 ? null : bn6Var);
        }
        return x50.p0(new InetAddress[]{inetAddress, inetAddress2});
    }
}
