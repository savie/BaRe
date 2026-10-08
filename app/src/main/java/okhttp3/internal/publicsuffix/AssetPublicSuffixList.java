package okhttp3.internal.publicsuffix;

import android.content.Context;
import android.content.res.AssetManager;
import android.os.Build;
import defpackage.ij7;
import defpackage.y13;
import defpackage.y5;
import java.io.IOException;
import java.io.InputStream;
import okhttp3.internal.platform.ContextAwarePlatform;
import okhttp3.internal.platform.Platform;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class AssetPublicSuffixList extends BasePublicSuffixList {
    public final String f = "PublicSuffixDatabase.list";

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Companion {
    }

    @Override // okhttp3.internal.publicsuffix.BasePublicSuffixList
    public final ij7 b() throws IOException {
        Platform platform = Platform.a;
        Object obj = Platform.a;
        ContextAwarePlatform contextAwarePlatform = obj != null ? (ContextAwarePlatform) obj : null;
        Context contextB = contextAwarePlatform != null ? contextAwarePlatform.b() : null;
        AssetManager assets = contextB != null ? contextB.getAssets() : null;
        if (assets != null) {
            InputStream inputStreamOpen = assets.open(this.f);
            inputStreamOpen.getClass();
            return y13.G(inputStreamOpen);
        }
        if (Build.FINGERPRINT == null) {
            y5.m("Platform applicationContext not initialized. Possibly running Android unit test without Robolectric. Android tests should run with Robolectric and call OkHttp.initialize before test");
            return null;
        }
        y5.m("Platform applicationContext not initialized. Startup Initializer possibly disabled, call OkHttp.initialize before test.");
        return null;
    }
}
