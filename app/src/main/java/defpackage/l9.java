package defpackage;

import android.content.Context;
import android.content.Intent;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class l9 extends j9 {
    @Override // defpackage.j9
    public final Intent createIntent(Context context, Object obj) {
        String str = (String) obj;
        str.getClass();
        Intent intentPutExtra = new Intent("androidx.activity.result.contract.action.REQUEST_PERMISSIONS").putExtra("androidx.activity.result.contract.extra.PERMISSIONS", new String[]{str});
        intentPutExtra.getClass();
        return intentPutExtra;
    }

    @Override // defpackage.j9
    public final i9 getSynchronousResult(Context context, Object obj) {
        String str = (String) obj;
        str.getClass();
        if (zh8.e(context, str) == 0) {
            return new i9(Boolean.TRUE);
        }
        return null;
    }

    @Override // defpackage.j9
    public final Object parseResult(Intent intent, int i) {
        if (intent == null || i != -1) {
            return Boolean.FALSE;
        }
        int[] intArrayExtra = intent.getIntArrayExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS");
        boolean z = false;
        if (intArrayExtra != null) {
            for (int i2 : intArrayExtra) {
                if (i2 == 0) {
                    z = true;
                    break;
                }
            }
        }
        return Boolean.valueOf(z);
    }
}
