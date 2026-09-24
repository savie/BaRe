package defpackage;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class or8 {
    public static int f;
    public ArrayList a;
    public int b;
    public int c;
    public ArrayList d;
    public int e;

    public final void a(ArrayList arrayList) {
        int size = this.a.size();
        if (this.e != -1 && size > 0) {
            for (int i = 0; i < arrayList.size(); i++) {
                or8 or8Var = (or8) arrayList.get(i);
                if (this.e == or8Var.b) {
                    c(this.c, or8Var);
                }
            }
        }
        if (size == 0) {
            arrayList.remove(this);
        }
    }

    public final int b(bv4 bv4Var, int i) {
        int iN;
        int iN2;
        ArrayList arrayList = this.a;
        if (arrayList.size() == 0) {
            return 0;
        }
        pt1 pt1Var = (pt1) ((ot1) arrayList.get(0)).T;
        bv4Var.t();
        pt1Var.b(bv4Var, false);
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            ((ot1) arrayList.get(i2)).b(bv4Var, false);
        }
        if (i == 0 && pt1Var.z0 > 0) {
            nc8.e(pt1Var, bv4Var, arrayList, 0);
        }
        int i3 = 1;
        if (i == 1 && pt1Var.A0 > 0) {
            nc8.e(pt1Var, bv4Var, arrayList, 1);
        }
        try {
            bv4Var.p();
        } catch (Exception e) {
            System.err.println(e.toString() + "\n" + Arrays.toString(e.getStackTrace()).replace("[", "   at ").replace(",", "\n   at").replace("]", ""));
        }
        this.d = new ArrayList();
        for (int i4 = 0; i4 < arrayList.size(); i4++) {
            ot1 ot1Var = (ot1) arrayList.get(i4);
            fk8 fk8Var = new fk8(i3);
            new WeakReference(ot1Var);
            bv4.n(ot1Var.I);
            bv4.n(ot1Var.J);
            bv4.n(ot1Var.K);
            bv4.n(ot1Var.L);
            bv4.n(ot1Var.M);
            this.d.add(fk8Var);
        }
        if (i == 0) {
            iN = bv4.n(pt1Var.I);
            iN2 = bv4.n(pt1Var.K);
            bv4Var.t();
        } else {
            iN = bv4.n(pt1Var.J);
            iN2 = bv4.n(pt1Var.L);
            bv4Var.t();
        }
        return iN2 - iN;
    }

    public final void c(int i, or8 or8Var) {
        int i2 = or8Var.b;
        for (ot1 ot1Var : this.a) {
            ArrayList arrayList = or8Var.a;
            if (!arrayList.contains(ot1Var)) {
                arrayList.add(ot1Var);
            }
            if (i == 0) {
                ot1Var.n0 = i2;
            } else {
                ot1Var.o0 = i2;
            }
        }
        this.e = i2;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        int i = this.c;
        if (i == 0) {
            str = "Horizontal";
        } else if (i == 1) {
            str = "Vertical";
        } else {
            str = i == 2 ? "Both" : "Unknown";
        }
        sb.append(str);
        sb.append(" [");
        String strM = xs1.m(sb, this.b, "] <");
        for (ot1 ot1Var : this.a) {
            StringBuilder sbN = fz5.n(strM, TokenAuthenticationScheme.SCHEME_DELIMITER);
            sbN.append(ot1Var.h0);
            strM = sbN.toString();
        }
        return strM.concat(" >");
    }
}
