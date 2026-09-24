package com.pcloud.sdk;

import android.app.Activity;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import defpackage.b72;
import defpackage.nz4;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class CustomTabActivity extends Activity {
    public b72 a;

    @Override // android.app.Activity
    public final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 == 0) {
            Intent intent2 = new Intent("CustomTabActivity.CUSTOM_TAB_REDIRECT_ACTION");
            intent2.putExtra("AuthorizationActivity.EXTRA_URL", getIntent().getData());
            nz4.e(this).g(intent2);
            this.a = new b72(this);
            nz4.e(this).f(this.a, new IntentFilter("CustomTabActivity.DESTROY_ACTION"));
        }
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = new Intent(this, (Class<?>) AuthorizationActivity.class);
        intent.setAction("CustomTabActivity.CUSTOM_TAB_REDIRECT_ACTION");
        intent.putExtra("AuthorizationActivity.EXTRA_URL", getIntent().getData());
        intent.addFlags(603979776);
        startActivityForResult(intent, 1338);
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        nz4.e(this).h(this.a);
        super.onDestroy();
    }
}
