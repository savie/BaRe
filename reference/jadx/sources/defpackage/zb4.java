package defpackage;

import java.net.InetAddress;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zb4 extends h58 implements iv1 {
    public final boolean d;

    public zb4(boolean z) {
        super(InetAddress.class);
        this.d = z;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0016  */
    @Override // defpackage.iv1
    public final em4 a(c87 c87Var, kp0 kp0Var) {
        boolean z;
        bk4 bk4VarK = tn7.k(c87Var, kp0Var, this.a);
        if (bk4VarK != null) {
            ak4 ak4Var = bk4VarK.b;
            if (ak4Var.a() || ak4Var == ak4.k) {
                z = true;
            } else {
                z = false;
            }
        } else {
            z = false;
        }
        return z != this.d ? new zb4(z) : this;
    }

    @Override // defpackage.h58, defpackage.em4
    public final /* bridge */ /* synthetic */ void e(Object obj, fk4 fk4Var, c87 c87Var) {
        p((InetAddress) obj, fk4Var);
    }

    @Override // defpackage.h58, defpackage.em4
    public final void f(Object obj, fk4 fk4Var, c87 c87Var, rc8 rc8Var) {
        InetAddress inetAddress = (InetAddress) obj;
        nw8 nw8VarD = rc8Var.d(inetAddress, mm4.VALUE_STRING);
        nw8VarD.b = InetAddress.class;
        nw8 nw8VarE = rc8Var.e(fk4Var, nw8VarD);
        p(inetAddress, fk4Var);
        rc8Var.f(fk4Var, nw8VarE);
    }

    public final void p(InetAddress inetAddress, fk4 fk4Var) {
        String strTrim;
        if (this.d) {
            strTrim = inetAddress.getHostAddress();
        } else {
            strTrim = inetAddress.toString().trim();
            int iIndexOf = strTrim.indexOf(47);
            if (iIndexOf >= 0) {
                strTrim = iIndexOf == 0 ? strTrim.substring(1) : strTrim.substring(0, iIndexOf);
            }
        }
        fk4Var.b0(strTrim);
    }
}
