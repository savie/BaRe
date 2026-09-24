package defpackage;

import android.content.Context;
import android.content.Intent;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigSettings;
import org.swiftapps.swiftbackup.settings.RestoreSpecialDataDetailsActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tm6 extends j9 {
    @Override // defpackage.j9
    public final Intent createIntent(Context context, Object obj) {
        ConfigSettings configSettings = (ConfigSettings) obj;
        configSettings.getClass();
        Intent intentPutExtra = new Intent(context, (Class<?>) RestoreSpecialDataDetailsActivity.class).putExtra("extra_config_settings", configSettings);
        intentPutExtra.getClass();
        return intentPutExtra;
    }

    @Override // defpackage.j9
    public final Object parseResult(Intent intent, int i) {
        if (i != -1 || intent == null) {
            return null;
        }
        return (ConfigSettings) intent.getParcelableExtra("extra_config_settings");
    }
}
