package com.microsoft.identity.client;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.widget.Toast;
import com.microsoft.identity.common.internal.providers.oauth2.BrowserAuthorizationFragment;
import com.microsoft.identity.common.internal.util.GzipUtil;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class BrowserTabActivity extends Activity {
    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null || getIntent() == null || GzipUtil.isEmpty(getIntent().getDataString())) {
            return;
        }
        Intent intentCreateCustomTabResponseIntent = BrowserAuthorizationFragment.createCustomTabResponseIntent(this, getIntent().getDataString());
        if (intentCreateCustomTabResponseIntent != null) {
            startActivity(intentCreateCustomTabResponseIntent);
        } else {
            int i = com.microsoft.identity.common.logging.Logger.a;
            com.microsoft.identity.common.java.logging.Logger.warn("BrowserTabActivity:onCreate", "Received NULL response intent. Unable to complete authorization.");
            Toast.makeText(getApplicationContext(), "Unable to complete authorization as there is no interactive call in progress. This can be due to closing the app while the authorization was in process.", 1).show();
        }
        finish();
    }
}
