package defpackage;

import android.app.ActivityManager;
import android.content.Context;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ac5 {
    public final Context a;
    public final ActivityManager b;
    public final nh c;
    public final float d;

    public ac5(Context context) {
        this.d = 1.0f;
        this.a = context;
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        this.b = activityManager;
        this.c = new nh(context.getResources().getDisplayMetrics(), 8);
        if (activityManager.isLowRamDevice()) {
            this.d = 0.0f;
        }
    }
}
