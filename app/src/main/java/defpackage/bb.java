package defpackage;

import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import com.google.android.gms.tasks.OnSuccessListener;
import com.pcloud.sdk.internal.a;
import java.util.ArrayList;
import java.util.List;
import okhttp3.Response;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigSettings;
import org.swiftapps.swiftbackup.settings.MultipleBackupStrategy;
import org.swiftapps.swiftbackup.settings.b;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class bb implements h9, OnSuccessListener, du7, hm6, ny6, dv7 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ bb(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.hm6
    public Object a(Response response) {
        gw3 gw3Var = (gw3) ((a) this.b).e(response, gw3.class);
        return Boolean.valueOf(gw3Var.c() && gw3Var.d() != null);
    }

    @Override // defpackage.du7
    public void b() {
        ((kp3) this.b).m().j(true, true);
    }

    public void c(q qVar) {
        db dbVar = (db) this.b;
        synchronized (dbVar) {
            ((ArrayList) dbVar.b).add(qVar);
            Object obj = dbVar.c;
            if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                Log.d("FirebaseCrashlytics", "Could not register handler for breadcrumbs events.", null);
            }
        }
    }

    @Override // defpackage.dv7
    public Object g() {
        mw6 mw6Var = ((fg8) this.b).i;
        SQLiteDatabase sQLiteDatabaseA = mw6Var.a();
        sQLiteDatabaseA.beginTransaction();
        try {
            sQLiteDatabaseA.compileStatement("DELETE FROM log_event_dropped").execute();
            sQLiteDatabaseA.compileStatement("UPDATE global_log_event_state SET last_metrics_upload_ms=" + mw6Var.b.e()).execute();
            sQLiteDatabaseA.setTransactionSuccessful();
            return null;
        } finally {
            sQLiteDatabaseA.endTransaction();
        }
    }

    @Override // defpackage.h9
    public void h(Object obj) {
        int i = this.a;
        Object obj2 = this.b;
        switch (i) {
            case 1:
                org.swiftapps.swiftbackup.settings.a aVar = (org.swiftapps.swiftbackup.settings.a) obj2;
                List list = (List) obj;
                list.getClass();
                if (!list.isEmpty()) {
                    Log.d("AppSettingsFragment", "registerForActivityResult=" + list);
                    ok.e(list);
                    aVar.t();
                }
                break;
            default:
                lr1 lr1Var = (lr1) obj2;
                MultipleBackupStrategy multipleBackupStrategy = (MultipleBackupStrategy) obj;
                if (multipleBackupStrategy != null) {
                    ConfigSettings configSettingsJ = lr1Var.r().j();
                    MultipleBackupStrategy.Companion.getClass();
                    if (multipleBackupStrategy.equals(b.a())) {
                        multipleBackupStrategy = null;
                    }
                    lr1Var.r().k(ConfigSettings.copy$default(configSettingsJ, 0, null, null, null, null, null, null, null, multipleBackupStrategy, null, null, null, null, null, null, null, 65279, null));
                }
                break;
        }
    }

    @Override // defpackage.ny6
    public boolean isCancellationRequested() {
        return ((Boolean) ((bt3) ((jd0) this.b).p).invoke()).booleanValue();
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public void onSuccess(Object obj) {
        ((n32) this.b).invoke(obj);
    }
}
