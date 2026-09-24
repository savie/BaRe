package defpackage;

import android.app.ActivityManager;
import android.content.Context;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import org.swiftapps.swiftbackup.database.MDatabase;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bo6 {
    public final Context b;
    public e40 f;
    public e40 g;
    public boolean o;
    public boolean p;
    public final ArrayList d = new ArrayList();
    public final ArrayList e = new ArrayList();
    public final co6 h = co6.a;
    public final long i = -1;
    public final tr9 j = new tr9(14);
    public final LinkedHashSet k = new LinkedHashSet();
    public final LinkedHashSet l = new LinkedHashSet();
    public final ArrayList m = new ArrayList();
    public boolean n = true;
    public final boolean q = true;
    public final n81 a = ph6.a(MDatabase.class);
    public final String c = "swiftbackup-db";

    public bo6(Context context) {
        this.b = context;
    }

    /* JADX WARN: Code duplicated, block: B:128:0x02bf A[LOOP:1: B:115:0x028f->B:128:0x02bf, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:161:0x035d A[LOOP:5: B:148:0x032d->B:161:0x035d, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:247:0x02c9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:253:0x036f A[SYNTHETIC] */
    public final eo6 a() {
        co6 co6Var;
        String name;
        gu2 gu2VarC;
        int i;
        Object gs1Var;
        ns7 ns7VarA;
        ns7 ns7VarA2;
        List list;
        List list2;
        e40 e40Var = this.f;
        if (e40Var == null && this.g == null) {
            e40 e40Var2 = f40.f;
            this.g = e40Var2;
            this.f = e40Var2;
        } else if (e40Var != null && this.g == null) {
            this.g = e40Var;
        } else if (e40Var == null) {
            this.f = this.g;
        }
        LinkedHashSet linkedHashSet = this.l;
        linkedHashSet.getClass();
        LinkedHashSet linkedHashSet2 = this.k;
        linkedHashSet2.getClass();
        if (!linkedHashSet.isEmpty()) {
            Iterator it = linkedHashSet.iterator();
            while (it.hasNext()) {
                int iIntValue = ((Number) it.next()).intValue();
                if (linkedHashSet2.contains(Integer.valueOf(iIntValue))) {
                    f6.g(fz5.j(iIntValue, "Inconsistency detected. A Migration was supplied to addMigration() that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(). Start version is: "));
                    return null;
                }
            }
        }
        lv1 lv1Var = new lv1(16);
        if (this.i > 0) {
            if (this.c != null) {
                c6.f("Required value was null.");
                return null;
            }
            c6.f("Cannot create auto-closing database for an in-memory database.");
            return null;
        }
        co6 co6Var2 = this.h;
        co6Var2.getClass();
        Context context = this.b;
        context.getClass();
        co6 co6Var3 = co6.a;
        co6 co6Var4 = co6.c;
        if (co6Var2 != co6Var3) {
            co6Var = co6Var2;
        } else {
            Object systemService = context.getSystemService("activity");
            ActivityManager activityManager = systemService instanceof ActivityManager ? (ActivityManager) systemService : null;
            if (activityManager == null || activityManager.isLowRamDevice()) {
                co6Var2 = co6.b;
                co6Var = co6Var2;
            } else {
                co6Var = co6Var4;
            }
        }
        e40 e40Var3 = this.f;
        if (e40Var3 == null) {
            c6.f("Required value was null.");
            return null;
        }
        e40 e40Var4 = this.g;
        if (e40Var4 == null) {
            c6.f("Required value was null.");
            return null;
        }
        vc2 vc2Var = new vc2(context, this.c, lv1Var, this.j, this.d, false, co6Var, e40Var3, e40Var4, null, this.n, this.o, linkedHashSet2, null, null, null, this.e, this.m, this.p, null, null);
        vc2Var.q = this.q;
        n81 n81Var = this.a;
        n81Var.getClass();
        Class clsA = n81Var.a();
        clsA.getClass();
        Package r0 = clsA.getPackage();
        if (r0 == null || (name = r0.getName()) == null) {
            name = "";
        }
        String canonicalName = clsA.getCanonicalName();
        canonicalName.getClass();
        if (name.length() != 0) {
            canonicalName = canonicalName.substring(name.length() + 1);
        }
        String strReplace = canonicalName.replace('.', '_');
        strReplace.getClass();
        String strConcat = strReplace.concat("_Impl");
        try {
            Class<?> cls = Class.forName(name.length() == 0 ? strConcat : name + '.' + strConcat, true, clsA.getClassLoader());
            cls.getClass();
            eo6 eo6Var = (eo6) cls.getDeclaredConstructor(null).newInstance(null);
            eo6Var.getClass();
            eo6Var.j = vc2Var.q;
            try {
                gu2VarC = eo6Var.c();
                gu2VarC.getClass();
            } catch (io5 unused) {
                gu2VarC = null;
            }
            List list3 = ov2.a;
            Executor executor = vc2Var.i;
            Executor executor2 = vc2Var.h;
            List list4 = vc2Var.m;
            List list5 = vc2Var.n;
            Context context2 = vc2Var.a;
            List list6 = vc2Var.e;
            if (gu2VarC == null) {
                new dq(eo6Var);
                new h11(2, eo6Var, ho6.class, "compatTransactionCoroutineExecute", "compatTransactionCoroutineExecute(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 1, 2);
                mi2 mi2Var = new mi2();
                mi2Var.c = vc2Var;
                mi2Var.d = new zn6(-1, "", "");
                mi2Var.e = list6 == null ? list3 : list6;
                lm lmVar = new lm(mi2Var, 17);
                if (list6 != null) {
                    list3 = list6;
                }
                el1.f1(new ao6(lmVar), list3);
                context2.getClass();
                vc2Var.d.getClass();
                executor2.getClass();
                executor.getClass();
                list4.getClass();
                list5.getClass();
                throw new io5(0);
            }
            List list7 = list4;
            List list8 = list5;
            do6 do6Var = new do6(2, eo6Var, ho6.class, "compatTransactionCoroutineExecute", "compatTransactionCoroutineExecute(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 1);
            mi2 mi2Var2 = new mi2();
            mi2Var2.c = vc2Var;
            mi2Var2.d = gu2VarC;
            if (list6 != null) {
                list3 = list6;
            }
            mi2Var2.e = list3;
            co6 co6Var5 = vc2Var.g;
            gw6 gw6Var = vc2Var.p;
            String str = vc2Var.b;
            if (gw6Var != null) {
                mi2Var2.g = null;
                if (gw6Var.k()) {
                    gs1Var = new qx5(new cd(mi2Var2, gw6Var), str != null ? str : ":memory:", do6Var);
                } else if (str == null) {
                    gs1Var = new gs1(new cd(mi2Var2, gw6Var));
                } else {
                    cd cdVar = new cd(mi2Var2, gw6Var);
                    int iOrdinal = co6Var5.ordinal();
                    if (iOrdinal == 1) {
                        i = 1;
                    } else {
                        if (iOrdinal != 2) {
                            throw new IllegalStateException(("Can't get max number of reader for journal mode '" + co6Var5 + '\'').toString());
                        }
                        i = 4;
                    }
                    int iOrdinal2 = co6Var5.ordinal();
                    if (iOrdinal2 != 1 && iOrdinal2 != 2) {
                        throw new IllegalStateException(("Can't get max number of writers for journal mode '" + co6Var5 + '\'').toString());
                    }
                    gs1Var = new gs1(cdVar, str, i);
                }
                mi2Var2.f = gs1Var;
            } else {
                if (vc2Var.c == null) {
                    c6.f("SQLiteManager was constructed with both null driver and open helper factory!");
                    throw null;
                }
                context2.getClass();
                ns3 ns3Var = new ns3(context2, str, new kh5(mi2Var2, gu2VarC.a));
                mi2Var2.g = ns3Var;
                mi2Var2.f = new qx5(new ln5(ns3Var), str != null ? str : ":memory:", do6Var);
            }
            boolean z = co6Var5 == co6Var4;
            ns7 ns7Var = (ns7) mi2Var2.g;
            if (ns7Var != null) {
                ns7Var.setWriteAheadLoggingEnabled(z);
            }
            eo6Var.d = mi2Var2;
            eo6Var.e = eo6Var.b();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            Set<n81> setF = eo6Var.f();
            int size = list8.size();
            boolean[] zArr = new boolean[size];
            for (n81 n81Var2 : setF) {
                int size2 = list8.size() - 1;
                if (size2 >= 0) {
                    while (true) {
                        int i2 = size2 - 1;
                        list2 = list8;
                        if (n81Var2.d(list2.get(size2))) {
                            zArr[size2] = true;
                            break;
                        }
                        if (i2 >= 0) {
                            size2 = i2;
                            list8 = list2;
                        }
                    }
                    if (size2 >= 0) {
                        c6.d(n81Var2.b(), ") is missing in the database configuration.", "A required auto migration spec (");
                        return null;
                    }
                    linkedHashMap.put(n81Var2, list2.get(size2));
                    list8 = list2;
                } else {
                    list2 = list8;
                }
                size2 = -1;
                if (size2 >= 0) {
                    c6.d(n81Var2.b(), ") is missing in the database configuration.", "A required auto migration spec (");
                    return null;
                }
                linkedHashMap.put(n81Var2, list2.get(size2));
                list8 = list2;
            }
            int size3 = list8.size() - 1;
            if (size3 >= 0) {
                while (true) {
                    int i3 = size3 - 1;
                    if (size3 >= size || !zArr[size3]) {
                        c6.f("Unexpected auto migration specs found. Annotate AutoMigrationSpec implementation with @ProvidedAutoMigrationSpec annotation or remove this spec from the builder.");
                        return null;
                    }
                    if (i3 < 0) {
                        break;
                    }
                    size3 = i3;
                }
            }
            Iterator it2 = eo6Var.a(linkedHashMap).iterator();
            if (it2.hasNext()) {
                throw eq3.h(it2);
            }
            LinkedHashMap linkedHashMapG = eo6Var.g();
            boolean[] zArr2 = new boolean[list7.size()];
            for (Map.Entry entry : linkedHashMapG.entrySet()) {
                n81 n81Var3 = (n81) entry.getKey();
                for (n81 n81Var4 : (List) entry.getValue()) {
                    int size4 = list7.size() - 1;
                    if (size4 >= 0) {
                        while (true) {
                            int i4 = size4 - 1;
                            list = list7;
                            if (n81Var4.d(list.get(size4))) {
                                zArr2[size4] = true;
                                break;
                            }
                            if (i4 >= 0) {
                                size4 = i4;
                                list7 = list;
                            }
                        }
                        if (size4 >= 0) {
                            throw new IllegalArgumentException(("A required type converter (" + n81Var4.b() + ") for " + n81Var3.b() + " is missing in the database configuration.").toString());
                        }
                        Object obj = list.get(size4);
                        n81Var4.getClass();
                        obj.getClass();
                        eo6Var.i.put(n81Var4, obj);
                        list7 = list;
                    } else {
                        list = list7;
                    }
                    size4 = -1;
                    if (size4 >= 0) {
                        throw new IllegalArgumentException(("A required type converter (" + n81Var4.b() + ") for " + n81Var3.b() + " is missing in the database configuration.").toString());
                    }
                    Object obj2 = list.get(size4);
                    n81Var4.getClass();
                    obj2.getClass();
                    eo6Var.i.put(n81Var4, obj2);
                    list7 = list;
                }
            }
            List list9 = list7;
            int size5 = list9.size() - 1;
            if (size5 >= 0) {
                while (true) {
                    int i5 = size5 - 1;
                    if (!zArr2[size5]) {
                        d6.e(list9.get(size5), ". Annotate TypeConverter class with @ProvidedTypeConverter annotation or remove this converter from the builder.", "Unexpected type converter ");
                        return null;
                    }
                    if (i5 < 0) {
                        break;
                    }
                    size5 = i5;
                }
            }
            eo6Var.b = executor2;
            eo6Var.c = new d98(executor);
            Executor executor3 = eo6Var.b;
            if (executor3 == null) {
                pe4.F("internalQueryExecutor");
                throw null;
            }
            dv1 dv1VarC = l73.c(iz1.s(rs9.e(executor3), zm5.a()));
            eo6Var.a = dv1VarC;
            ox1 ox1Var = dv1VarC.a;
            d98 d98Var = eo6Var.c;
            if (d98Var == null) {
                pe4.F("internalTransactionExecutor");
                throw null;
            }
            ox1Var.plus(rs9.e(d98Var));
            eo6Var.g = vc2Var.f;
            mi2 mi2Var3 = eo6Var.d;
            if (mi2Var3 == null) {
                pe4.F("connectionManager");
                throw null;
            }
            ns7 ns7Var2 = (ns7) mi2Var3.g;
            if (ns7Var2 == null) {
                ns7VarA = null;
                break;
            }
            ns7VarA = ns7Var2;
            while (!(ns7VarA instanceof l36)) {
                if (!(ns7VarA instanceof sg2)) {
                    ns7VarA = null;
                    break;
                }
                ns7VarA = ((sg2) ns7VarA).a();
            }
            mi2 mi2Var4 = eo6Var.d;
            if (mi2Var4 == null) {
                pe4.F("connectionManager");
                throw null;
            }
            ns7 ns7Var3 = (ns7) mi2Var4.g;
            if (ns7Var3 == null) {
                ns7VarA2 = null;
                break;
            }
            ns7VarA2 = ns7Var3;
            while (!(ns7VarA2 instanceof y90)) {
                if (!(ns7VarA2 instanceof sg2)) {
                    ns7VarA2 = null;
                    break;
                }
                ns7VarA2 = ((sg2) ns7VarA2).a();
            }
            return eo6Var;
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("Cannot find implementation for " + clsA.getCanonicalName() + ". " + strConcat + " does not exist. Is Room annotation processor correctly configured?", e);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("Cannot access the constructor " + clsA.getCanonicalName(), e2);
        } catch (InstantiationException e3) {
            throw new RuntimeException("Failed to create an instance of " + clsA.getCanonicalName(), e3);
        }
    }
}
