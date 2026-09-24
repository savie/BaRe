package defpackage;

import android.app.AppOpsManager;
import android.app.usage.UsageStats;
import android.app.usage.UsageStatsManager;
import android.content.SharedPreferences;
import android.os.Looper;
import android.os.Process;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class iy {
    public static final iy a = new iy();
    public static final ex6 b = new ex6();
    public static final LinkedHashMap c = new LinkedHashMap();
    public static final LinkedHashMap d = new LinkedHashMap();
    public static final LinkedHashMap e = new LinkedHashMap();
    public static boolean f;

    public static sx b() {
        int iOrdinal = sx.Name.ordinal();
        Object obj = null;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            iOrdinal = sharedPreferences.getInt("app_sort_mode", iOrdinal);
            z3 z3Var = (z3) sx.getEntries();
            z3Var.getClass();
            w3 w3Var = new w3(z3Var);
            while (w3Var.hasNext()) {
                Object next = w3Var.next();
                if (iOrdinal == ((sx) next).ordinal()) {
                    obj = next;
                    break;
                }
            }
            sx sxVar = (sx) obj;
            return sxVar == null ? sx.Name : sxVar;
        } catch (ClassCastException unused) {
        }
    }

    public static boolean c() {
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences != null) {
                return sharedPreferences.getBoolean("app_sort_ascending", true);
            }
            pe4.F("prefs");
            throw null;
        } catch (ClassCastException unused) {
            return true;
        }
    }

    public static void d(sx sxVar) {
        sxVar.getClass();
        int iOrdinal = sxVar.ordinal();
        SharedPreferences.Editor editor = cz4.k;
        if (editor != null) {
            editor.putInt("app_sort_mode", iOrdinal).apply();
        } else {
            pe4.F("editor");
            throw null;
        }
    }

    public static List f(List list, Comparator comparator) {
        list.getClass();
        String string = null;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            string = sharedPreferences.getString("app_locale", null);
            Collator collator = Collator.getInstance((string == null || string.length() == 0) ? xx3.h().a() : xx3.g(string).a());
            int i = 0;
            collator.setStrength(0);
            return comparator != null ? el1.n1(list, new gy(new fy(comparator, collator), i)) : el1.n1(list, new hy(new yg(collator, 1)));
        } catch (ClassCastException unused) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x00a1  */
    public final synchronized void a(ArrayList arrayList, sx sxVar) {
        Long lValueOf;
        long total;
        try {
            if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
                throw new IllegalThreadStateException("Method called from main thread");
            }
            f = false;
            int i = sxVar == sx.AppSize ? R.string.calculating_app_sizes : R.string.calculating_backup_sizes;
            SwiftApp.Companion companion = SwiftApp.d;
            String strConcat = ("\n" + SwiftApp.Companion.c().getString(R.string.slow_app_sort_option_warning)).concat("\n\n");
            try {
                Iterator it = arrayList.iterator();
                int i2 = 0;
                while (it.hasNext()) {
                    i2++;
                    ji jiVar = (ji) it.next();
                    if (!f) {
                        ex6 ex6Var = b;
                        int size = arrayList.size();
                        SwiftApp.Companion companion2 = SwiftApp.d;
                        String string = SwiftApp.Companion.c().getString(i);
                        string.getClass();
                        ex6Var.k(new ux(string, i2, size, strConcat + jiVar.getName()));
                        long jH = 0;
                        if (sxVar == sx.AppSize) {
                            if (jiVar.isInstalled()) {
                                jiVar.calculateSize(true, true, true, true);
                                qx sizeInfo = jiVar.getSizeInfo();
                                if (sizeInfo != null) {
                                    total = sizeInfo.getTotal();
                                } else {
                                    total = 0;
                                }
                            } else {
                                total = 0;
                            }
                            c.put(jiVar.getPackageName(), Long.valueOf(total));
                        }
                        if (sxVar == sx.BackupSize) {
                            if (jiVar.hasBackup(false)) {
                                List<gm> localBackups = jiVar.getLocalBackups();
                                if (localBackups != null) {
                                    Iterator<T> it2 = localBackups.iterator();
                                    while (it2.hasNext()) {
                                        jH += ((gm) it2.next()).a.D();
                                    }
                                    lValueOf = Long.valueOf(jH);
                                } else {
                                    lValueOf = null;
                                }
                                jH = io4.h(lValueOf);
                            }
                            d.put(jiVar.getPackageName(), Long.valueOf(jH));
                        }
                    }
                }
            } finally {
                b.l(tx.a);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final List e(List list, boolean z) {
        list.getClass();
        Comparator comparatorM = null;
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
            return null;
        }
        sx sxVarB = b();
        sx sxVar = sx.DateUsed;
        LinkedHashMap linkedHashMap = d;
        LinkedHashMap linkedHashMap2 = c;
        int i = 1;
        if (sxVarB == sxVar) {
            linkedHashMap2.clear();
            linkedHashMap.clear();
            mp6 mp6Var = mp6.a;
            if (mp6.f()) {
                SwiftApp.Companion companion = SwiftApp.d;
                if (((AppOpsManager) SwiftApp.Companion.c().getSystemService("appops")).noteOpNoThrow("android:get_usage_stats", Process.myUid(), SwiftApp.Companion.c().getPackageName()) != 0) {
                    String packageName = SwiftApp.Companion.c().getPackageName();
                    packageName.getClass();
                    eu euVar = eu.allow;
                    euVar.getClass();
                    boolean z2 = g42.a;
                    String string = euVar.toString();
                    string.getClass();
                    mp6Var.j(true, new String[]{String.format(g42.d(), Arrays.copyOf(new Object[]{"set", packageName, "android:get_usage_stats", string}, 4))}, ip6.SHIZUKU);
                }
            }
            SwiftApp.Companion companion2 = SwiftApp.d;
            if (((AppOpsManager) SwiftApp.Companion.c().getSystemService("appops")).noteOpNoThrow("android:get_usage_stats", Process.myUid(), SwiftApp.Companion.c().getPackageName()) == 0) {
                if (((AppOpsManager) SwiftApp.Companion.c().getSystemService("appops")).noteOpNoThrow("android:get_usage_stats", Process.myUid(), SwiftApp.Companion.c().getPackageName()) != 0) {
                    c6.f("Usage stats permission not granted!");
                    return null;
                }
                long jCurrentTimeMillis = System.currentTimeMillis();
                Object systemService = SwiftApp.Companion.c().getSystemService((Class<Object>) UsageStatsManager.class);
                systemService.getClass();
                List<UsageStats> listQueryUsageStats = ((UsageStatsManager) systemService).queryUsageStats(4, jCurrentTimeMillis - 2592000000L, jCurrentTimeMillis);
                listQueryUsageStats.getClass();
                ArrayList arrayList = new ArrayList();
                for (Object obj : listQueryUsageStats) {
                    UsageStats usageStats = (UsageStats) obj;
                    if (usageStats.getLastTimeUsed() > 0 && usageStats.getLastTimeUsed() > jCurrentTimeMillis - 31536000000L) {
                        arrayList.add(obj);
                    }
                }
                ArrayList<UsageStats> arrayList2 = new ArrayList();
                for (Object obj2 : arrayList) {
                    UsageStats usageStats2 = (UsageStats) obj2;
                    if (!list.isEmpty()) {
                        Iterator it = list.iterator();
                        while (it.hasNext()) {
                            ji jiVar = (ji) it.next();
                            if (jiVar.isInstalled() && pe4.d(jiVar.getPackageName(), usageStats2.getPackageName())) {
                                arrayList2.add(obj2);
                                break;
                            }
                        }
                    }
                }
                for (UsageStats usageStats3 : arrayList2) {
                    e.put(usageStats3.getPackageName(), Long.valueOf(usageStats3.getLastTimeUsed()));
                }
            } else {
                vr6.e$default(vr6.INSTANCE, "AppSortHelper", "Resetting sort mode from " + b() + " as usage stats permission isn't granted", null, 4, null);
                d(sx.Name);
            }
        }
        if (b() == sx.AppSize) {
            ArrayList arrayList3 = new ArrayList();
            for (Object obj3 : list) {
                ji jiVar2 = (ji) obj3;
                if (jiVar2.isInstalled() && !linkedHashMap2.containsKey(jiVar2.getPackageName())) {
                    arrayList3.add(obj3);
                }
            }
            if (!arrayList3.isEmpty()) {
                a(arrayList3, sx.AppSize);
            }
        }
        if (b() == sx.BackupSize && !z) {
            ArrayList arrayList4 = new ArrayList();
            for (Object obj4 : list) {
                if (!linkedHashMap.containsKey(((ji) obj4).getPackageName())) {
                    arrayList4.add(obj4);
                }
            }
            if (!arrayList4.isEmpty()) {
                a(arrayList4, sx.BackupSize);
            }
        }
        int i2 = 2;
        int i3 = 0;
        switch (wx.a[b().ordinal()]) {
            case 1:
                break;
            case 2:
                comparatorM = ms8.m(zx.c, ay.c);
                break;
            case 3:
                comparatorM = ms8.m(cy.c, dy.c);
                break;
            case 4:
                comparatorM = new xx(i3, new nu(i2));
                break;
            case 5:
                comparatorM = ms8.m(new ou(i), new sl(i));
                break;
            case 6:
                comparatorM = z ? new yx(new dq(i), i3) : ms8.m(new nk(i), new rx(i3));
                break;
            case 7:
                comparatorM = ms8.m(ey.c, new sh(i2));
                break;
            default:
                q.j();
                return null;
        }
        List listF = f(list, comparatorM);
        return c() ? listF : el1.j1(listF);
    }
}
