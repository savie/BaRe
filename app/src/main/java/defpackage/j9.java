package defpackage;

import android.content.Context;
import android.content.Intent;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class j9 {
    public abstract Intent createIntent(Context context, Object obj);

    public i9 getSynchronousResult(Context context, Object obj) {
        return null;
    }

    public abstract Object parseResult(Intent intent, int i);
}
