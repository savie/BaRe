package defpackage;

import android.content.Intent;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class t04 extends Exception {
    public final Intent a;

    public t04(Intent intent, int i) {
        super("Google Play Services not available");
        this.a = intent;
    }
}
