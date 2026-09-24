package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class mt6 {
    public final nt6 a;

    public mt6(nt6 nt6Var) {
        this.a = nt6Var;
    }

    public static mt6 a(zu6 zu6Var) throws iw0 {
        int iD = zu6Var.b.d(zu6Var);
        nt6 nt6Var = (nt6) sz8.k0(iD, nt6.class, null);
        int iOrdinal = nt6Var.ordinal();
        if (iOrdinal == 0) {
            vt6 vt6Var = new vt6(nt6.SMB2_PREAUTH_INTEGRITY_CAPABILITIES);
            vt6Var.b = new ArrayList();
            vt6Var.b(zu6Var);
            return vt6Var;
        }
        if (iOrdinal == 1) {
            ws6 ws6Var = new ws6(nt6.SMB2_ENCRYPTION_CAPABILITIES);
            ws6Var.b = new ArrayList();
            ws6Var.b(zu6Var);
            return ws6Var;
        }
        if (iOrdinal == 2) {
            ms6 ms6Var = new ms6(nt6.SMB2_COMPRESSION_CAPABILITIES);
            ms6Var.b = new ArrayList();
            ms6Var.b(zu6Var);
            return ms6Var;
        }
        if (iOrdinal == 3) {
            qt6 qt6Var = new qt6(nt6.SMB2_NETNAME_NEGOTIATE_CONTEXT_ID);
            qt6Var.b(zu6Var);
            return qt6Var;
        }
        throw new gv6("Unknown SMB2NegotiateContextType encountered: " + iD + " / " + nt6Var);
    }

    public final void b(zu6 zu6Var) throws iw0 {
        int iD = zu6Var.b.d(zu6Var);
        zu6Var.t(4);
        c(zu6Var);
        int i = iD % 8;
        int i2 = i == 0 ? 0 : 8 - i;
        if (i2 <= 0 || zu6Var.a() < i2) {
            return;
        }
        zu6Var.t(i2);
    }

    public abstract void c(zu6 zu6Var);

    public abstract int d(zu6 zu6Var);
}
