package com.google.firebase.crashlytics.ndk;

import android.content.Context;
import defpackage.ca3;
import defpackage.jm1;
import defpackage.mo1;
import defpackage.pp0;
import defpackage.t02;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements mo1 {
    @Override // defpackage.mo1
    public final Object m(pp0 pp0Var) {
        Context context = (Context) pp0Var.b(Context.class);
        FirebaseCrashlyticsNdk firebaseCrashlyticsNdk = new FirebaseCrashlyticsNdk(new t02(context, new JniNativeApi(context), new ca3(context)), !(jm1.s(context, "com.google.firebase.crashlytics.unity_version", "string") != 0));
        FirebaseCrashlyticsNdk.e = firebaseCrashlyticsNdk;
        return firebaseCrashlyticsNdk;
    }
}
