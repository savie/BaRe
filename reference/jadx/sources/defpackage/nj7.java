package defpackage;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.swiftapps.swiftbackup.apptasks.install.InstallerSourceProxy;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class nj7 {
    public static final ai6 a = new ai6("uid:(\\d+)");

    /* JADX WARN: Code duplicated, block: B:35:0x00a9  */
    public static List a(lj7 lj7Var) {
        Object next;
        Integer numW;
        String str;
        ArrayList arrayList = lj7Var.e;
        mp6 mp6Var = mp6.a;
        if (mp6.g) {
            String str2 = lj7Var.b;
            String string = str2 != null ? nq7.H0(str2).toString() : null;
            if (string == null) {
                string = "";
            }
            if (string.equals("com.android.vending")) {
                if (arrayList.isEmpty()) {
                    return nc8.I("Failure [No APK files provided]");
                }
                Iterator it = mp6Var.h(new String[]{dj7.l("pm list packages -U --user ", d(lj7Var.c), TokenAuthenticationScheme.SCHEME_DELIMITER, d(string))}, ip6.SU).iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!nq7.Z((String) next, "package:".concat(string), false));
                String str3 = (String) next;
                if (str3 != null) {
                    ai6 ai6Var = a;
                    ai6Var.getClass();
                    Matcher matcher = ai6Var.a.matcher(str3);
                    matcher.getClass();
                    u75 u75Var = !matcher.find(0) ? null : new u75(matcher, str3);
                    if (u75Var == null || (str = (String) el1.V0(1, u75Var.a())) == null) {
                        numW = null;
                    } else {
                        numW = uq7.W(10, str);
                    }
                } else {
                    numW = null;
                }
                if (numW != null) {
                    int iIntValue = numW.intValue();
                    String strL = u48.l(System.nanoTime(), "/data/local/tmp/swiftbackup-install-");
                    try {
                        Iterator it2 = arrayList.iterator();
                        long j = 0;
                        while (it2.hasNext()) {
                            j += ((sg) it2.next()).c;
                        }
                        wg wgVar = new wg(j, lj7Var.f, lj7Var.g);
                        List listC = c(iIntValue, string, lj7Var.a, e(arrayList, strL, wgVar));
                        listC.getClass();
                        if (!b(listC)) {
                            if (!listC.isEmpty()) {
                                Iterator it3 = listC.iterator();
                                do {
                                    if (it3.hasNext()) {
                                    }
                                } while (!nq7.Z((String) it3.next(), "Failure", true));
                            }
                            listC = el1.g1(nc8.I("Failure [Source-preserving install did not report success]"), listC);
                            break;
                        }
                        if (b(listC)) {
                            mt3 mt3Var = wgVar.b;
                            ug ugVar = ug.Committing;
                            long j2 = wgVar.c;
                            mt3Var.invoke(new vg(ugVar, j2, j2));
                        }
                        return listC;
                    } finally {
                        mp6.a.h(new String[]{"rm -rf ".concat(d(strL))}, ip6.SU);
                    }
                }
            }
        }
        return null;
    }

    public static boolean b(List list) {
        if (!list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (uq7.V((String) it.next(), "SB_INSTALL:Success", false)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static List c(int i, String str, String str2, ArrayList arrayList) {
        ww4 ww4VarP = nc8.p();
        ww4VarP.add(str);
        ww4VarP.add(str2);
        ArrayList arrayList2 = new ArrayList(hl1.G0(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            mj7 mj7Var = (mj7) it.next();
            arrayList2.add(mj7Var.a + "|" + mj7Var.b);
        }
        ww4VarP.addAll(arrayList2);
        ww4 ww4VarH = nc8.h(ww4VarP);
        ww4VarH.getClass();
        return bv.a(InstallerSourceProxy.class.getName(), "swiftbackup_install_proxy", ww4VarH, Integer.valueOf(i));
    }

    public static String d(String str) {
        return eq3.k("'", uq7.T(str, "'", "'\"'\"'"), "'");
    }

    public static ArrayList e(ArrayList arrayList, String str, wg wgVar) {
        mp6.a.h(new String[]{"mkdir -p ".concat(d(str)), "chmod 0755 ".concat(d(str))}, ip6.SU);
        ArrayList arrayList2 = new ArrayList(hl1.G0(arrayList, 10));
        int i = 0;
        for (Object obj : arrayList) {
            int i2 = i + 1;
            if (i < 0) {
                fl1.F0();
                throw null;
            }
            sg sgVar = (sg) obj;
            q63 q63Var = sgVar.a;
            String strP = q63Var.p();
            Pattern patternCompile = Pattern.compile("[^A-Za-z0-9._-]");
            patternCompile.getClass();
            String strReplaceAll = patternCompile.matcher(strP).replaceAll("_");
            strReplaceAll.getClass();
            if (nq7.j0(strReplaceAll)) {
                strReplaceAll = "split.apk";
            }
            String strK = dj7.k(str, "/", i + "_" + strReplaceAll);
            List listH = mp6.a.h(new String[]{el1.Y0(fl1.A0(dj7.l("cp -f ", d(q63Var.v()), TokenAuthenticationScheme.SCHEME_DELIMITER, d(strK)), "chmod 0644 ".concat(d(strK)), "test -r ".concat(d(strK)), "echo SB_STAGE_OK"), " && ", null, null, null, 62)}, ip6.SU);
            if (listH == null || !listH.isEmpty()) {
                Iterator it = listH.iterator();
                do {
                    if (it.hasNext()) {
                    }
                } while (!pe4.d((String) it.next(), "SB_STAGE_OK"));
                wgVar.a(ug.Staging, sgVar.c);
                arrayList2.add(new mj7(sgVar.b, strK));
                i = i2;
            }
            l0.e(dj7.l("Failed to stage APK ", q63Var.v(), ": ", el1.Y0(listH, null, null, null, null, 63)));
            return null;
        }
        return arrayList2;
    }
}
