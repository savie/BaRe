package defpackage;

import android.content.SharedPreferences;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mv {
    public final ji a;
    public final q63 b;
    public final boolean c;
    public final String d;
    public final String e;
    public final ah f;
    public final LinkedHashSet g;
    public final jh5 h;

    public mv(xw xwVar, ji jiVar, q63 q63Var, boolean z, String str, String str2, ah ahVar, kw kwVar) {
        jiVar.getClass();
        str2.getClass();
        this.a = jiVar;
        this.b = q63Var;
        this.c = z;
        this.d = str;
        this.e = str2;
        this.f = ahVar;
        this.g = new LinkedHashSet();
        this.h = new jh5(kwVar);
    }

    public static ArrayList a(yw ywVar, List list) {
        long jW;
        q63 q63Var = ywVar.a;
        long j = ywVar.h;
        ArrayList arrayListC0 = fl1.C0(new sg(ywVar.e, q63Var, "base"));
        if (!list.isEmpty()) {
            Iterator it = list.iterator();
            long jA = 0;
            while (it.hasNext()) {
                jA += ((q63) it.next()).A();
            }
            if (jA < 1) {
                jA = 1;
            }
            int i = 0;
            long j2 = 0;
            for (Object obj : list) {
                int i2 = i + 1;
                if (i < 0) {
                    fl1.F0();
                    throw null;
                }
                q63 q63Var2 = (q63) obj;
                if (i == list.size() - 1) {
                    jW = j - j2;
                    if (jW < 0) {
                        jW = 0;
                    }
                } else {
                    jW = tu0.w((q63Var2.A() / jA) * j);
                    if (jW < 0) {
                        jW = 0;
                    }
                    j2 += jW;
                }
                arrayListC0.add(new sg(jW, q63Var2, q63Var2.p()));
                i = i2;
            }
        }
        return arrayListC0;
    }

    /* JADX WARN: Code duplicated, block: B:49:0x014e  */
    /* JADX WARN: Code duplicated, block: B:52:0x0165  */
    /* JADX WARN: Code duplicated, block: B:55:0x016f A[LOOP:1: B:53:0x0169->B:55:0x016f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:59:0x019b  */
    /* JADX WARN: Code duplicated, block: B:66:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:68:0x01b4  */
    /* JADX WARN: Code duplicated, block: B:70:0x01b7  */
    /* JADX WARN: Code duplicated, block: B:71:0x01ba  */
    /* JADX WARN: Code duplicated, block: B:73:0x01be  */
    /* JADX WARN: Code duplicated, block: B:76:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:81:0x01d0 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:83:0x01d6  */
    /* JADX WARN: Code duplicated, block: B:86:0x01ec  */
    /* JADX WARN: Code duplicated, block: B:89:0x01f6 A[LOOP:2: B:87:0x01f0->B:89:0x01f6, LOOP_END] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [gq] */
    /* JADX WARN: Type inference failed for: r1v1, types: [gq] */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v23 */
    /* JADX WARN: Type inference failed for: r1v24 */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v26 */
    /* JADX WARN: Type inference failed for: r1v27 */
    /* JADX WARN: Type inference failed for: r1v4, types: [gq] */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v17 */
    /* JADX WARN: Type inference failed for: r3v18 */
    /* JADX WARN: Type inference failed for: r3v19 */
    /* JADX WARN: Type inference failed for: r3v20 */
    /* JADX WARN: Type inference failed for: r3v21 */
    /* JADX WARN: Type inference failed for: r3v22 */
    /* JADX WARN: Type inference failed for: r3v23 */
    /* JADX WARN: Type inference failed for: r3v24 */
    /* JADX WARN: Type inference failed for: r3v25 */
    /* JADX WARN: Type inference failed for: r3v26 */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r4v0, types: [q63] */
    /* JADX WARN: Type inference failed for: r4v1, types: [q63] */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v20 */
    /* JADX WARN: Type inference failed for: r4v21 */
    /* JADX WARN: Type inference failed for: r4v22 */
    /* JADX WARN: Type inference failed for: r4v23 */
    /* JADX WARN: Type inference failed for: r4v24 */
    /* JADX WARN: Type inference failed for: r4v25 */
    /* JADX WARN: Type inference failed for: r4v3, types: [q63] */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v16 */
    /* JADX WARN: Type inference failed for: r6v17 */
    /* JADX WARN: Type inference failed for: r6v18 */
    /* JADX WARN: Type inference failed for: r6v19 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v20 */
    /* JADX WARN: Type inference failed for: r6v3, types: [int] */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9 */
    public static List b(gq gqVar, List list) throws Throwable {
        boolean zCheckInstalled;
        Exception exc;
        boolean z;
        ArrayList<jr7> arrayList;
        vr6 vr6Var;
        ArrayList<jr7> arrayList2;
        int i;
        String str;
        ?? r1 = gqVar;
        if (r1 != 0) {
            ji jiVar = r1.a;
            ?? r3 = "Preserved downgrade backup archive: ";
            ?? r4 = r1.c;
            String strSubstring = "Failed to restore downgrade backup archive; preserving ";
            ?? r6 = "App is not installed after downgrade attempt; preserving ";
            vr6 vr6Var2 = vr6.INSTANCE;
            vr6.w$default(vr6Var2, "AppDowngradeTask", "Executing post-downgrade actions", null, 4, null);
            fq fqVar = fq.ArchivePreservedAppNotInstalled;
            boolean z2 = true;
            try {
                zCheckInstalled = jiVar.checkInstalled();
                try {
                    if (zCheckInstalled) {
                        r6 = 4;
                        g00 g00Var = g00.a;
                        String strU = g00.u(jiVar.getDataDir());
                        HashSet hashSet = mz6.a;
                        q63 q63Var = r1.c;
                        String parent = r1.b.getParent();
                        parent.getClass();
                        mz6.f(new jd0(q63Var, new q63(parent, 4), null, iu.DATA, f27.RootFidelity, null, null, iz6.Root, null, null, 832));
                        g00.e(jiVar, null, strU, false);
                        try {
                            fqVar = fq.Restored;
                            if (zCheckInstalled) {
                                r4.f();
                            } else {
                                vr6.w$default(vr6Var2, "AppDowngradeTask", "Preserved downgrade backup archive: ".concat(r4.v()), null, 4, null);
                            }
                            ArrayList arrayList3 = r1.d;
                            r1 = r1;
                            r3 = r3;
                            r4 = r4;
                            r6 = r6;
                            if (arrayList3 != null) {
                                Iterator it = arrayList3.iterator();
                                ?? r5 = r3;
                                ?? r7 = r4;
                                while (true) {
                                    boolean zHasNext = it.hasNext();
                                    r1 = zHasNext;
                                    r3 = r5;
                                    r4 = r7;
                                    r6 = r6;
                                    if (!zHasNext) {
                                        break;
                                    }
                                    jr7 jr7Var = (jr7) it.next();
                                    String parent2 = jr7Var.getParent();
                                    String name = jr7Var.getName();
                                    name.getClass();
                                    strSubstring = name.substring(0, jr7Var.getName().length() - 4);
                                    jr7 jr7Var2 = new jr7(parent2, strSubstring);
                                    jr7Var.renameTo(jr7Var2);
                                    r5 = jr7Var2;
                                    r7 = parent2;
                                }
                                if (fqVar != null) {
                                    i = lv.a[fqVar.ordinal()];
                                    if (i == 1) {
                                        l0.e("Handled above");
                                        return null;
                                    }
                                    if (i == 2) {
                                        str = "Failure [App was not installed after downgrade attempt; preserved downgrade backup archive]";
                                    } else {
                                        if (i != 3) {
                                            q.j();
                                            return null;
                                        }
                                        str = "Failure [Failed to restore downgrade backup archive; preserved archive]";
                                    }
                                    return nc8.I(str);
                                }
                            }
                        } catch (Exception e) {
                            exc = e;
                            z = true;
                            r1 = r1;
                            r3 = r3;
                            r4 = r4;
                            r6 = r6;
                            fq fqVar2 = fq.ArchivePreservedRestoreFailed;
                            vr6Var = vr6.INSTANCE;
                            vr6.e$default(vr6Var, "AppDowngradeTask", strSubstring.concat(r4.v()), exc, null, 8, null);
                            if (zCheckInstalled || !z) {
                                vr6.w$default(vr6Var, "AppDowngradeTask", r3.concat(r4.v()), null, 4, null);
                            } else {
                                r4.f();
                            }
                            arrayList2 = r1.d;
                            if (arrayList2 != null) {
                                for (jr7 jr7Var3 : arrayList2) {
                                    String parent3 = jr7Var3.getParent();
                                    String name2 = jr7Var3.getName();
                                    name2.getClass();
                                    jr7Var3.renameTo(new jr7(parent3, name2.substring(0, jr7Var3.getName().length() - (r6 == true ? 1 : 0))));
                                }
                            }
                            fqVar = fqVar2;
                        } catch (Throwable th) {
                            th = th;
                            if (zCheckInstalled) {
                                vr6.w$default(vr6.INSTANCE, "AppDowngradeTask", r3.concat(r4.v()), null, 4, null);
                            } else {
                                vr6.w$default(vr6.INSTANCE, "AppDowngradeTask", r3.concat(r4.v()), null, 4, null);
                            }
                            arrayList = r1.d;
                            if (arrayList != null) {
                                for (jr7 jr7Var4 : arrayList) {
                                    String parent4 = jr7Var4.getParent();
                                    String name3 = jr7Var4.getName();
                                    name3.getClass();
                                    jr7Var4.renameTo(new jr7(parent4, name3.substring(0, jr7Var4.getName().length() - r6)));
                                }
                            }
                            throw th;
                        }
                    } else {
                        try {
                            char c = 4;
                            vr6.e$default(vr6Var2, "AppDowngradeTask", "App is not installed after downgrade attempt; preserving ".concat(r4.v()), null, 4, null);
                            vr6.w$default(vr6Var2, "AppDowngradeTask", "Preserved downgrade backup archive: ".concat(r4.v()), null, 4, null);
                            ArrayList arrayList4 = r1.d;
                            r1 = r1;
                            r3 = r3;
                            r4 = r4;
                            r6 = c;
                            if (arrayList4 != null) {
                                Iterator it2 = arrayList4.iterator();
                                ?? r8 = r3;
                                ?? r9 = r4;
                                while (true) {
                                    boolean zHasNext2 = it2.hasNext();
                                    r1 = zHasNext2;
                                    r3 = r8;
                                    r4 = r9;
                                    r6 = c;
                                    if (!zHasNext2) {
                                        break;
                                    }
                                    jr7 jr7Var5 = (jr7) it2.next();
                                    String parent5 = jr7Var5.getParent();
                                    String name4 = jr7Var5.getName();
                                    name4.getClass();
                                    strSubstring = name4.substring(0, jr7Var5.getName().length() - 4);
                                    jr7 jr7Var6 = new jr7(parent5, strSubstring);
                                    jr7Var5.renameTo(jr7Var6);
                                    r8 = jr7Var6;
                                    r9 = parent5;
                                }
                                if (fqVar != null && !jd4.v(list) && fqVar != fq.Restored) {
                                    i = lv.a[fqVar.ordinal()];
                                    if (i == 1) {
                                        l0.e("Handled above");
                                        return null;
                                    }
                                    if (i == 2) {
                                        str = "Failure [App was not installed after downgrade attempt; preserved downgrade backup archive]";
                                    } else {
                                        if (i != 3) {
                                            q.j();
                                            return null;
                                        }
                                        str = "Failure [Failed to restore downgrade backup archive; preserved archive]";
                                    }
                                    return nc8.I(str);
                                }
                            }
                        } catch (Exception e2) {
                            e = e2;
                            r6 = 4;
                            exc = e;
                            z = false;
                            r1 = r1;
                            r3 = r3;
                            r4 = r4;
                            r6 = r6;
                            try {
                                fq fqVar3 = fq.ArchivePreservedRestoreFailed;
                                vr6Var = vr6.INSTANCE;
                                vr6.e$default(vr6Var, "AppDowngradeTask", strSubstring.concat(r4.v()), exc, null, 8, null);
                                if (zCheckInstalled) {
                                    vr6.w$default(vr6Var, "AppDowngradeTask", r3.concat(r4.v()), null, 4, null);
                                } else {
                                    vr6.w$default(vr6Var, "AppDowngradeTask", r3.concat(r4.v()), null, 4, null);
                                }
                                arrayList2 = r1.d;
                                if (arrayList2 != null) {
                                    while (r1.hasNext()) {
                                        String parent6 = jr7Var3.getParent();
                                        String name5 = jr7Var3.getName();
                                        name5.getClass();
                                        jr7Var3.renameTo(new jr7(parent6, name5.substring(0, jr7Var3.getName().length() - (r6 == true ? 1 : 0))));
                                    }
                                }
                                fqVar = fqVar3;
                            } catch (Throwable th2) {
                                th = th2;
                                z2 = z;
                                if (zCheckInstalled || !z2) {
                                    vr6.w$default(vr6.INSTANCE, "AppDowngradeTask", r3.concat(r4.v()), null, 4, null);
                                } else {
                                    r4.f();
                                }
                                arrayList = r1.d;
                                if (arrayList != null) {
                                    while (r1.hasNext()) {
                                        String parent7 = jr7Var4.getParent();
                                        String name6 = jr7Var4.getName();
                                        name6.getClass();
                                        jr7Var4.renameTo(new jr7(parent7, name6.substring(0, jr7Var4.getName().length() - r6)));
                                    }
                                }
                                throw th;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            r6 = 4;
                            z2 = false;
                            if (zCheckInstalled) {
                                vr6.w$default(vr6.INSTANCE, "AppDowngradeTask", r3.concat(r4.v()), null, 4, null);
                            } else {
                                vr6.w$default(vr6.INSTANCE, "AppDowngradeTask", r3.concat(r4.v()), null, 4, null);
                            }
                            arrayList = r1.d;
                            if (arrayList != null) {
                                while (r1.hasNext()) {
                                    String parent8 = jr7Var4.getParent();
                                    String name7 = jr7Var4.getName();
                                    name7.getClass();
                                    jr7Var4.renameTo(new jr7(parent8, name7.substring(0, jr7Var4.getName().length() - r6)));
                                }
                            }
                            throw th;
                        }
                    }
                } catch (Exception e3) {
                    e = e3;
                } catch (Throwable th4) {
                    th = th4;
                }
            } catch (Exception e4) {
                r6 = 4;
                exc = e4;
                zCheckInstalled = false;
                z = false;
                r1 = r1;
                r3 = r3;
                r4 = r4;
            } catch (Throwable th5) {
                th = th5;
                r6 = 4;
                z2 = false;
                zCheckInstalled = false;
            }
            if (fqVar != null) {
                i = lv.a[fqVar.ordinal()];
                if (i == 1) {
                    l0.e("Handled above");
                    return null;
                }
                if (i == 2) {
                    str = "Failure [App was not installed after downgrade attempt; preserved downgrade backup archive]";
                } else {
                    if (i != 3) {
                        q.j();
                        return null;
                    }
                    str = "Failure [Failed to restore downgrade backup archive; preserved archive]";
                }
                return nc8.I(str);
            }
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r10v0, types: [gv] */
    /* JADX WARN: Type inference failed for: r9v0, types: [fv] */
    public final List c(final yw ywVar, pe4 pe4Var, final long j) {
        q63 q63Var = ywVar.a;
        boolean zB = ng.a(q63Var, false).b();
        boolean zV = pe4Var.v();
        if (!zB && zV) {
            vr6.i$default(vr6.INSTANCE, "AppRestoreHelper", "Splits backup exists but APK doesn't seem to require splits, installing anyway...", null, 4, null);
        }
        if (!zV) {
            return ov2.a;
        }
        long jC = ng.a(q63Var, false).c();
        q63 q63Var2 = this.b;
        if (q63Var2 == null) {
            g84.f(xs1.i(q63Var2, "Invalid splitsWorkingDir: "));
            return null;
        }
        if (!(pe4Var instanceof jv)) {
            if (!(pe4Var instanceof kv)) {
                q.j();
                return null;
            }
            Long lValueOf = Long.valueOf(jC);
            ArrayList arrayList = ((kv) pe4Var).m;
            ArrayList arrayList2 = new ArrayList(hl1.G0(arrayList, 10));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                String path = ((jr7) it.next()).getPath();
                path.getClass();
                arrayList2.add(new q63(path, 1));
            }
            return g(lValueOf, arrayList2);
        }
        q63 q63Var3 = new q63(2, q63Var2, "splits");
        if (q63Var3.j() && !q63Var3.h()) {
            l0.e("Failed to clean splits dir");
            return null;
        }
        if (!q63.E(q63Var3)) {
            l0.e("Failed to create splits dir");
            return null;
        }
        List listA = zg.a(((jv) pe4Var).m, q63Var3, ywVar.c, this.f, new rt3() { // from class: fv
            @Override // defpackage.rt3
            public final Object a(Object obj, Object obj2, Object obj3) {
                long jLongValue = ((Long) obj).longValue();
                long jLongValue2 = ((Long) obj2).longValue();
                ((Long) obj3).getClass();
                this.d(tu0.w((jLongValue / jLongValue2) * ywVar.f) + j);
                return be8.a;
            }
        }, new rt3() { // from class: gv
            @Override // defpackage.rt3
            public final Object a(Object obj, Object obj2, Object obj3) {
                long jLongValue = ((Long) obj).longValue();
                long jLongValue2 = ((Long) obj2).longValue();
                ((Long) obj3).getClass();
                yw ywVar2 = ywVar;
                this.d(j + ywVar2.f + tu0.w((jLongValue / jLongValue2) * ywVar2.g));
                return be8.a;
            }
        });
        if (listA == null) {
            return null;
        }
        return g(Long.valueOf(jC), listA);
    }

    public final void d(long j) {
        jh5 jh5Var = this.h;
        long j2 = jh5Var.b;
        if (j < j2) {
            j = j2;
        }
        jh5Var.b = j;
        jh5Var.a.invoke(Long.valueOf(j));
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0047  */
    public final List e(yw ywVar, pe4 pe4Var, boolean z) {
        gq gqVar;
        Boolean boolValueOf;
        boolean z2;
        String dataDir;
        boolean z3 = false;
        if (mp6.g && z) {
            try {
                SharedPreferences sharedPreferences = cz4.f;
                if (sharedPreferences == null) {
                    pe4.F("prefs");
                    throw null;
                }
                z2 = sharedPreferences.getBoolean("in_place_apk_downgrades", false);
                if (z2) {
                    gqVar = null;
                } else {
                    g00 g00Var = g00.a;
                    if (g00.x()) {
                        gqVar = null;
                    } else {
                        ji jiVar = this.a;
                        if (jiVar.isBundled() || !jiVar.isInstalled() || (dataDir = jiVar.getDataDir()) == null || dataDir.length() == 0) {
                            gqVar = null;
                        } else {
                            gqVar = new gq(jiVar);
                        }
                    }
                }
            } catch (ClassCastException unused) {
                z2 = false;
            }
        } else {
            gqVar = null;
        }
        if (gqVar != null) {
            jr7 jr7Var = gqVar.b;
            ji jiVar2 = gqVar.a;
            vr6 vr6Var = vr6.INSTANCE;
            vr6.w$default(vr6Var, "AppDowngradeTask", "Executing pre-downgrade actions", null, 4, null);
            q63 q63Var = gqVar.c;
            q63Var.f();
            try {
                HashSet hashSet = mz6.a;
                q63 q63Var2 = gqVar.c;
                String name = jr7Var.getName();
                name.getClass();
                String path = jr7Var.getPath();
                path.getClass();
                mz6.b(new op3(q63Var2, nc8.I(new hz6(name, new q63(path, 4), true, null, null, 24)), iu.DATA, f27.RootFidelity, oy6.j, gz6.i, null, iz6.Root, null, null, 832));
                if (q63Var.j()) {
                    List listA0 = fl1.A0(jiVar2.getExternalDataDir(), jiVar2.getExpansionDir(), jiVar2.getMediaDir());
                    ArrayList<jr7> arrayList = new ArrayList();
                    Iterator it = listA0.iterator();
                    while (it.hasNext()) {
                        jr7 jr7Var2 = new jr7((String) it.next());
                        if (!jr7Var2.b("[ -e @@ ]")) {
                            jr7Var2 = null;
                        }
                        if (jr7Var2 != null) {
                            arrayList.add(jr7Var2);
                        }
                    }
                    ArrayList arrayList2 = new ArrayList();
                    for (jr7 jr7Var3 : arrayList) {
                        jr7 jr7Var4 = new jr7(jr7Var3.getParent(), eq3.j(jr7Var3.getName(), ".bkp"));
                        jr7Var3.renameTo(jr7Var4);
                        if (!jr7Var4.b("[ -e @@ ]")) {
                            jr7Var4 = null;
                        }
                        if (jr7Var4 != null) {
                            arrayList2.add(jr7Var4);
                        }
                    }
                    gqVar.d = arrayList2;
                    vr6.w$default(vr6.INSTANCE, "AppDowngradeTask", "Uninstalling the app, to allow downgrading!", null, 4, null);
                    g00 g00Var2 = g00.a;
                    int i = g00.i();
                    if (!jiVar2.isBundled()) {
                        mp6.a.h(new String[]{u48.k(i, "pm uninstall --user ", TokenAuthenticationScheme.SCHEME_DELIMITER, jiVar2.getPackageName())}, ip6.SHIZUKU);
                    }
                    z3 = true;
                } else {
                    vr6.e$default(vr6Var, "AppDowngradeTask", "Failed to create downgrade backup archive: ".concat(q63Var.p()), null, 4, null);
                }
            } catch (Exception e) {
                vr6.e$default(vr6.INSTANCE, "AppDowngradeTask", "Failed to create downgrade backup archive", e, null, 8, null);
                q63Var.f();
            }
            boolValueOf = Boolean.valueOf(z3);
        } else {
            boolValueOf = null;
        }
        return f(ywVar, pe4Var, pe4.d(boolValueOf, Boolean.FALSE) ? null : gqVar);
    }

    /* JADX WARN: Code duplicated, block: B:238:0x0584  */
    /* JADX WARN: Code duplicated, block: B:240:0x0588  */
    /* JADX WARN: Code duplicated, block: B:244:0x0594  */
    /* JADX WARN: Code duplicated, block: B:251:0x05bb  */
    /* JADX WARN: Code duplicated, block: B:262:0x05ec  */
    /* JADX WARN: Code duplicated, block: B:263:0x05f1  */
    /* JADX WARN: Code duplicated, block: B:266:0x05f6  */
    /* JADX WARN: Code duplicated, block: B:306:0x05a8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:310:0x05d1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:312:0x05b5 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v10, types: [jr7] */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v13, types: [java.lang.Iterable] */
    /* JADX WARN: Type inference failed for: r6v17, types: [ov2] */
    /* JADX WARN: Type inference failed for: r6v18, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r6v50 */
    /* JADX WARN: Type inference failed for: r6v9 */
    public final List f(yw ywVar, pe4 pe4Var, gq gqVar) throws Throwable {
        long j;
        long j2;
        hv hvVar;
        List listD;
        String str;
        ?? r6;
        ?? arrayList;
        Iterator it;
        Object next;
        jr7 jr7Var;
        ArrayList arrayList2;
        String path;
        String name;
        jr7[] jr7VarArrListFiles;
        String parent;
        jr7 jr7Var2;
        String string;
        Object next2;
        iv ivVar;
        String strI0;
        List list;
        List listI;
        hv hvVar2;
        Object bn6Var;
        long j3 = ywVar.g;
        long j4 = ywVar.f;
        ArrayList arrayList3 = new ArrayList();
        mp6 mp6Var = mp6.a;
        boolean z = mp6.g;
        boolean zF = mp6.f();
        String str2 = this.d;
        String string2 = str2 != null ? nq7.H0(str2).toString() : null;
        if (string2 == null) {
            string2 = "";
        }
        tg tgVar = (z && string2.equals("com.android.vending")) ? tg.SourcePreserving : zF ? tg.Shell : tg.Interactive;
        tg tgVar2 = tg.SourcePreserving;
        ji jiVar = this.a;
        if (tgVar == tgVar2) {
            String string3 = str2 != null ? nq7.H0(str2).toString() : null;
            if (string3 == null) {
                string3 = "";
            }
            if (mp6.g && string3.equals("com.android.vending")) {
                kh6 kh6Var = new kh6();
                j = j3;
                List listC = c(ywVar, pe4Var, kh6Var.a);
                if (listC == null) {
                    hvVar2 = new hv(nc8.I("Failure [Failed to prepare split APKs]"), null);
                    j2 = j4;
                } else {
                    j2 = j4;
                    if (!listC.isEmpty()) {
                        long j5 = j2 + j + kh6Var.a;
                        kh6Var.a = j5;
                        d(j5);
                    }
                    ArrayList arrayListA = a(ywVar, listC);
                    try {
                        ai6 ai6Var = nj7.a;
                        String packageName = jiVar.getPackageName();
                        String str3 = this.e;
                        ArrayList arrayList4 = new ArrayList(hl1.G0(arrayListA, 10));
                        Iterator it2 = arrayListA.iterator();
                        while (it2.hasNext()) {
                            arrayList4.add(((sg) it2.next()).a);
                        }
                        bn6Var = nj7.a(new lj7(packageName, string3, str3, arrayList4, arrayListA, ywVar.i, new xs(1, this, kh6Var)));
                    } catch (Throwable th) {
                        bn6Var = new bn6(th);
                    }
                    Throwable thA = en6.a(bn6Var);
                    if (thA != null) {
                        vr6.e$default(vr6.INSTANCE, "AppRestoreHelper", "Source-preserving install error", thA, null, 8, null);
                        String message = thA.getMessage();
                        if (message == null) {
                            message = "";
                        }
                        bn6Var = nc8.I("Failure [Source-preserving install error: " + message + "]");
                    }
                    List list2 = (List) bn6Var;
                    if (list2 != null) {
                        if (!jd4.v(list2) || (jd4.w(list2) && jiVar.checkInstalled())) {
                            long j6 = ywVar.e + (!listC.isEmpty() ? ywVar.h : 0L) + ywVar.i + kh6Var.a;
                            kh6Var.a = j6;
                            d(j6);
                        }
                        hvVar2 = new hv(list2, listC);
                    }
                }
                hvVar = hvVar2;
            } else {
                j = j3;
                j2 = j4;
            }
            hvVar2 = null;
            hvVar = hvVar2;
        } else {
            j = j3;
            j2 = j4;
            hvVar = null;
        }
        List list3 = hvVar != null ? hvVar.a : null;
        if (list3 != null) {
            if (!jd4.v(list3)) {
                List listB = b(gqVar, list3);
                return listB != null ? listB : list3;
            }
            if (jd4.w(list3)) {
                if (jiVar.checkInstalled()) {
                    List list4 = list3;
                    list = list4;
                    vr6.w$default(vr6.INSTANCE, "AppRestoreHelper", dj7.l("Source-preserving install verification failed, but ", jiVar.getPackageName(), " is installed; continuing restore. Output=", el1.Y0(list4, null, null, null, null, 63)), null, 4, null);
                    listI = nc8.I("Warning [Source-preserving install verification failed after package install; continuing restore]");
                } else {
                    list = list3;
                    listI = null;
                }
                if (listI != null) {
                    List listB2 = b(gqVar, listI);
                    return listB2 != null ? listB2 : listI;
                }
                b(gqVar, list);
                return list;
            }
            List list5 = list3;
            ArrayList arrayList5 = new ArrayList();
            for (Object obj : list5) {
                String string4 = nq7.H0((String) obj).toString();
                if (!uq7.V(string4, "Success: streamed ", true) || !uq7.O(string4, " bytes", true)) {
                    arrayList5.add(obj);
                }
            }
            ArrayList arrayList6 = new ArrayList();
            for (Object obj2 : arrayList5) {
                String str4 = (String) obj2;
                if (nq7.Z(str4, "Failure", true) && nq7.Z(str4, "source=PackageInstaller", true)) {
                    arrayList6.add(obj2);
                }
            }
            ArrayList arrayList7 = !arrayList6.isEmpty() ? arrayList6 : null;
            String strY0 = arrayList7 != null ? el1.Y0(arrayList7, null, null, null, null, 63) : null;
            vr6.w$default(vr6.INSTANCE, "AppRestoreHelper", strY0 == null ? "Source-preserving install failed without PackageInstaller error detail; falling back to package manager shell install" : eq3.k("Source-preserving install failed: ", strY0, "; falling back to package manager shell install"), null, 4, null);
        }
        List list6 = hvVar != null ? hvVar.b : null;
        kh6 kh6Var2 = new kh6();
        List listC2 = list6 == null ? c(ywVar, pe4Var, kh6Var2.a) : list6;
        int i = 0;
        if (listC2 == null) {
            listD = nc8.I("Failure [Failed to prepare split APKs]");
        } else {
            if (!listC2.isEmpty() && list6 == null) {
                long j7 = j2 + j + kh6Var2.a;
                kh6Var2.a = j7;
                d(j7);
            } else if (!listC2.isEmpty()) {
                kh6Var2.a = j2 + j + kh6Var2.a;
            }
            listD = sd7.d(new qd7(a(ywVar, listC2), this.c, this.e, this.d, ywVar.i, new ev(i, this, kh6Var2), 16));
        }
        arrayList3.addAll(listD);
        ArrayList<String> arrayList8 = new ArrayList();
        for (Object obj3 : listD) {
            String str5 = (String) obj3;
            if (nq7.Z(str5, "Failure", false) && nq7.Z(str5, "/split_", false)) {
                arrayList8.add(obj3);
            }
        }
        if (arrayList8.isEmpty()) {
            str = null;
        } else {
            ArrayList<iv> arrayList9 = new ArrayList();
            for (String str6 : arrayList8) {
                str6.getClass();
                Iterator it3 = nq7.x0(str6, new String[]{TokenAuthenticationScheme.SCHEME_DELIMITER}, 6).iterator();
                do {
                    if (!it3.hasNext()) {
                        next2 = null;
                        break;
                    }
                    next2 = it3.next();
                } while (!uq7.V((String) next2, "/data/", false));
                String str7 = (String) next2;
                if (str7 == null || (strI0 = nq7.I0(str7, ':')) == null) {
                    ivVar = null;
                } else {
                    char c = mc3.a;
                    if (strI0.indexOf(0) >= 0) {
                        c6.f("Null character present in file/path name. There are no known legitimate use cases for such data, but several injection attacks may use it");
                        return null;
                    }
                    ivVar = new iv(str6, strI0, strI0.substring(Math.max(strI0.lastIndexOf(47), strI0.lastIndexOf(92)) + 1));
                }
                if (ivVar != null) {
                    arrayList9.add(ivVar);
                }
            }
            str = null;
            boolean z2 = true;
            LinkedHashSet linkedHashSet = this.g;
            linkedHashSet.getClass();
            if (arrayList9.isEmpty()) {
                z2 = false;
                break;
            }
            Iterator it4 = arrayList9.iterator();
            do {
                if (!it4.hasNext()) {
                    z2 = false;
                    break;
                }
            } while (linkedHashSet.contains(((iv) it4.next()).c));
            for (iv ivVar2 : arrayList9) {
                String str8 = ivVar2.b;
                String str9 = ivVar2.c;
                if (new jr7(str8).b("rm -rf @@")) {
                    vr6.d$default(vr6.INSTANCE, "AppRestoreHelper", "Deleted split from tmp path=".concat(ivVar2.b), null, 4, null);
                }
                vr6.e$default(vr6.INSTANCE, "AppRestoreHelper", dj7.l("Split install error: Name=", str9, ", Error=", ivVar2.a), null, 4, null);
                linkedHashSet.add(str9);
            }
            if (z2) {
                vr6.i$default(vr6.INSTANCE, "AppRestoreHelper", "Retrying restore by excluding ".concat(el1.Y0(linkedHashSet, null, null, null, null, 63)), null, 4, null);
                return f(ywVar, pe4Var, gqVar);
            }
        }
        if (jd4.t(arrayList3) && !jiVar.checkInstalled()) {
            vr6 vr6Var = vr6.INSTANCE;
            String packageName2 = jiVar.getPackageName();
            String str10 = this.e;
            vr6.i$default(vr6Var, "AppRestoreHelper", dj7.l("Trying install-existing for ", packageName2, " on user ", str10), null, 4, null);
            mp6 mp6Var2 = mp6.a;
            String packageName3 = jiVar.getPackageName();
            packageName3.getClass();
            str10.getClass();
            List listH = mp6Var2.h(new String[]{dj7.l("pm install-existing --user ", eq3.k("'", uq7.T(str10, "'", "'\"'\"'"), "'"), TokenAuthenticationScheme.SCHEME_DELIMITER, eq3.k("'", uq7.T(packageName3, "'", "'\"'\"'"), "'"))}, ip6.SHIZUKU);
            vr6.i$default(vr6Var, "AppRestoreHelper", "install-existing output: ".concat(el1.Y0(listH, null, null, null, null, 63)), null, 4, null);
            arrayList3.addAll(listH);
            if (!jd4.v(listH) && jiVar.checkInstalled()) {
                String packageName4 = jiVar.getPackageName();
                packageName4.getClass();
                List listI2 = nc8.I("Warning [Installed existing package " + packageName4 + " for user " + str10 + " after APK downgrade rejection]");
                List listB3 = b(gqVar, listI2);
                return listB3 != null ? listB3 : listI2;
            }
        }
        List listB4 = b(gqVar, arrayList3);
        if (listB4 != null) {
            return listB4;
        }
        g00 g00Var = g00.a;
        if (g00.x() && jd4.t(arrayList3)) {
            vr6 vr6Var2 = vr6.INSTANCE;
            vr6.i$default(vr6Var2, "AppRestoreHelper", "Workaround for secondary user downgrade error", null, 4, null);
            String str11 = (String) el1.U0(mp6.a.h(new String[]{xs1.j("pm path ", jiVar.getPackageName())}, ip6.SHIZUKU));
            String strZ0 = (str11 == null || (string = nq7.H0(str11).toString()) == null) ? str : nq7.z0(string, "package:", string);
            if (strZ0 == null || strZ0.length() == 0) {
                vr6.e$default(vr6Var2, "AppRestoreHelper", "Base apk path not found.", null, 4, null);
            } else {
                jr7 jr7Var3 = new jr7(strZ0);
                if (jr7Var3.b("[ -e @@ ]") && (parent = jr7Var3.getParent()) != null) {
                    jr7Var2 = new jr7(parent);
                }
                if (r6 != 0 || (jr7VarArrListFiles = r6.listFiles()) == null) {
                    r6 = jr7Var2;
                    r6 = jr7Var2;
                    arrayList = str;
                } else {
                    arrayList = new ArrayList();
                    for (jr7 jr7Var4 : jr7VarArrListFiles) {
                        String name2 = jr7Var4.getName();
                        name2.getClass();
                        if (uq7.O(name2, ".apk", false)) {
                            r6 = jr7Var2;
                            arrayList.add(jr7Var4);
                        } else {
                            r6 = jr7Var2;
                        }
                    }
                }
                if (arrayList == 0) {
                    r6 = jr7Var2;
                    arrayList = ov2.a;
                }
                r6 = jr7Var2;
                it = arrayList.iterator();
                do {
                    if (it.hasNext()) {
                        next = str;
                        break;
                    }
                    next = it.next();
                } while (!pe4.d(((jr7) next).getName(), "base.apk"));
                jr7Var = (jr7) next;
                arrayList2 = new ArrayList();
                for (Object obj4 : arrayList) {
                    name = ((jr7) obj4).getName();
                    name.getClass();
                    if (uq7.V(name, "split_", false)) {
                        arrayList2.add(obj4);
                    }
                }
                if (jr7Var == null && jr7Var.b("[ -e @@ ]")) {
                    return e(ywVar, new kv(arrayList2), false);
                }
                vr6 vr6Var3 = vr6.INSTANCE;
                if (jr7Var != null) {
                    path = jr7Var.getPath();
                } else {
                    path = str;
                }
                vr6.e$default(vr6Var3, "AppRestoreHelper", "Base apk not found at path=".concat(path != null ? path : ""), null, 4, null);
            }
            r6 = str;
            if (r6 != 0) {
                r6 = jr7Var2;
                r6 = jr7Var2;
                arrayList = str;
            } else {
                r6 = jr7Var2;
                r6 = jr7Var2;
                arrayList = str;
            }
            if (arrayList == 0) {
                r6 = jr7Var2;
                arrayList = ov2.a;
            }
            r6 = jr7Var2;
            it = arrayList.iterator();
            do {
                if (it.hasNext()) {
                    next = str;
                    break;
                }
                next = it.next();
            } while (!pe4.d(((jr7) next).getName(), "base.apk"));
            jr7Var = (jr7) next;
            arrayList2 = new ArrayList();
            while (r5.hasNext()) {
                name = ((jr7) obj4).getName();
                name.getClass();
                if (uq7.V(name, "split_", false)) {
                    arrayList2.add(obj4);
                }
            }
            if (jr7Var == null) {
            }
            vr6 vr6Var4 = vr6.INSTANCE;
            if (jr7Var != null) {
                path = jr7Var.getPath();
            } else {
                path = str;
            }
            vr6.e$default(vr6Var4, "AppRestoreHelper", "Base apk not found at path=".concat(path != null ? path : ""), null, 4, null);
        }
        return arrayList3;
    }

    public final ArrayList g(Long l, List list) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            q63 q63Var = (q63) obj;
            String strP = q63Var.p();
            if (this.g.contains(strP)) {
                vr6.d$default(vr6.INSTANCE, "AppRestoreHelper", "Excluding split: ".concat(strP), null, 4, null);
            } else {
                rg rgVarA = ng.a(q63Var, true);
                if (rgVarA.c() != l.longValue()) {
                    vr6 vr6Var = vr6.INSTANCE;
                    long jC = rgVarA.c();
                    StringBuilder sb = new StringBuilder("Ignoring split ");
                    sb.append(strP);
                    sb.append(" due to version difference (base=");
                    sb.append(l);
                    sb.append(", split=");
                    vr6.e$default(vr6Var, "AppRestoreHelper", dj7.h(jC, ")", sb), null, 4, null);
                } else {
                    arrayList.add(obj);
                }
            }
        }
        return arrayList;
    }
}
