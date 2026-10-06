package defpackage;

import android.net.Uri;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.pcloud.sdk.AuthorizationActivity;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class s80 extends WebViewClient {
    public final /* synthetic */ AuthorizationActivity a;

    public s80(AuthorizationActivity authorizationActivity) {
        this.a = authorizationActivity;
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        AuthorizationActivity authorizationActivity = this.a;
        if (authorizationActivity.isFinishing()) {
            return;
        }
        Locale locale = Locale.US;
        StringBuilder sbV = dj7.v("Error while loading url '", str2, "':\n", i, ": ");
        sbV.append(str);
        authorizationActivity.e(h90.d, sbV.toString());
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        Uri url = webResourceRequest.getUrl();
        if (url != null) {
            return shouldOverrideUrlLoading(webView, url.toString());
        }
        return false;
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        Uri uri = AuthorizationActivity.f;
        return this.a.d(str);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        onReceivedError(webView, webResourceError.getErrorCode(), webResourceError.getDescription().toString(), webResourceRequest.getUrl().toString());
    }
}
