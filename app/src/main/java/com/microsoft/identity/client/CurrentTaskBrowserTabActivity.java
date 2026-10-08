package com.microsoft.identity.client;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import com.microsoft.identity.common.internal.providers.oauth2.CurrentTaskAuthorizationActivity;
import com.microsoft.identity.common.internal.util.GzipUtil;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class CurrentTaskBrowserTabActivity extends Activity {
    private BroadcastReceiver mCloseBroadcastReceiver;

    @Override // android.app.Activity
    public final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 == 0) {
            Intent intent2 = new Intent("redirect_returned_action");
            intent2.setPackage(getPackageName());
            sendBroadcast(intent2);
            this.mCloseBroadcastReceiver = new BroadcastReceiver() { // from class: com.microsoft.identity.client.CurrentTaskBrowserTabActivity.1
                @Override // android.content.BroadcastReceiver
                public final void onReceive(Context context, Intent intent3) {
                    CurrentTaskBrowserTabActivity currentTaskBrowserTabActivity = CurrentTaskBrowserTabActivity.this;
                    PackageManager packageManager = currentTaskBrowserTabActivity.getApplicationContext().getPackageManager();
                    boolean z = false;
                    try {
                        ComponentName componentName = currentTaskBrowserTabActivity.getComponentName();
                        ActivityInfo activityInfo = componentName != null ? packageManager.getActivityInfo(componentName, 0) : null;
                        if (activityInfo == null || activityInfo.taskAffinity == null) {
                            z = true;
                        }
                    } catch (PackageManager.NameNotFoundException unused) {
                        String str = "Package name not found for: " + currentTaskBrowserTabActivity.getComponentName();
                        int i3 = com.microsoft.identity.common.logging.Logger.a;
                        com.microsoft.identity.common.java.logging.Logger.warn("CurrentTaskBrowserTabActivity:onActivityResult", null, str);
                    }
                    currentTaskBrowserTabActivity.finishActivity(2);
                    if (z) {
                        currentTaskBrowserTabActivity.finishAndRemoveTask();
                    } else {
                        currentTaskBrowserTabActivity.finish();
                    }
                }
            };
            IntentFilter intentFilter = new IntentFilter("destroy_redirect_receiving_activity_action");
            int i3 = Build.VERSION.SDK_INT;
            BroadcastReceiver broadcastReceiver = this.mCloseBroadcastReceiver;
            if (i3 >= 33) {
                registerReceiver(broadcastReceiver, intentFilter, 4);
            } else {
                registerReceiver(broadcastReceiver, intentFilter);
            }
        }
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String dataString = getIntent().getDataString();
        if (bundle != null || getIntent() == null || GzipUtil.isEmpty(getIntent().getDataString())) {
            return;
        }
        Intent intent = new Intent(this, (Class<?>) CurrentTaskAuthorizationActivity.class);
        intent.setAction("redirect_returned_action");
        intent.addFlags(1677721600);
        intent.putExtra("RESPONSE_URI", dataString);
        startActivityForResult(intent, 2);
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        BroadcastReceiver broadcastReceiver = this.mCloseBroadcastReceiver;
        if (broadcastReceiver != null) {
            try {
                unregisterReceiver(broadcastReceiver);
            } catch (Exception e) {
                String str = "Failed to unregister receiver: " + e.getMessage();
                int i = com.microsoft.identity.common.logging.Logger.a;
                com.microsoft.identity.common.java.logging.Logger.error("CurrentTaskBrowserTabActivity:onDestroy", str, e);
            }
        }
        super.onDestroy();
    }
}
