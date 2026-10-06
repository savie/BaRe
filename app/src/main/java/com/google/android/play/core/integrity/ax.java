package com.google.android.play.core.integrity;

import android.content.Context;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class ax {
    private static aw a;

    public static synchronized aw a(Context context) {
        try {
            if (a == null) {
                u uVar = new u(null);
                Context applicationContext = context.getApplicationContext();
                if (applicationContext != null) {
                    context = applicationContext;
                }
                uVar.a(context);
                a = uVar.b();
            }
        } catch (Throwable th) {
            throw th;
        }
        return a;
    }
}
