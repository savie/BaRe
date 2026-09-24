package com.google.android.gms.auth;

import android.content.Intent;
import defpackage.f6;
import defpackage.rz3;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class UserRecoverableAuthException extends rz3 {
    public final Intent a;
    public final int b;

    public UserRecoverableAuthException(int i, Intent intent, String str) {
        super(str);
        this.a = intent;
        if (i == 0) {
            f6.n("null reference");
        }
        this.b = i;
    }
}
