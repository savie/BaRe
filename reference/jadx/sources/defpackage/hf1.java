package defpackage;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.cloud.protocols.CloudCredentials;
import org.swiftapps.swiftbackup.cloud.protocols.a;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class hf1 extends qo0 {
    public final ex6 e = new ex6();
    public final ix6 f = new ix6();
    public final gv7 g = new gv7(new qm(this));
    public ef1 h;
    public bl7 i;
    public Boolean j;
    public Boolean k;

    public static final void j(hf1 hf1Var, sd1 sd1Var, mt3 mt3Var) {
        synchronized (hf1Var) {
            hf1Var.p(new bz(2, sd1Var, mt3Var));
        }
    }

    /* JADX WARN: Code duplicated, block: B:104:0x0246  */
    /* JADX WARN: Code duplicated, block: B:107:0x0250  */
    /* JADX WARN: Code duplicated, block: B:110:0x0261  */
    /* JADX WARN: Code duplicated, block: B:113:0x0268  */
    /* JADX WARN: Code duplicated, block: B:116:0x0272  */
    /* JADX WARN: Code duplicated, block: B:119:0x0283  */
    /* JADX WARN: Code duplicated, block: B:121:0x0289  */
    /* JADX WARN: Code duplicated, block: B:122:0x028c  */
    /* JADX WARN: Code duplicated, block: B:260:0x0261 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:261:0x025c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:262:? A[LOOP:12: B:105:0x024a->B:262:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:263:0x0283 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:264:0x027e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:265:? A[LOOP:13: B:114:0x026c->B:265:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    public static ye1 k(ef1 ef1Var, Set set) throws Throwable {
        int i;
        int i2;
        int i3;
        String string;
        String strB;
        Iterator it;
        rd1 rd1Var;
        rd1 rd1Var2;
        Iterator it2;
        rd1 rd1Var3;
        rd1 rd1Var4;
        boolean z;
        String str;
        Throwable th;
        int i4;
        List list = ef1Var.g;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (set.contains(((md1) obj).a.a)) {
                arrayList.add(obj);
            }
        }
        Throwable th2 = null;
        if (arrayList.isEmpty()) {
            i = 0;
        } else {
            Iterator it3 = arrayList.iterator();
            i = 0;
            while (it3.hasNext()) {
                if (((md1) it3.next()).c == rd1.PASSED && (i = i + 1) < 0) {
                    fl1.E0();
                    throw null;
                }
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : arrayList) {
            if (((md1) obj2).c.isReportableFailure()) {
                arrayList2.add(obj2);
            }
        }
        ArrayList arrayList3 = new ArrayList();
        for (Object obj3 : arrayList) {
            if (((md1) obj3).c == rd1.ACTION_REQUIRED) {
                arrayList3.add(obj3);
            }
        }
        if (arrayList.isEmpty()) {
            i2 = 0;
        } else {
            Iterator it4 = arrayList.iterator();
            i2 = 0;
            while (it4.hasNext()) {
                if (((md1) it4.next()).c == rd1.SKIPPED && (i2 = i2 + 1) < 0) {
                    fl1.E0();
                    throw null;
                }
            }
        }
        if (arrayList.isEmpty()) {
            i3 = 0;
        } else {
            Iterator it5 = arrayList.iterator();
            i3 = 0;
            while (it5.hasNext()) {
                if (((md1) it5.next()).c.isCompleted() && (i3 = i3 + 1) < 0) {
                    fl1.E0();
                    throw null;
                }
            }
        }
        int size = arrayList.size() - i3;
        if (!arrayList2.isEmpty()) {
            SwiftApp.Companion companion = SwiftApp.d;
            string = SwiftApp.Companion.c().getString(R.string.cloud_diagnostics_report_failed, Integer.valueOf(arrayList2.size()), Integer.valueOf(i), Integer.valueOf(i2));
        } else if (!arrayList3.isEmpty()) {
            SwiftApp.Companion companion2 = SwiftApp.d;
            string = SwiftApp.Companion.c().getString(R.string.cloud_diagnostics_report_action_required, Integer.valueOf(arrayList3.size()), Integer.valueOf(i2));
        } else if (size > 0) {
            SwiftApp.Companion companion3 = SwiftApp.d;
            string = SwiftApp.Companion.c().getString(R.string.cloud_diagnostics_report_not_finished, Integer.valueOf(i3), Integer.valueOf(size));
        } else {
            SwiftApp.Companion companion4 = SwiftApp.d;
            string = SwiftApp.Companion.c().getString(R.string.cloud_diagnostics_report_passed, Integer.valueOf(i), Integer.valueOf(i2));
        }
        string.getClass();
        String str2 = ef1Var.b;
        String str3 = ef1Var.e;
        String str4 = ef1Var.f;
        List<md1> list2 = ef1Var.g;
        ArrayList<he1> arrayList4 = new ArrayList(hl1.G0(list2, 10));
        for (md1 md1Var : list2) {
            SwiftApp.Companion companion5 = SwiftApp.d;
            String string2 = SwiftApp.Companion.c().getString(md1Var.a.b);
            string2.getClass();
            arrayList4.add(new he1(string2, md1Var.c, md1Var.d, md1Var.f, md1Var.b, md1Var.a.d));
        }
        str2.getClass();
        ArrayList<he1> arrayList5 = new ArrayList();
        for (Object obj4 : arrayList4) {
            he1 he1Var = (he1) obj4;
            ai6 ai6Var = je1.a;
            if (he1Var.e && he1Var.f && he1Var.b != rd1.NOT_RUN) {
                arrayList5.add(obj4);
            }
        }
        ArrayList arrayList6 = new ArrayList();
        for (Object obj5 : arrayList4) {
            he1 he1Var2 = (he1) obj5;
            ai6 ai6Var2 = je1.a;
            if (!he1Var2.e || !he1Var2.f || he1Var2.b == rd1.NOT_RUN) {
                arrayList6.add(obj5);
            }
        }
        StringBuilder sb = new StringBuilder("# Cloud diagnostics report\n\n## Summary\n");
        ai6 ai6Var3 = je1.a;
        if (!arrayList5.isEmpty()) {
            Iterator it6 = arrayList5.iterator();
            while (true) {
                if (it6.hasNext()) {
                    rd1 rd1Var5 = ((he1) it6.next()).b;
                    rd1 rd1Var6 = rd1.FAILED;
                    if (rd1Var5 == rd1Var6) {
                        strB = je1.b(rd1Var6);
                    }
                } else if (arrayList5.isEmpty()) {
                    it2 = arrayList5.iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            rd1Var3 = ((he1) it2.next()).b;
                            rd1Var4 = rd1.ACTION_REQUIRED;
                            if (rd1Var3 == rd1Var4) {
                                strB = je1.b(rd1Var4);
                            }
                        } else if (arrayList5.isEmpty()) {
                            it = arrayList5.iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    rd1Var = ((he1) it.next()).b;
                                    rd1Var2 = rd1.SKIPPED;
                                    if (rd1Var == rd1Var2) {
                                        strB = je1.b(rd1Var2);
                                    }
                                } else if (arrayList5.isEmpty()) {
                                    strB = "○";
                                } else {
                                    strB = je1.b(rd1.PASSED);
                                }
                            }
                        } else if (arrayList5.isEmpty()) {
                            strB = "○";
                        } else {
                            strB = je1.b(rd1.PASSED);
                        }
                    }
                } else if (arrayList5.isEmpty()) {
                    it = arrayList5.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            rd1Var = ((he1) it.next()).b;
                            rd1Var2 = rd1.SKIPPED;
                            if (rd1Var == rd1Var2) {
                                strB = je1.b(rd1Var2);
                            }
                        } else if (arrayList5.isEmpty()) {
                            strB = "○";
                        } else {
                            strB = je1.b(rd1.PASSED);
                        }
                    }
                } else if (arrayList5.isEmpty()) {
                    strB = "○";
                } else {
                    strB = je1.b(rd1.PASSED);
                }
            }
        } else if (arrayList5.isEmpty()) {
            it2 = arrayList5.iterator();
            while (true) {
                if (it2.hasNext()) {
                    rd1Var3 = ((he1) it2.next()).b;
                    rd1Var4 = rd1.ACTION_REQUIRED;
                    if (rd1Var3 == rd1Var4) {
                        strB = je1.b(rd1Var4);
                    }
                } else if (arrayList5.isEmpty()) {
                    it = arrayList5.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            rd1Var = ((he1) it.next()).b;
                            rd1Var2 = rd1.SKIPPED;
                            if (rd1Var == rd1Var2) {
                                strB = je1.b(rd1Var2);
                            }
                        } else if (arrayList5.isEmpty()) {
                            strB = "○";
                        } else {
                            strB = je1.b(rd1.PASSED);
                        }
                    }
                } else if (arrayList5.isEmpty()) {
                    strB = "○";
                } else {
                    strB = je1.b(rd1.PASSED);
                }
            }
        } else if (arrayList5.isEmpty()) {
            it = arrayList5.iterator();
            while (true) {
                if (it.hasNext()) {
                    rd1Var = ((he1) it.next()).b;
                    rd1Var2 = rd1.SKIPPED;
                    if (rd1Var == rd1Var2) {
                        strB = je1.b(rd1Var2);
                    }
                } else if (arrayList5.isEmpty()) {
                    strB = "○";
                } else {
                    strB = je1.b(rd1.PASSED);
                }
            }
        } else if (arrayList5.isEmpty()) {
            strB = "○";
        } else {
            strB = je1.b(rd1.PASSED);
        }
        if (strB.equals(je1.b(rd1.PASSED)) && !arrayList4.isEmpty()) {
            for (he1 he1Var3 : arrayList4) {
                if (he1Var3.e && he1Var3.f) {
                    rd1 rd1Var7 = he1Var3.b;
                    rd1 rd1Var8 = rd1.NOT_RUN;
                    if (rd1Var7 == rd1Var8) {
                        strB = je1.b(rd1Var8);
                        break;
                    }
                }
            }
        }
        sb.append(strB + TokenAuthenticationScheme.SCHEME_DELIMITER + string);
        sb.append('\n');
        for (rd1 rd1Var9 : fl1.A0(rd1.PASSED, rd1.FAILED, rd1.ACTION_REQUIRED, rd1.SKIPPED)) {
            if (arrayList5.isEmpty()) {
                th = th2;
                i4 = 0;
            } else {
                Iterator it7 = arrayList5.iterator();
                int i5 = 0;
                while (it7.hasNext()) {
                    Throwable th3 = th2;
                    if (((he1) it7.next()).b == rd1Var9 && (i5 = i5 + 1) < 0) {
                        fl1.E0();
                        throw th3;
                    }
                    th2 = th3;
                }
                th = th2;
                i4 = i5;
            }
            if (i4 > 0) {
                StringBuilder sbP = u48.p("- ", je1.b(rd1Var9), TokenAuthenticationScheme.SCHEME_DELIMITER, je1.a(rd1Var9), ": ");
                sbP.append(i4);
                sb.append(sbP.toString());
                sb.append('\n');
            }
            th2 = th;
        }
        Throwable th4 = th2;
        if (!arrayList6.isEmpty()) {
            sb.append("- ○ Not run/selected: " + arrayList6.size());
            sb.append('\n');
        }
        sb.append("\n## Provider\n");
        sb.append("- **Cloud:** ".concat(str2));
        sb.append('\n');
        sb.append("- **Account:** ".concat(je1.a.c(str3, "Redacted")));
        sb.append('\n');
        sb.append("- **Backup tag:** ".concat(str4));
        sb.append("\n\n## Results\n");
        for (he1 he1Var4 : arrayList5) {
            sb.append("- ");
            sb.append(je1.b(he1Var4.b));
            sb.append(" **");
            sb.append(he1Var4.a);
            sb.append(":** ");
            sb.append(je1.a(he1Var4.b));
            Long l = he1Var4.d;
            if (l != null) {
                long jLongValue = l.longValue();
                sb.append(" (");
                sb.append(jLongValue < 1000 ? jLongValue + " ms" : String.format(Locale.US, "%.1f s", Arrays.copyOf(new Object[]{Double.valueOf(jLongValue / 1000.0d)}, 1)));
                sb.append(")");
            }
            String str5 = he1Var4.c;
            if (str5 != null) {
                if (nq7.j0(str5)) {
                    str = str5;
                    str = th4;
                }
                if (str != 0) {
                    sb.append(" - ");
                    String strReplace = str.replace('\n', ' ');
                    strReplace.getClass();
                    sb.append(strReplace);
                }
            }
            sb.append('\n');
        }
        if (!arrayList6.isEmpty()) {
            sb.append("- ○ **Not run/selected:** ");
            sb.append(el1.Y0(arrayList6, ", ", null, null, new sl(3), 30));
            sb.append('\n');
        }
        String string3 = nq7.J0(sb.toString()).toString();
        if (arrayList4.isEmpty()) {
            z = false;
        } else {
            for (he1 he1Var5 : arrayList4) {
                if (he1Var5.e && he1Var5.f && he1Var5.b.isReportableFailure()) {
                    z = true;
                }
            }
            z = false;
        }
        return new ye1(string3, z);
    }

    public static ef1 m(dd1 dd1Var, ArrayList arrayList) {
        ki1 ki1VarI;
        String strG;
        String strG2;
        int brandingIconRes;
        int i;
        Object bn6Var;
        tb1 tb1Var = tb1.a;
        boolean zM = qb1.m();
        if (zM) {
            String displayName = dd1Var.getDisplayName();
            CloudCredentials.Companion.getClass();
            ki1VarI = vm4.i(dd1Var, displayName, a.b(dd1Var));
            strG = null;
        } else {
            ki1VarI = null;
            strG = null;
        }
        if (!zM) {
            SwiftApp.Companion companion = SwiftApp.d;
            strG2 = dj7.g(R.string.no_cloud_connected);
        } else if (ki1VarI == null || (strG2 = ki1VarI.a) == null) {
            strG2 = dd1Var.getDisplayName();
        }
        if (zM) {
            brandingIconRes = ki1VarI != null ? ki1VarI.b : dd1Var.getBrandingIconRes();
        } else {
            brandingIconRes = R.drawable.ic_cloud_off;
        }
        boolean z = ki1VarI != null ? ki1VarI.c : false;
        if (zM) {
            if (qb1.m()) {
                try {
                    bn6Var = qb1.g();
                } catch (Throwable th) {
                    bn6Var = new bn6(th);
                }
                if (bn6Var instanceof bn6) {
                    bn6Var = strG;
                }
                String str = (String) bn6Var;
                if (str != null && !nq7.j0(str)) {
                    strG = str;
                }
                if (strG == null) {
                    SwiftApp.Companion companion2 = SwiftApp.d;
                    i = R.string.connected;
                }
            } else {
                SwiftApp.Companion companion3 = SwiftApp.d;
                strG = dj7.g(R.string.no_cloud_connected);
            }
            tb1 tb1Var2 = tb1.a;
            return new ef1(dd1Var, strG2, brandingIconRes, z, strG, qb1.e(), arrayList, zM, false, false);
        }
        SwiftApp.Companion companion4 = SwiftApp.d;
        i = R.string.connect_cloud_subtitle;
        strG = dj7.g(i);
        tb1 tb1Var3 = tb1.a;
        return new ef1(dd1Var, strG2, brandingIconRes, z, strG, qb1.e(), arrayList, zM, false, false);
    }

    @Override // defpackage.a55, defpackage.tl8
    public final void b() {
        we1 we1Var = (we1) this.g.getValue();
        we1Var.b = true;
        ag8 ag8Var = we1Var.c;
        if (ag8Var != null) {
            ag8Var.c = gz7.CANCELLED;
            ag8Var.b();
        }
        no2 no2Var = we1Var.d;
        if (no2Var != null) {
            no2Var.d = gz7.CANCELLED;
            no2Var.a();
        }
        if (we1Var.e != null) {
            gz7 gz7Var = gz7.WAITING;
        }
        bl7 bl7Var = this.i;
        if (bl7Var != null) {
            bl7Var.cancel(null);
        }
        super.b();
    }

    public final void l() {
        ef1 ef1Var = this.h;
        if (ef1Var != null && ef1Var.i) {
            we1 we1Var = (we1) this.g.getValue();
            we1Var.b = true;
            ag8 ag8Var = we1Var.c;
            if (ag8Var != null) {
                ag8Var.c = gz7.CANCELLED;
                ag8Var.b();
            }
            no2 no2Var = we1Var.d;
            if (no2Var != null) {
                no2Var.d = gz7.CANCELLED;
                no2Var.a();
            }
            if (we1Var.e != null) {
                gz7 gz7Var = gz7.WAITING;
            }
            synchronized (this) {
                ef1 ef1Var2 = this.h;
                if (ef1Var2 == null) {
                    throw new IllegalArgumentException("Required value was null.");
                }
                q(ef1.a(ef1Var2, null, false, true, 511));
            }
        }
    }

    public final void n() {
        ef1 ef1Var = this.h;
        if (ef1Var == null || ef1Var.i) {
            return;
        }
        tb1 tb1Var = tb1.a;
        dd1 dd1VarF = qb1.f();
        Boolean bool = this.k;
        dd1VarF.getClass();
        Iterable iterableH = bool != null ? iz1.h(dd1VarF, bool.booleanValue()) : iz1.g(dd1VarF);
        ArrayList arrayList = new ArrayList(hl1.G0(iterableH, 10));
        Iterator it = iterableH.iterator();
        while (it.hasNext()) {
            arrayList.add(new md1((qd1) it.next()));
        }
        q(m(dd1VarF, arrayList));
    }

    public final void o(boolean z) {
        ef1 ef1Var = this.h;
        if (ef1Var == null || ef1Var.i) {
            return;
        }
        this.j = null;
        this.k = null;
        tb1 tb1Var = tb1.a;
        boolean zM = qb1.m();
        ix6 ix6Var = this.f;
        if (!zM) {
            ix6Var.k(new cf1(R.string.no_cloud_connected));
            SwiftApp.Companion companion = SwiftApp.d;
            String strG = dj7.g(R.string.no_cloud_connected);
            if (z) {
                ix6Var.k(new bf1(strG, false));
                return;
            }
            return;
        }
        List list = ef1Var.g;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            md1 md1Var = (md1) obj;
            if (md1Var.a.d && md1Var.b) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(hl1.G0(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((md1) it.next()).a);
        }
        if (arrayList2.isEmpty()) {
            ix6Var.k(new cf1(R.string.no_tests_selected));
            SwiftApp.Companion companion2 = SwiftApp.d;
            String strG2 = dj7.g(R.string.no_tests_selected);
            if (z) {
                ix6Var.k(new bf1(strG2, false));
                return;
            }
            return;
        }
        ArrayList arrayList3 = new ArrayList(hl1.G0(arrayList2, 10));
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            arrayList3.add(((qd1) it2.next()).a);
        }
        Set setZ1 = el1.z1(arrayList3);
        p(new hj(setZ1, 6));
        zn4 zn4Var = zn4.a;
        this.i = zn4.b(null, new p20(this, arrayList2, z, setZ1, null, 1));
    }

    public final synchronized ef1 p(mt3 mt3Var) {
        ef1 ef1Var;
        ef1 ef1Var2 = this.h;
        if (ef1Var2 == null) {
            throw new IllegalArgumentException("Required value was null.");
        }
        ef1Var = (ef1) mt3Var.invoke(ef1Var2);
        q(ef1Var);
        return ef1Var;
    }

    public final synchronized void q(ef1 ef1Var) {
        this.h = ef1Var;
        this.e.k(ef1Var);
    }
}
