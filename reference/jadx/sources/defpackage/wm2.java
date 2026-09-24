package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wm2 extends vc7 {
    public static final b05 I = new b05();
    public static final sl4 J = new sl4();
    public static final lk K = new lk();
    public final ke H;

    public wm2(fi7 fi7Var, ab8 ab8Var, ke keVar) {
        super(fi7Var, ab8Var);
        this.H = keVar;
    }

    public static vm2 g(wm2 wm2Var, fi7 fi7Var, Set set, Set set2, Set set3, int i, Set set4) {
        qs6 qs6Var = new qs6(wm2Var.e, wm2Var.t, wm2Var.c, set, set2, set3, i, set4, fi7Var);
        ke keVar = wm2Var.H;
        rs6 rs6Var = (rs6) vc7.a(wm2Var.b(qs6Var), "Create", fi7Var, (fo8) keVar.b, wm2Var.r);
        try {
            vm2 vm2Var = (vm2) keVar.o(wm2Var.d, rs6Var, fi7Var, new tm2(wm2Var, fi7Var, set, set2, set3, i, set4));
            return vm2Var != null ? vm2Var : new vm2(rs6Var, fi7Var, wm2Var);
        } catch (ny5 e) {
            it6 it6Var = it6.SMB2_NEGOTIATE;
            throw new yu6(e.a, "Cannot resolve path " + fi7Var, e);
        }
    }

    public final void A(nr6 nr6Var, m93 m93Var) {
        zu6 zu6Var = new zu6();
        HashMap map = n83.a;
        Class<?> cls = m93Var.getClass();
        s73 s73Var = (s73) n83.a.get(cls);
        if (s73Var == null) {
            c6.f(fz5.k(cls, "FileInformationClass not supported - "));
            return;
        }
        s73Var.b(m93Var, zu6Var);
        int iA = s73Var.a();
        byte[] bArrC = zu6Var.c();
        hu6 hu6Var = new hu6(this.e, this.t, this.c, nr6Var, iA, bArrC);
        vc7.a(b(hu6Var), "SetInfo", nr6Var, zm7.w, this.r);
    }

    public final boolean h(String str, EnumSet enumSet, zm7 zm7Var) throws va8 {
        try {
            q(str, EnumSet.of(s5.FILE_READ_ATTRIBUTES), EnumSet.of(w63.FILE_ATTRIBUTE_NORMAL), ju6.e, 2, enumSet).close();
            return true;
        } catch (yu6 e) {
            if (zm7Var.c(e.b)) {
                return false;
            }
            throw e;
        }
    }

    public final u63 j(String str) throws va8 {
        mm2 mm2VarQ = q(str, EnumSet.of(s5.FILE_READ_ATTRIBUTES, s5.FILE_READ_EA), null, ju6.e, 2, null);
        try {
            g93 g93VarS0 = mm2VarQ.s0(u63.class);
            mm2VarQ.close();
            return (u63) g93VarS0;
        } catch (Throwable th) {
            try {
                mm2VarQ.close();
                throw th;
            } catch (Throwable th2) {
                th.addSuppressed(th2);
                throw th;
            }
        }
    }

    public final wc7 m() throws va8 {
        bm2 bm2VarR = r("", EnumSet.of(s5.FILE_READ_ATTRIBUTES), null, ju6.e, 2, null);
        try {
            nr6 nr6Var = bm2VarR.c;
            au6 au6Var = new au6(this.e, this.t, this.c, nr6Var, 2, 0, 7);
            try {
                wc7 wc7VarA = wc7.a(new jw0(((bu6) vc7.a(b(au6Var), "QueryInfo", nr6Var, zm7.w, this.r)).e, true, vw2.b));
                bm2VarR.close();
                return wc7VarA;
            } catch (iw0 e) {
                throw new gv6(e);
            }
        } catch (Throwable th) {
            try {
                bm2VarR.close();
                throw th;
            } catch (Throwable th2) {
                th.addSuppressed(th2);
                throw th;
            }
        }
    }

    public final ArrayList n(String str) {
        bm2 bm2VarR = r(str, EnumSet.of(s5.FILE_LIST_DIRECTORY, s5.FILE_READ_ATTRIBUTES, s5.FILE_READ_EA), null, ju6.e, 2, null);
        try {
            ArrayList arrayList = new ArrayList();
            am2 am2Var = new am2(bm2VarR);
            while (am2Var.hasNext()) {
                arrayList.add((i73) am2Var.next());
            }
            bm2VarR.g();
            return arrayList;
        } catch (Throwable th) {
            bm2VarR.g();
            throw th;
        }
    }

    public final mm2 q(String str, Set set, EnumSet enumSet, Set set2, int i, EnumSet enumSet2) {
        fi7 fi7Var = new fi7(this.a, str);
        try {
            ke keVar = this.H;
            um2 um2Var = new um2(this, fi7Var, set, enumSet, set2, i, enumSet2);
            keVar.getClass();
            vm2 vm2Var = (vm2) um2Var.b(fi7Var);
            rs6 rs6Var = vm2Var.a;
            fi7 fi7Var2 = vm2Var.c;
            wm2 wm2Var = vm2Var.b;
            boolean zContains = rs6Var.e.contains(w63.FILE_ATTRIBUTE_DIRECTORY);
            nr6 nr6Var = rs6Var.f;
            return zContains ? new bm2(nr6Var, wm2Var, fi7Var2) : new r63(nr6Var, wm2Var, fi7Var2);
        } catch (ny5 e) {
            long j = ((bp5) sz8.k0(e.a, bp5.class, bp5.STATUS_OTHER)).a;
            it6 it6Var = it6.SMB2_NEGOTIATE;
            throw new yu6(j, "Cannot resolve path " + fi7Var, e);
        }
    }

    public final bm2 r(String str, EnumSet enumSet, EnumSet enumSet2, Set set, int i, EnumSet enumSet3) {
        EnumSet enumSetCopyOf = enumSet3 != null ? EnumSet.copyOf((Collection) enumSet3) : EnumSet.noneOf(ps6.class);
        enumSetCopyOf.add(ps6.FILE_DIRECTORY_FILE);
        enumSetCopyOf.remove(ps6.FILE_NON_DIRECTORY_FILE);
        EnumSet enumSetCopyOf2 = enumSet2 != null ? EnumSet.copyOf((Collection) enumSet2) : EnumSet.noneOf(w63.class);
        enumSetCopyOf2.add(w63.FILE_ATTRIBUTE_DIRECTORY);
        return (bm2) q(str, enumSet, enumSetCopyOf2, set, i, enumSetCopyOf);
    }

    public final String toString() {
        return wm2.class.getSimpleName() + "[" + this.a + "]";
    }

    public final r63 u(String str, Set set, Set set2, Set set3, int i, Set set4) {
        EnumSet enumSetCopyOf = set4 != null ? EnumSet.copyOf((Collection) set4) : EnumSet.noneOf(ps6.class);
        enumSetCopyOf.add(ps6.FILE_NON_DIRECTORY_FILE);
        enumSetCopyOf.remove(ps6.FILE_DIRECTORY_FILE);
        EnumSet enumSetCopyOf2 = set2 != null ? EnumSet.copyOf((Collection) set2) : EnumSet.noneOf(w63.class);
        enumSetCopyOf2.remove(w63.FILE_ATTRIBUTE_DIRECTORY);
        return (r63) q(str, set, enumSetCopyOf2, set3, i, enumSetCopyOf);
    }

    public final void v(String str) throws va8 {
        try {
            mm2 mm2VarQ = q(str, EnumSet.of(s5.DELETE), EnumSet.of(w63.FILE_ATTRIBUTE_NORMAL), EnumSet.of(ju6.FILE_SHARE_DELETE, ju6.FILE_SHARE_WRITE, ju6.FILE_SHARE_READ), 2, EnumSet.of(ps6.FILE_NON_DIRECTORY_FILE));
            try {
                mm2VarQ.u();
                mm2VarQ.close();
            } catch (Throwable th) {
                try {
                    mm2VarQ.close();
                    throw th;
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                    throw th;
                }
            }
        } catch (yu6 e) {
            if (!K.c(e.b)) {
                throw e;
            }
        }
    }

    public final void z(String str, boolean z) throws va8 {
        if (str == null || str.isEmpty()) {
            c6.f("rmdir: path should be non-null and non-empty");
            return;
        }
        w63 w63Var = w63.FILE_ATTRIBUTE_DIRECTORY;
        if (z) {
            for (p73 p73Var : n(str)) {
                String str2 = p73Var.a;
                if (!str2.equals(".") && !str2.equals("..")) {
                    String strK = dj7.k(str, "\\", str2);
                    if (sz8.H(p73Var.f, w63Var)) {
                        z(strK, true);
                    } else {
                        v(strK);
                    }
                }
            }
            z(str, false);
            return;
        }
        try {
            mm2 mm2VarQ = q(str, EnumSet.of(s5.DELETE), EnumSet.of(w63Var), EnumSet.of(ju6.FILE_SHARE_DELETE, ju6.FILE_SHARE_WRITE, ju6.FILE_SHARE_READ), 2, EnumSet.of(ps6.FILE_DIRECTORY_FILE));
            try {
                mm2VarQ.u();
                mm2VarQ.close();
            } catch (Throwable th) {
                try {
                    mm2VarQ.close();
                    throw th;
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                    throw th;
                }
            }
        } catch (yu6 e) {
            if (!K.c(e.b)) {
                throw e;
            }
        }
    }
}
