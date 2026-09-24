package com.microsoft.identity.client.helper;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.widget.TextView;
import com.microsoft.identity.common.adal.internal.util.StringExtensions;
import com.microsoft.identity.common.internal.broker.PackageHelper;
import com.microsoft.identity.common.logging.Logger;
import defpackage.eq3;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class BrokerHelperActivity extends Activity {
    TextView mManifest;
    TextView mPackageName;
    TextView mRedirect;
    TextView mSignature;

    private String getSignature() {
        return new PackageHelper(getApplicationContext().getPackageManager()).getSha1SignatureForPackage(getPackageName());
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.broker_helper);
        this.mPackageName = (TextView) findViewById(R.id.txtPackageName);
        this.mSignature = (TextView) findViewById(R.id.txtSignature);
        this.mRedirect = (TextView) findViewById(R.id.txtRedirect);
        this.mManifest = (TextView) findViewById(R.id.txtManifest);
        this.mSignature.append(getSignature());
        TextView textView = this.mRedirect;
        Context applicationContext = getApplicationContext();
        String packageName = getPackageName();
        String sha1SignatureForPackage = new PackageHelper(applicationContext.getPackageManager()).getSha1SignatureForPackage(packageName);
        String str = "";
        if (!StringExtensions.isNullOrBlank(packageName) && !StringExtensions.isNullOrBlank(sha1SignatureForPackage)) {
            try {
                str = "msauth://" + URLEncoder.encode(packageName, "UTF-8") + "/" + URLEncoder.encode(sha1SignatureForPackage, "UTF-8");
            } catch (UnsupportedEncodingException e) {
                int i = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.error("CallerInfo:getBrokerRedirectUrl", "", "Encoding is not supported", e);
            }
        }
        textView.append(str);
        this.mManifest.append(eq3.l("<activity android:name=\"com.microsoft.identity.client.BrowserTabActivity\">\n    <intent-filter>\n        <action android:name=\"android.intent.action.VIEW\" />\n        <category android:name=\"android.intent.category.DEFAULT\" />\n        <category android:name=\"android.intent.category.BROWSABLE\" />\n        <data\n            android:host=\"", getPackageName(), "\"\n            android:path=\"/", getSignature(), "\"\n            android:scheme=\"msauth\" />\n    </intent-filter>\n</activity>"));
        this.mPackageName.append(getPackageName());
    }
}
