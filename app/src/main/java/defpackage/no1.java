package defpackage;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Trace;
import com.nimbusds.jose.shaded.gson.InstanceCreator;
import com.nimbusds.jose.shaded.gson.internal.ObjectConstructor;
import java.lang.reflect.Type;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class no1 implements mo1, ObjectConstructor, dv7 {
    public final /* synthetic */ Object a;
    public final /* synthetic */ Object b;

    public /* synthetic */ no1(Object obj, Object obj2) {
        this.a = obj;
        this.b = obj2;
    }

    @Override // com.nimbusds.jose.shaded.gson.internal.ObjectConstructor
    public Object construct() {
        return ((InstanceCreator) this.a).createInstance((Type) this.b);
    }

    @Override // defpackage.dv7
    public Object g() {
        Boolean bool;
        fg8 fg8Var = (fg8) this.a;
        oe0 oe0Var = (oe0) this.b;
        mw6 mw6Var = fg8Var.c;
        SQLiteDatabase sQLiteDatabaseA = mw6Var.a();
        sQLiteDatabaseA.beginTransaction();
        try {
            Long lB = mw6.b(sQLiteDatabaseA, oe0Var);
            if (lB == null) {
                bool = Boolean.FALSE;
            } else {
                Cursor cursorRawQuery = mw6Var.a().rawQuery("SELECT 1 FROM events WHERE context_id = ? LIMIT 1", new String[]{lB.toString()});
                try {
                    Boolean boolValueOf = Boolean.valueOf(cursorRawQuery.moveToNext());
                    cursorRawQuery.close();
                    bool = boolValueOf;
                } catch (Throwable th) {
                    cursorRawQuery.close();
                    throw th;
                }
            }
            sQLiteDatabaseA.setTransactionSuccessful();
            sQLiteDatabaseA.endTransaction();
            return bool;
        } catch (Throwable th2) {
            sQLiteDatabaseA.endTransaction();
            throw th2;
        }
    }

    @Override // defpackage.mo1
    public Object m(pp0 pp0Var) {
        String str = (String) this.a;
        un1 un1Var = (un1) this.b;
        try {
            Trace.beginSection(str);
            return un1Var.f.m(pp0Var);
        } finally {
            Trace.endSection();
        }
    }
}
