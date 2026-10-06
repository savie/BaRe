package defpackage;

import com.jcraft.jsch.ChannelSftp;
import com.jcraft.jsch.SftpATTRS;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.io.File;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class og1 {
    public static pg1 a(g23 g23Var, String str) {
        g23Var.getClass();
        str.getClass();
        String strY0 = el1.Y0(fl1.A0(nq7.K0(str, '/'), g23Var.d), "/", null, null, null, 62);
        String str2 = g23Var.d;
        str2.getClass();
        pg1 pg1Var = new pg1(str2, strY0);
        pg1Var.c = g23Var.b;
        Calendar calendar = g23Var.e;
        pg1Var.d = io4.h(calendar != null ? Long.valueOf(calendar.getTimeInMillis()) : null);
        Calendar calendar2 = g23Var.e;
        pg1Var.e = io4.h(calendar2 != null ? Long.valueOf(calendar2.getTimeInMillis()) : null);
        pg1Var.f = strY0;
        pg1Var.g = g23Var.a == 1;
        return pg1Var;
    }

    public static ArrayList b(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            yz3 yz3Var = (yz3) it.next();
            String str = yz3Var.a;
            pg1 pg1Var = null;
            if (str != null) {
                String str2 = yz3Var.b;
                if (nq7.j0(str2)) {
                    str2 = null;
                }
                if (str2 != null) {
                    pg1Var = new pg1(str2, str);
                    pg1Var.c = yz3Var.c;
                    pg1Var.d = yz3Var.d;
                    pg1Var.e = yz3Var.e;
                    pg1Var.f = yz3Var.f;
                    pg1Var.g = pe4.d(yz3Var.i, "application/vnd.google-apps.folder");
                }
            }
            if (pg1Var != null) {
                arrayList.add(pg1Var);
            }
        }
        return arrayList;
    }

    public static ArrayList c(ArrayList arrayList) {
        CharSequence charSequenceSubSequence;
        ArrayList arrayList2 = new ArrayList(hl1.G0(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            pt5 pt5Var = (pt5) it.next();
            String str = pt5Var.d;
            String str2 = pt5Var.b;
            String strQ0 = str != null ? nq7.q0(str, "/") : null;
            if (strQ0 == null) {
                strQ0 = "";
            }
            if (nq7.Z(strQ0, "Swift", false)) {
                int iH0 = nq7.h0(strQ0, "Swift", 0, false, 6);
                if (iH0 < 0) {
                    a6.d(xs1.h(iH0, "End index (", ") is less than start index (0)."));
                    return null;
                }
                if (iH0 == 0) {
                    charSequenceSubSequence = strQ0.subSequence(0, strQ0.length());
                } else {
                    StringBuilder sb = new StringBuilder(strQ0.length() - iH0);
                    sb.append((CharSequence) strQ0, 0, 0);
                    sb.append((CharSequence) strQ0, iH0, strQ0.length());
                    charSequenceSubSequence = sb;
                }
                strQ0 = charSequenceSubSequence.toString();
            }
            List listA0 = fl1.A0(strQ0, str2);
            ArrayList arrayList3 = new ArrayList();
            for (Object obj : listA0) {
                if (!nq7.j0((String) obj)) {
                    arrayList3.add(obj);
                }
            }
            String strT = uq7.T(uq7.T(uq7.T(el1.Y0(arrayList3, "/", null, null, null, 62), TokenAuthenticationScheme.SCHEME_DELIMITER, "%20"), "(", "%28"), ")", "%29");
            pg1 pg1Var = new pg1(str2, strT);
            pg1Var.c = pt5Var.c;
            pg1Var.d = pt5Var.e;
            pg1Var.e = pt5Var.f;
            pg1Var.f = strT;
            pg1Var.g = pt5Var.g;
            arrayList2.add(pg1Var);
        }
        return arrayList2;
    }

    public static pg1 d(zi6 zi6Var, String str) {
        str.getClass();
        String strY0 = el1.Y0(fl1.A0(nq7.K0(str, '/'), zi6Var.name()), "/", null, null, null, 62);
        String strName = zi6Var.name();
        strName.getClass();
        pg1 pg1Var = new pg1(strName, strY0);
        pg1Var.c = zi6Var.e() ? zi6Var.c().size() : 0L;
        pg1Var.d = zi6Var.a().getTime();
        pg1Var.e = zi6Var.d().getTime();
        pg1Var.f = strY0;
        pg1Var.g = zi6Var.b();
        return pg1Var;
    }

    public static pg1 e(qg4 qg4Var) {
        Long lValueOf;
        String strH = qg4Var.h();
        tb1 tb1Var = tb1.a;
        String strI = qb1.c().i();
        strH.getClass();
        if (nq7.Z(strH, strI, false)) {
            strH = strH.substring(nq7.l0(6, strH, strI));
        }
        pg1 pg1Var = new pg1(nq7.B0(nq7.I0(strH, '/'), '/'), strH);
        pg1Var.c = qg4Var.l();
        try {
            lValueOf = Long.valueOf(qg4Var.g().toInstant().toEpochMilli());
        } catch (Exception unused) {
            lValueOf = null;
        }
        long jLongValue = lValueOf != null ? lValueOf.longValue() : 0L;
        pg1Var.d = jLongValue;
        pg1Var.e = jLongValue;
        pg1Var.f = strH;
        pg1Var.g = qg4Var.e();
        return pg1Var;
    }

    public static pg1 f(ChannelSftp.LsEntry lsEntry, String str) {
        lsEntry.getClass();
        str.getClass();
        String strY0 = el1.Y0(fl1.A0(nq7.K0(str, '/'), lsEntry.a), "/", null, null, null, 62);
        tb1 tb1Var = tb1.a;
        String strI = qb1.c().i();
        if (nq7.Z(strY0, strI, false)) {
            strY0 = strY0.substring(nq7.l0(6, strY0, strI));
        }
        String str2 = lsEntry.a;
        str2.getClass();
        pg1 pg1Var = new pg1(str2, strY0);
        SftpATTRS sftpATTRS = lsEntry.c;
        pg1Var.c = sftpATTRS.b;
        long j = sftpATTRS.g;
        pg1Var.d = j;
        pg1Var.e = j;
        pg1Var.f = strY0;
        pg1Var.g = sftpATTRS.b(16384);
        return pg1Var;
    }

    public static pg1 g(u63 u63Var, String str) {
        a73 a73Var = u63Var.a;
        u93 u93Var = u63Var.b;
        str.getClass();
        String strReplace = str.replace('\\', '/');
        strReplace.getClass();
        char c = mc3.a;
        if (strReplace.indexOf(0) >= 0) {
            c6.f("Null character present in file/path name. There are no known legitimate use cases for such data, but several injection attacks may use it");
            return null;
        }
        String strSubstring = strReplace.substring(Math.max(strReplace.lastIndexOf(47), strReplace.lastIndexOf(92)) + 1);
        String parent = new File(strReplace).getParent();
        parent.getClass();
        String strY0 = el1.Y0(fl1.A0(nq7.K0(parent, '/'), strSubstring), "/", null, null, null, 62);
        tb1 tb1Var = tb1.a;
        String strI = qb1.c().i();
        if (nq7.Z(strY0, strI, false)) {
            strY0 = strY0.substring(nq7.l0(6, strY0, strI));
        }
        pg1 pg1Var = new pg1(strSubstring, strY0);
        pg1Var.c = u93Var.a;
        pg1Var.d = a73Var.a.a();
        pg1Var.e = a73Var.c.a();
        pg1Var.f = strY0;
        pg1Var.g = u93Var.b;
        return pg1Var;
    }

    public static pg1 h(p73 p73Var, String str) {
        str.getClass();
        String strReplace = str.replace('\\', '/');
        strReplace.getClass();
        String strK0 = nq7.K0(strReplace, '/');
        String str2 = p73Var.a;
        String strY0 = el1.Y0(fl1.A0(strK0, str2), "/", null, null, null, 62);
        tb1 tb1Var = tb1.a;
        String strI = qb1.c().i();
        if (nq7.Z(strY0, strI, false)) {
            strY0 = strY0.substring(nq7.l0(6, strY0, strI));
        }
        str2.getClass();
        pg1 pg1Var = new pg1(str2, strY0);
        pg1Var.c = p73Var.e;
        pg1Var.d = p73Var.c.a();
        pg1Var.e = p73Var.d.a();
        pg1Var.f = strY0;
        pg1Var.g = (p73Var.f & 16) != 0;
        return pg1Var;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0036  */
    public static pg1 i(qq8 qq8Var, String str) {
        String strT;
        qq8Var.getClass();
        String str2 = qq8Var.a;
        Object obj = null;
        String str3 = (str == null || nq7.j0(str)) ? null : str;
        if (str == null) {
            strT = null;
        } else {
            if (nq7.j0(str)) {
                str = null;
            }
            if (str != null) {
                strT = uq7.T(uq7.T(uq7.T(str, TokenAuthenticationScheme.SCHEME_DELIMITER, "%20"), "(", "%28"), ")", "%29");
            } else {
                strT = null;
            }
        }
        for (Object obj2 : el1.v1(new LinkedHashSet(x50.p0(new String[]{str3, strT, "Swift%20Backup", "Swift Backup"})))) {
            if (nq7.Z(str2, (String) obj2, false)) {
                obj = obj2;
                break;
            }
        }
        String str4 = (String) obj;
        String strT2 = uq7.T(uq7.T(uq7.T((str4 == null || !nq7.Z(str2, str4, false)) ? nq7.L0(str2, '/') : str2.substring(nq7.l0(6, str2, str4)), TokenAuthenticationScheme.SCHEME_DELIMITER, "%20"), "(", "%28"), ")", "%29");
        pg1 pg1Var = new pg1(qq8Var.b, strT2);
        pg1Var.c = io4.h(qq8Var.d);
        pg1Var.d = io4.h(qq8Var.e);
        pg1Var.e = io4.h(qq8Var.f);
        pg1Var.f = strT2;
        pg1Var.g = qq8Var.c;
        return pg1Var;
    }
}
