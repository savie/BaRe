package defpackage;

import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.ListIterator;
import java.util.concurrent.locks.ReentrantLock;
import org.swiftapps.swiftbackup.database.MDatabase_Impl;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class z35 extends gu2 {
    public final /* synthetic */ MDatabase_Impl d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z35(MDatabase_Impl mDatabase_Impl) {
        super(7, "0f100f6712f2f5bacf9f9234e2a4be02", "36f9b5c8a6ecd241cdd9aa474afbf5f3");
        this.d = mDatabase_Impl;
    }

    @Override // defpackage.gu2
    public final void a(fw6 fw6Var) {
        fw6Var.getClass();
        ly8.t("CREATE TABLE IF NOT EXISTS `SMessage` (`time` INTEGER NOT NULL, `messageType` INTEGER NOT NULL, `title` TEXT NOT NULL, `msg` TEXT NOT NULL, `color` TEXT, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL)", fw6Var);
        ly8.t("CREATE TABLE IF NOT EXISTS `app_cached_data` (`pkgName` TEXT NOT NULL, `name` TEXT NOT NULL, `isInstalled` INTEGER, `isEnabled` INTEGER, `isLaunchable` INTEGER, `locale` TEXT, PRIMARY KEY(`pkgName`))", fw6Var);
        ly8.t("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)", fw6Var);
        ly8.t("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '36f9b5c8a6ecd241cdd9aa474afbf5f3')", fw6Var);
    }

    @Override // defpackage.gu2
    public final void c(fw6 fw6Var) {
        fw6Var.getClass();
        ly8.t("DROP TABLE IF EXISTS `SMessage`", fw6Var);
        ly8.t("DROP TABLE IF EXISTS `app_cached_data`", fw6Var);
    }

    @Override // defpackage.gu2
    public final void s(fw6 fw6Var) {
        fw6Var.getClass();
    }

    @Override // defpackage.gu2
    public final void t(fw6 fw6Var) {
        fw6Var.getClass();
        kg4 kg4VarD = this.d.d();
        mb8 mb8Var = kg4VarD.b;
        mb8Var.getClass();
        nw6 nw6VarP0 = fw6Var.p0("PRAGMA query_only");
        try {
            nw6VarP0.i0();
            boolean zF = nw6VarP0.F();
            k55.d(nw6VarP0, null);
            if (!zF) {
                ly8.t("PRAGMA temp_store = MEMORY", fw6Var);
                ly8.t("PRAGMA recursive_triggers = 1", fw6Var);
                ly8.t("DROP TABLE IF EXISTS room_table_modification_log", fw6Var);
                if (mb8Var.d) {
                    ly8.t("CREATE TEMP TABLE IF NOT EXISTS room_table_modification_log (table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)", fw6Var);
                } else {
                    ly8.t(uq7.T("CREATE TEMP TABLE IF NOT EXISTS room_table_modification_log (table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)", "TEMP", ""), fw6Var);
                }
                ds5 ds5Var = mb8Var.h;
                ReentrantLock reentrantLock = ds5Var.a;
                reentrantLock.lock();
                try {
                    ds5Var.d = true;
                    reentrantLock.unlock();
                } catch (Throwable th) {
                    reentrantLock.unlock();
                    throw th;
                }
            }
            synchronized (kg4VarD.h) {
            }
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                k55.d(nw6VarP0, th2);
                throw th3;
            }
        }
    }

    @Override // defpackage.gu2
    public final void u(fw6 fw6Var) {
        fw6Var.getClass();
    }

    @Override // defpackage.gu2
    public final void v(fw6 fw6Var) {
        fw6Var.getClass();
        ww4 ww4VarP = nc8.p();
        nw6 nw6VarP0 = fw6Var.p0("SELECT name FROM sqlite_master WHERE type = 'trigger'");
        while (nw6VarP0.i0()) {
            try {
                ww4VarP.add(nw6VarP0.R(0));
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    k55.d(nw6VarP0, th);
                    throw th2;
                }
            }
        }
        k55.d(nw6VarP0, null);
        ListIterator listIterator = nc8.h(ww4VarP).listIterator(0);
        while (true) {
            vw4 vw4Var = (vw4) listIterator;
            if (!vw4Var.hasNext()) {
                return;
            }
            String str = (String) vw4Var.next();
            if (uq7.V(str, "room_fts_content_sync_", false)) {
                ly8.t("DROP TRIGGER IF EXISTS ".concat(str), fw6Var);
            }
        }
    }

    @Override // defpackage.gu2
    public final ko6 w(fw6 fw6Var) {
        fw6Var.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("time", new nw7("time", "INTEGER", true, 0, null, 1));
        linkedHashMap.put("messageType", new nw7("messageType", "INTEGER", true, 0, null, 1));
        linkedHashMap.put("title", new nw7("title", "TEXT", true, 0, null, 1));
        linkedHashMap.put("msg", new nw7("msg", "TEXT", true, 0, null, 1));
        linkedHashMap.put("color", new nw7("color", "TEXT", false, 0, null, 1));
        linkedHashMap.put("id", new nw7("id", "INTEGER", true, 1, null, 1));
        qw7 qw7Var = new qw7("SMessage", linkedHashMap, new LinkedHashSet(), new LinkedHashSet());
        qw7 qw7VarC = zh8.C("SMessage", fw6Var);
        if (!qw7Var.equals(qw7VarC)) {
            return new ko6("SMessage(org.swiftapps.swiftbackup.model.logger.SMessage).\n Expected:\n" + qw7Var + "\n Found:\n" + qw7VarC, false);
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        linkedHashMap2.put("pkgName", new nw7("pkgName", "TEXT", true, 1, null, 1));
        linkedHashMap2.put("name", new nw7("name", "TEXT", true, 0, null, 1));
        linkedHashMap2.put("isInstalled", new nw7("isInstalled", "INTEGER", false, 0, null, 1));
        linkedHashMap2.put("isEnabled", new nw7("isEnabled", "INTEGER", false, 0, null, 1));
        linkedHashMap2.put("isLaunchable", new nw7("isLaunchable", "INTEGER", false, 0, null, 1));
        linkedHashMap2.put("locale", new nw7("locale", "TEXT", false, 0, null, 1));
        qw7 qw7Var2 = new qw7("app_cached_data", linkedHashMap2, new LinkedHashSet(), new LinkedHashSet());
        qw7 qw7VarC2 = zh8.C("app_cached_data", fw6Var);
        if (qw7Var2.equals(qw7VarC2)) {
            return new ko6(null, true);
        }
        return new ko6("app_cached_data(org.swiftapps.swiftbackup.appslist.data.AppCachedDataItem).\n Expected:\n" + qw7Var2 + "\n Found:\n" + qw7VarC2, false);
    }
}
