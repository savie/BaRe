package defpackage;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import org.swiftapps.swiftbackup.home.schedule.ScheduleLabelsSelectActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class t37 extends j9 {
    @Override // defpackage.j9
    public final Intent createIntent(Context context, Object obj) {
        Bundle bundle = (Bundle) obj;
        Intent intent = new Intent(context, (Class<?>) ScheduleLabelsSelectActivity.class);
        if (bundle == null) {
            c6.f("Required value was null.");
            return null;
        }
        Intent intentPutExtras = intent.putExtras(bundle);
        intentPutExtras.getClass();
        return intentPutExtras;
    }

    @Override // defpackage.j9
    public final Object parseResult(Intent intent, int i) {
        if (intent != null) {
            return intent.getStringArrayListExtra("extra_selected_labels");
        }
        return null;
    }
}
