package defpackage;

import android.content.pm.PackageInfo;
import android.webkit.WebView;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class gr8 extends ve {
    @Override // defpackage.bf
    public final boolean b() {
        if (!super.b()) {
            return false;
        }
        WeakHashMap weakHashMap = er8.a;
        PackageInfo currentWebViewPackage = WebView.getCurrentWebViewPackage();
        return currentWebViewPackage != null && jd4.r(currentWebViewPackage) >= 636700000;
    }
}
