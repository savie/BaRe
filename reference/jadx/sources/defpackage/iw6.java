package defpackage;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class iw6 implements kw6, dv7 {
    public final /* synthetic */ long a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ iw6(Object obj, long j, Object obj2) {
        this.b = obj;
        this.c = obj2;
        this.a = j;
    }

    @Override // defpackage.kw6
    public Object apply(Object obj) {
        String str = (String) this.b;
        SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
        int i = ((c15) this.c).a;
        Cursor cursorRawQuery = sQLiteDatabase.rawQuery("SELECT 1 FROM log_event_dropped WHERE log_source = ? AND reason = ?", new String[]{str, Integer.toString(i)});
        try {
            boolean z = cursorRawQuery.getCount() > 0;
            cursorRawQuery.close();
            long j = this.a;
            if (z) {
                sQLiteDatabase.execSQL(fz5.m("UPDATE log_event_dropped SET events_dropped_count = events_dropped_count + ", " WHERE log_source = ? AND reason = ?", j), new String[]{str, Integer.toString(i)});
                return null;
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("log_source", str);
            contentValues.put("reason", Integer.valueOf(i));
            contentValues.put("events_dropped_count", Long.valueOf(j));
            sQLiteDatabase.insert("log_event_dropped", null, contentValues);
            return null;
        } catch (Throwable th) {
            cursorRawQuery.close();
            throw th;
        }
    }

    @Override // defpackage.dv7
    public Object g() {
        fg8 fg8Var = (fg8) this.b;
        oe0 oe0Var = (oe0) this.c;
        mw6 mw6Var = fg8Var.c;
        long jE = fg8Var.g.e() + this.a;
        mw6Var.getClass();
        mw6Var.g(new iz5(jE, oe0Var));
        return null;
    }
}
