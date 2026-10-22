package defpackage;

import android.util.Log;
import com.google.android.gms.tasks.OnSuccessListener;
import com.nimbusds.jose.shaded.gson.internal.ConstructorConstructor;
import com.nimbusds.jose.shaded.gson.internal.ObjectConstructor;
import com.pcloud.sdk.internal.a;
import java.io.IOException;
import java.util.ArrayList;
import okhttp3.Response;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigSettings;
import org.swiftapps.swiftbackup.appconfigs.settings.ConfigSettingsActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class er1 implements h9, ObjectConstructor, ig2, OnSuccessListener, kl5, hm6, ny6 {
    public final /* synthetic */ Object a;

    public /* synthetic */ er1(Object obj) {
        this.a = obj;
    }

    @Override // defpackage.hm6
    public Object a(Response response) throws IOException {
        qf8 qf8Var = (qf8) ((a) this.a).f(response, qf8.class);
        if (!qf8Var.d().isEmpty()) {
            return (aj6) qf8Var.d().get(0);
        }
        y5.m("API uploaded file but did not return remote file data.");
        return null;
    }

    @Override // defpackage.ig2
    public void c(ga6 ga6Var) {
        cz1 cz1Var = (cz1) this.a;
        if (Log.isLoggable("FirebaseCrashlytics", 3)) {
            Log.d("FirebaseCrashlytics", "Crashlytics native component now available.", null);
        }
        cz1Var.b.set((az1) ga6Var.get());
    }

    @Override // com.nimbusds.jose.shaded.gson.internal.ObjectConstructor
    public Object construct() {
        return ConstructorConstructor.lambda$newDefaultConstructor$6((String) this.a);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0052  */
    /* JADX WARN: Code duplicated, block: B:15:0x0056  */
    /* JADX WARN: Code duplicated, block: B:16:0x0061  */
    @Override // defpackage.h9
    public void h(Object obj) {
        String strY0;
        ConfigSettings.ApplyData applyData;
        ConfigSettingsActivity configSettingsActivity = (ConfigSettingsActivity) this.a;
        ArrayList arrayList = (ArrayList) obj;
        int i = ConfigSettingsActivity.V;
        Log.d(configSettingsActivity.r(), "registerForActivityResult=" + (arrayList != null ? el1.Y0(arrayList, null, null, null, null, 63) : null));
        ConfigSettings.ApplyData applyData2 = configSettingsActivity.U().j().getApplyData();
        if (applyData2 == null) {
            if (arrayList != null) {
                strY0 = el1.Y0(arrayList, null, null, null, null, 63);
            } else {
                strY0 = null;
            }
            applyData = new ConfigSettings.ApplyData(strY0);
        } else {
            applyData = applyData2.copy(arrayList != null ? el1.Y0(arrayList, null, null, null, null, 63) : null);
            if (applyData == null) {
                if (arrayList != null) {
                    strY0 = el1.Y0(arrayList, null, null, null, null, 63);
                } else {
                    strY0 = null;
                }
                applyData = new ConfigSettings.ApplyData(strY0);
            }
        }
        configSettingsActivity.U().k(ConfigSettings.copy$default(configSettingsActivity.U().j(), 0, null, ConfigSettings.ApplyData.isValid$default(applyData, false, 1, null) ? applyData : null, null, null, null, null, null, null, null, null, null, null, null, null, null, 65531, null));
    }

    @Override // defpackage.ny6
    public boolean isCancellationRequested() {
        return ((Boolean) ((bt3) ((op3) this.a).p).invoke()).booleanValue();
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public void onSuccess(Object obj) {
        ((x12) this.a).invoke(obj);
    }
}
