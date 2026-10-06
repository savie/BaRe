package defpackage;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.view.MenuItem;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.ListIterator;
import java.util.Set;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class vf1 implements g36, kw6, dv7 {
    public final /* synthetic */ Object a;
    public final /* synthetic */ Object b;

    public /* synthetic */ vf1(Object obj, Object obj2) {
        this.a = obj;
        this.b = obj2;
    }

    @Override // defpackage.kw6
    public Object apply(Object obj) {
        mw6 mw6Var = (mw6) this.a;
        oe0 oe0Var = (oe0) this.b;
        SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
        ld0 ld0Var = mw6Var.d;
        ArrayList arrayListH = mw6Var.h(sQLiteDatabase, oe0Var, ld0Var.b);
        for (d66 d66Var : d66.values()) {
            if (d66Var != oe0Var.c) {
                int size = ld0Var.b - arrayListH.size();
                if (size <= 0) {
                    break;
                }
                arrayListH.addAll(mw6Var.h(sQLiteDatabase, oe0Var.b(d66Var), size));
            }
        }
        HashMap map = new HashMap();
        StringBuilder sb = new StringBuilder("event_id IN (");
        for (int i = 0; i < arrayListH.size(); i++) {
            sb.append(((ce0) arrayListH.get(i)).a);
            if (i < arrayListH.size() - 1) {
                sb.append(',');
            }
        }
        sb.append(')');
        Cursor cursorQuery = sQLiteDatabase.query("event_metadata", new String[]{"event_id", "name", "value"}, sb.toString(), null, null, null, null);
        while (cursorQuery.moveToNext()) {
            try {
                long j = cursorQuery.getLong(0);
                Set hashSet = (Set) map.get(Long.valueOf(j));
                if (hashSet == null) {
                    hashSet = new HashSet();
                    map.put(Long.valueOf(j), hashSet);
                }
                hashSet.add(new lw6(cursorQuery.getString(1), cursorQuery.getString(2)));
            } catch (Throwable th) {
                cursorQuery.close();
                throw th;
            }
        }
        cursorQuery.close();
        ListIterator listIterator = arrayListH.listIterator();
        while (listIterator.hasNext()) {
            ce0 ce0Var = (ce0) listIterator.next();
            long j2 = ce0Var.a;
            if (map.containsKey(Long.valueOf(j2))) {
                jd0 jd0VarC = ce0Var.c.c();
                for (lw6 lw6Var : (Set) map.get(Long.valueOf(j2))) {
                    jd0VarC.a(lw6Var.a, lw6Var.b);
                }
                listIterator.set(new ce0(j2, ce0Var.b, jd0VarC.b()));
            }
        }
        return arrayListH;
    }

    @Override // defpackage.dv7
    public Object g() {
        fg8 fg8Var = (fg8) this.a;
        Iterable iterable = (Iterable) this.b;
        mw6 mw6Var = fg8Var.c;
        mw6Var.getClass();
        if (!iterable.iterator().hasNext()) {
            return null;
        }
        mw6Var.a().compileStatement("DELETE FROM events WHERE _id in ".concat(mw6.n(iterable))).execute();
        return null;
    }

    @Override // defpackage.g36
    public boolean onMenuItemClick(MenuItem menuItem) {
        wf1 wf1Var = (wf1) this.a;
        dd1 dd1Var = (dd1) this.b;
        if (menuItem.getItemId() != R.id.action_save_settings) {
            return true;
        }
        wf1Var.getClass();
        try {
            wf1Var.a.V("text/plain", dd1Var.getConstant() + "_settings.txt", new v10(dd1Var, 4));
            return true;
        } catch (Exception e) {
            vr6.e$default(vr6.INSTANCE, "CloudInfoCardStorage", "exportSettings", e, null, 8, null);
            return true;
        }
    }
}
