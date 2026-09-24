package defpackage;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import com.google.android.gms.tasks.OnFailureListener;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class iz5 implements OnFailureListener, kw6 {
    public final /* synthetic */ long a;
    public final /* synthetic */ Object b;

    public /* synthetic */ iz5(long j, oe0 oe0Var) {
        this.a = j;
        this.b = oe0Var;
    }

    @Override // defpackage.kw6
    public Object apply(Object obj) {
        oe0 oe0Var = (oe0) this.b;
        SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
        ContentValues contentValues = new ContentValues();
        contentValues.put("next_request_ms", Long.valueOf(this.a));
        String str = oe0Var.a;
        d66 d66Var = oe0Var.c;
        if (sQLiteDatabase.update("transport_contexts", contentValues, "backend_name = ? and priority = ?", new String[]{str, String.valueOf(h66.a(d66Var))}) < 1) {
            contentValues.put("backend_name", str);
            contentValues.put("priority", Integer.valueOf(h66.a(d66Var)));
            sQLiteDatabase.insert("transport_contexts", null, contentValues);
        }
        return null;
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public void onFailure(Exception exc) {
        wz5 wz5Var = (wz5) this.b;
        u00 u00Var = wz5Var.y;
        if (this.a != wz5Var.B) {
            u00Var.c("Ignoring getToken error, because this was not the latest attempt.", null, new Object[0]);
            return;
        }
        wz5Var.h = rz5.a;
        u00Var.c("Error fetching token: " + exc, null, new Object[0]);
        wz5Var.o();
    }

    public /* synthetic */ iz5(wz5 wz5Var, long j) {
        this.b = wz5Var;
        this.a = j;
    }
}
