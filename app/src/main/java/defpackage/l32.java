package defpackage;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.CancellationSignal;
import androidx.credentials.playservices.controllers.blockstore.getrestorecredential.CredentialProviderGetRestoreCredentialController;
import com.google.android.gms.tasks.OnFailureListener;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class l32 implements OnFailureListener, kw6 {
    public final /* synthetic */ Object a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ l32(Object obj, Object obj2, Object obj3) {
        this.a = obj;
        this.b = obj2;
        this.c = obj3;
    }

    @Override // defpackage.kw6
    public Object apply(Object obj) {
        mw6 mw6Var = (mw6) this.a;
        HashMap map = (HashMap) this.b;
        x91 x91Var = (x91) this.c;
        ArrayList arrayList = (ArrayList) x91Var.b;
        Cursor cursor = (Cursor) obj;
        mw6Var.getClass();
        while (cursor.moveToNext()) {
            String string = cursor.getString(0);
            int i = cursor.getInt(1);
            c15 c15Var = c15.REASON_UNKNOWN;
            if (i != 0) {
                if (i == 1) {
                    c15Var = c15.MESSAGE_TOO_OLD;
                } else if (i == 2) {
                    c15Var = c15.CACHE_FULL;
                } else if (i == 3) {
                    c15Var = c15.PAYLOAD_TOO_BIG;
                } else if (i == 4) {
                    c15Var = c15.MAX_RETRIES_REACHED;
                } else if (i == 5) {
                    c15Var = c15.INVALID_PAYLOD;
                } else if (i == 6) {
                    c15Var = c15.SERVER_ERROR;
                } else {
                    ly8.o("SQLiteEventStore", "%n is not valid. No matched LogEventDropped-Reason found. Treated it as REASON_UNKNOWN", Integer.valueOf(i));
                }
            }
            long j = cursor.getLong(2);
            if (!map.containsKey(string)) {
                map.put(string, new ArrayList());
            }
            ((List) map.get(string)).add(new d15(j, c15Var));
        }
        for (Map.Entry entry : map.entrySet()) {
            int i2 = f15.c;
            new ArrayList();
            arrayList.add(new f15((String) entry.getKey(), Collections.unmodifiableList((List) entry.getValue())));
        }
        long jE = mw6Var.b.e();
        SQLiteDatabase sQLiteDatabaseA = mw6Var.a();
        sQLiteDatabaseA.beginTransaction();
        try {
            Cursor cursorRawQuery = sQLiteDatabaseA.rawQuery("SELECT last_metrics_upload_ms FROM global_log_event_state LIMIT 1", new String[0]);
            try {
                cursorRawQuery.moveToNext();
                b48 b48Var = new b48(cursorRawQuery.getLong(0), jE);
                cursorRawQuery.close();
                sQLiteDatabaseA.setTransactionSuccessful();
                sQLiteDatabaseA.endTransaction();
                x91Var.a = b48Var;
                x91Var.c = new uy3(new go7(mw6Var.a().compileStatement("PRAGMA page_size").simpleQueryForLong() * mw6Var.a().compileStatement("PRAGMA page_count").simpleQueryForLong(), ld0.f.a));
                x91Var.d = (String) mw6Var.e.get();
                return new y91((b48) x91Var.a, Collections.unmodifiableList(arrayList), (uy3) x91Var.c, (String) x91Var.d);
            } catch (Throwable th) {
                cursorRawQuery.close();
                throw th;
            }
        } catch (Throwable th2) {
            sQLiteDatabaseA.endTransaction();
            throw th2;
        }
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public void onFailure(Exception exc) {
        CredentialProviderGetRestoreCredentialController.invokePlayServices$lambda$2((CancellationSignal) this.a, (Executor) this.b, (t22) this.c, exc);
    }
}
