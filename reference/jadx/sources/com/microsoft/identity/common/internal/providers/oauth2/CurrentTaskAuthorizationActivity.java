package com.microsoft.identity.common.internal.providers.oauth2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import com.microsoft.identity.common.PropertyBagUtil;
import com.microsoft.identity.common.internal.ui.DualScreenActivity;
import com.microsoft.identity.common.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class CurrentTaskAuthorizationActivity extends DualScreenActivity {
    private boolean mCloseCustomTabs = true;
    private CurrentTaskBrowserAuthorizationFragment mFragment;
    private BroadcastReceiver redirectReceiver;

    @Override // com.microsoft.identity.common.internal.ui.DualScreenActivity, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        AuthorizationFragment authorizationFragmentFromStartIntent = PropertyBagUtil.getAuthorizationFragmentFromStartIntent(getIntent());
        if (!(authorizationFragmentFromStartIntent instanceof CurrentTaskBrowserAuthorizationFragment)) {
            IllegalStateException illegalStateException = new IllegalStateException("Unexpected fragment type");
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.error("CurrentTaskAuthorizationActivity:onCreate", "Fragment provided was not of type CurrentTaskBrowserAuthorizationFragment", illegalStateException);
            throw illegalStateException;
        }
        CurrentTaskBrowserAuthorizationFragment currentTaskBrowserAuthorizationFragment = (CurrentTaskBrowserAuthorizationFragment) authorizationFragmentFromStartIntent;
        this.mFragment = currentTaskBrowserAuthorizationFragment;
        currentTaskBrowserAuthorizationFragment.setInstanceState(getIntent().getExtras());
        boolean zEquals = "redirect_returned_action".equals(getIntent().getAction());
        CurrentTaskBrowserAuthorizationFragment currentTaskBrowserAuthorizationFragment2 = this.mFragment;
        if (zEquals) {
            if (CurrentTaskBrowserAuthorizationFragment.class.isInstance(currentTaskBrowserAuthorizationFragment2)) {
                Bundle bundle2 = new Bundle();
                bundle2.putBoolean("RESPONSE", true);
                this.mFragment.setArguments(bundle2);
                this.mFragment.completeAuthorizationInBrowserFlow(getIntent().getStringExtra("RESPONSE_URI"));
                finish();
                return;
            }
            return;
        }
        setFragment(currentTaskBrowserAuthorizationFragment2);
        if (bundle == null) {
            this.mCloseCustomTabs = false;
            this.redirectReceiver = new BroadcastReceiver() { // from class: com.microsoft.identity.common.internal.providers.oauth2.CurrentTaskAuthorizationActivity.1
                @Override // android.content.BroadcastReceiver
                public final void onReceive(Context context, Intent intent) {
                    CurrentTaskAuthorizationActivity currentTaskAuthorizationActivity = CurrentTaskAuthorizationActivity.this;
                    Intent intent2 = new Intent(currentTaskAuthorizationActivity, (Class<?>) CurrentTaskAuthorizationActivity.class);
                    intent2.setAction("refresh_to_close");
                    intent2.addFlags(603979776);
                    currentTaskAuthorizationActivity.startActivity(intent2);
                }
            };
            IntentFilter intentFilter = new IntentFilter("redirect_returned_action");
            int i2 = Build.VERSION.SDK_INT;
            BroadcastReceiver broadcastReceiver = this.redirectReceiver;
            if (i2 >= 33) {
                registerReceiver(broadcastReceiver, intentFilter, 4);
            } else {
                registerReceiver(broadcastReceiver, intentFilter);
            }
        }
    }

    @Override // defpackage.io1, android.app.Activity
    public final void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if ("refresh_to_close".equals(intent.getAction())) {
            Intent intent2 = new Intent("destroy_redirect_receiving_activity_action");
            intent2.setPackage(getPackageName());
            sendBroadcast(intent2);
            BroadcastReceiver broadcastReceiver = this.redirectReceiver;
            if (broadcastReceiver != null) {
                unregisterReceiver(broadcastReceiver);
            }
            finish();
        }
        setIntent(intent);
    }

    @Override // androidx.fragment.app.u, android.app.Activity
    public final void onResume() {
        super.onResume();
        if ("redirect_returned_action".equals(getIntent().getAction())) {
            Bundle bundle = new Bundle();
            bundle.putBoolean("RESPONSE", true);
            this.mFragment.setArguments(bundle);
            this.mFragment.completeAuthorizationInBrowserFlow(getIntent().getStringExtra("RESPONSE_URI"));
            setResult(-1);
            BroadcastReceiver broadcastReceiver = this.redirectReceiver;
            if (broadcastReceiver != null) {
                unregisterReceiver(broadcastReceiver);
            }
            finish();
        }
        if (this.mCloseCustomTabs) {
            BroadcastReceiver broadcastReceiver2 = this.redirectReceiver;
            if (broadcastReceiver2 != null) {
                unregisterReceiver(broadcastReceiver2);
            }
            finish();
        }
        this.mCloseCustomTabs = true;
    }
}
