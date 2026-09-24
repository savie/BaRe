package defpackage;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;
import org.swiftapps.swiftbackup.settings.appbackuplimits.AppBackupLimitsActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class m9 extends j9 {
    public final /* synthetic */ int a;

    public /* synthetic */ m9(int i) {
        this.a = i;
    }

    @Override // defpackage.j9
    public final Intent createIntent(Context context, Object obj) {
        switch (this.a) {
            case 0:
                Intent intent = (Intent) obj;
                intent.getClass();
                return intent;
            default:
                List list = (List) obj;
                list.getClass();
                Intent intent2 = new Intent(context, (Class<?>) AppBackupLimitsActivity.class);
                intent2.putParcelableArrayListExtra("extra_limits", new ArrayList<>(list));
                return intent2;
        }
    }

    @Override // defpackage.j9
    public final Object parseResult(Intent intent, int i) {
        switch (this.a) {
            case 0:
                return new g9(intent, i);
            default:
                Bundle extras = intent != null ? intent.getExtras() : null;
                ArrayList parcelableArrayList = extras != null ? extras.getParcelableArrayList("extra_limits") : null;
                return parcelableArrayList == null ? ov2.a : parcelableArrayList;
        }
    }
}
