package defpackage;

import android.content.Context;
import android.content.Intent;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class n9 extends j9 {
    @Override // defpackage.j9
    public final Intent createIntent(Context context, Object obj) {
        rd4 rd4Var = (rd4) obj;
        rd4Var.getClass();
        Intent intentPutExtra = new Intent("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST").putExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST", rd4Var);
        intentPutExtra.getClass();
        return intentPutExtra;
    }

    @Override // defpackage.j9
    public final Object parseResult(Intent intent, int i) {
        return new g9(intent, i);
    }
}
