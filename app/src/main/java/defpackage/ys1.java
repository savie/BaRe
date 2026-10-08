package defpackage;

import com.jcraft.jsch.SftpATTRS;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ys1 {
    public int b;
    public boolean c;
    public final ot1 d;
    public final int e;
    public ys1 f;
    public ej7 i;
    public HashSet a = null;
    public int g = 0;
    public int h = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;

    public ys1(ot1 ot1Var, int i) {
        this.d = ot1Var;
        this.e = i;
    }

    public final void a(ys1 ys1Var, int i) {
        b(ys1Var, i, SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED, false);
    }

    public final boolean b(ys1 ys1Var, int i, int i2, boolean z) {
        if (ys1Var == null) {
            j();
            return true;
        }
        if (!z && !i(ys1Var)) {
            return false;
        }
        this.f = ys1Var;
        if (ys1Var.a == null) {
            ys1Var.a = new HashSet();
        }
        HashSet hashSet = this.f.a;
        if (hashSet != null) {
            hashSet.add(this);
        }
        this.g = i;
        this.h = i2;
        return true;
    }

    public final void c(int i, or8 or8Var, ArrayList arrayList) {
        HashSet hashSet = this.a;
        if (hashSet != null) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                xh8.k(((ys1) it.next()).d, i, arrayList, or8Var);
            }
        }
    }

    public final int d() {
        if (this.c) {
            return this.b;
        }
        return 0;
    }

    public final int e() {
        ys1 ys1Var;
        if (this.d.g0 == 8) {
            return 0;
        }
        int i = this.h;
        return (i == Integer.MIN_VALUE || (ys1Var = this.f) == null || ys1Var.d.g0 != 8) ? this.g : i;
    }

    public final ys1 f() {
        int i = this.e;
        int iA = dj7.A(i);
        ot1 ot1Var = this.d;
        switch (iA) {
            case 0:
            case 5:
            case 6:
            case 7:
            case 8:
                return null;
            case 1:
                return ot1Var.K;
            case 2:
                return ot1Var.L;
            case 3:
                return ot1Var.I;
            case 4:
                return ot1Var.J;
            default:
                e6.e(xs1.u(i));
                return null;
        }
    }

    public final boolean g() {
        HashSet hashSet = this.a;
        if (hashSet == null) {
            return false;
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            if (((ys1) it.next()).f().h()) {
                return true;
            }
        }
        return false;
    }

    public final boolean h() {
        return this.f != null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:46:0x0061 A[RETURN] */
    public final boolean i(ys1 ys1Var) {
        if (ys1Var != null) {
            ot1 ot1Var = ys1Var.d;
            int i = ys1Var.e;
            int i2 = this.e;
            if (i != i2) {
                switch (dj7.A(i2)) {
                    case 0:
                    case 7:
                    case 8:
                        break;
                    case 1:
                    case 3:
                        boolean z = i == 2 || i == 4;
                        if (!(ot1Var instanceof b24)) {
                            return z;
                        }
                        if (z || i == 8) {
                            return true;
                        }
                        break;
                    case 2:
                    case 4:
                        boolean z2 = i == 3 || i == 5;
                        if (!(ot1Var instanceof b24)) {
                            return z2;
                        }
                        if (z2 || i == 9) {
                            return true;
                        }
                        break;
                    case 5:
                        if (i != 2 && i != 4) {
                            return true;
                        }
                        break;
                    case 6:
                        if (i != 6 && i != 8 && i != 9) {
                            return true;
                        }
                        break;
                    default:
                        e6.e(xs1.u(i2));
                        return false;
                }
            } else if (i2 != 6 || (ot1Var.E && this.d.E)) {
                return true;
            }
        }
        return false;
    }

    public final void j() {
        HashSet hashSet;
        ys1 ys1Var = this.f;
        if (ys1Var != null && (hashSet = ys1Var.a) != null) {
            hashSet.remove(this);
            if (this.f.a.size() == 0) {
                this.f.a = null;
            }
        }
        this.a = null;
        this.f = null;
        this.g = 0;
        this.h = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        this.c = false;
        this.b = 0;
    }

    public final void k() {
        ej7 ej7Var = this.i;
        if (ej7Var == null) {
            this.i = new ej7(1);
        } else {
            ej7Var.c();
        }
    }

    public final void l(int i) {
        this.b = i;
        this.c = true;
    }

    public final String toString() {
        return this.d.h0 + ":" + xs1.u(this.e);
    }
}
