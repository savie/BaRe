package com.bare.cloud.connect;

import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.net.Uri;
import java.util.List;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import com.bare.R;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

/**
 * P3 reconstruction of the Reference pCloud authentication Activity.
 *
 * Reference starts the pCloud SDK AuthorizationActivity after checking for a
 * browser/custom-tab handler and processes the SDK auth result. BaRe does not
 * currently ship that SDK, so the provider OAuth exchange remains explicitly
 * behind the P3 boundary.
 */
public final class PCloudSignInActivity extends AppCompatActivity {
    private static final int REQUEST_AUTHORIZATION = 1856;

    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.activity_pcloud_authentication);

        if (state == null) {
            checkBrowserAndHandler();
        }
    }

    private void checkBrowserAndHandler() {
        Intent browserProbe = new Intent(Intent.ACTION_VIEW, Uri.parse("https://www.google.com"));
        browserProbe.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        List<ResolveInfo> browsers = getPackageManager().queryIntentActivities(browserProbe, 0);
        if (browsers == null || browsers.isEmpty()) {
            showBoundary(R.string.no_browser_found_error);
            return;
        }

        Intent customTabProbe = new Intent("android.support.customtabs.action.CustomTabsService");
        boolean hasCustomTabHandler = false;
        for (ResolveInfo info : browsers) {
            if (info.activityInfo != null) {
                customTabProbe.setPackage(info.activityInfo.packageName);
                if (getPackageManager().resolveService(customTabProbe, 0) != null) {
                    hasCustomTabHandler = true;
                    break;
                }
            }
        }

        if (!hasCustomTabHandler) {
            showBoundary(R.string.p3_cloud_auth_boundary);
            return;
        }

        // The Reference now starts com.pcloud.sdk.AuthorizationActivity with
        // a provider-generated auth request. That SDK is not part of BaRe yet.
        showBoundary(R.string.p3_cloud_auth_boundary);
    }

    private void showBoundary(int messageRes) {
        new MaterialAlertDialogBuilder(this)
                .setTitle(R.string.pcloud)
                .setMessage(messageRes)
                .setPositiveButton(R.string.close, null)
                .show();
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == REQUEST_AUTHORIZATION) {
            // Reference decodes the pCloud SDK result here and forwards the
            // authorization token to its ViewModel. No equivalent SDK/result
            // contract exists in BaRe, so do not fabricate token handling.
            setResult(RESULT_CANCELED);
            finish();
        }
    }
}