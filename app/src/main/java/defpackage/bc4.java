package defpackage;

import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bc4 extends h58 {
    public static void p(InetSocketAddress inetSocketAddress, fk4 fk4Var) {
        String strSubstring;
        InetAddress address = inetSocketAddress.getAddress();
        String hostName = address == null ? inetSocketAddress.getHostName() : address.toString().trim();
        int iIndexOf = hostName.indexOf(47);
        if (iIndexOf >= 0) {
            if (iIndexOf == 0) {
                if (address instanceof Inet6Address) {
                    strSubstring = "[" + hostName.substring(1) + "]";
                } else {
                    strSubstring = hostName.substring(1);
                }
                hostName = strSubstring;
            } else {
                hostName = hostName.substring(0, iIndexOf);
            }
        }
        StringBuilder sbN = fz5.n(hostName, ":");
        sbN.append(inetSocketAddress.getPort());
        fk4Var.b0(sbN.toString());
    }

    @Override // defpackage.h58, defpackage.em4
    public final /* bridge */ /* synthetic */ void e(Object obj, fk4 fk4Var, c87 c87Var) {
        p((InetSocketAddress) obj, fk4Var);
    }

    @Override // defpackage.h58, defpackage.em4
    public final void f(Object obj, fk4 fk4Var, c87 c87Var, rc8 rc8Var) {
        InetSocketAddress inetSocketAddress = (InetSocketAddress) obj;
        nw8 nw8VarD = rc8Var.d(inetSocketAddress, mm4.VALUE_STRING);
        nw8VarD.b = InetSocketAddress.class;
        nw8 nw8VarE = rc8Var.e(fk4Var, nw8VarD);
        p(inetSocketAddress, fk4Var);
        rc8Var.f(fk4Var, nw8VarE);
    }
}
