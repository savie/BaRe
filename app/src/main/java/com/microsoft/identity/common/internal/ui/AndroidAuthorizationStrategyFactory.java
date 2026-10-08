package com.microsoft.identity.common.internal.ui;

import android.app.Activity;
import android.content.Context;
import androidx.fragment.app.o;
import com.microsoft.identity.common.internal.providers.oauth2.AndroidAuthorizationStrategy;
import com.microsoft.identity.common.internal.ui.browser.AndroidBrowserSelector;
import com.microsoft.identity.common.internal.ui.browser.DefaultBrowserAuthorizationStrategy;
import com.microsoft.identity.common.internal.ui.webview.EmbeddedWebViewAuthorizationStrategy;
import com.microsoft.identity.common.java.browser.Browser;
import com.microsoft.identity.common.java.configuration.LibraryConfiguration;
import com.microsoft.identity.common.java.ui.AuthorizationAgent;
import com.microsoft.identity.common.java.ui.BrowserDescriptor;
import com.microsoft.identity.common.logging.Logger;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class AndroidAuthorizationStrategyFactory {
    private final Activity mActivity;
    private final AndroidBrowserSelector mBrowserSelector;
    private final Context mContext;
    private final o mFragment;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public final class AndroidAuthorizationStrategyFactoryBuilder {
        private Activity activity;
        private AndroidBrowserSelector browserSelector;
        private Context context;
        private o fragment;

        public final void activity(Activity activity) {
            this.activity = activity;
        }

        public final void browserSelector(AndroidBrowserSelector androidBrowserSelector) {
            this.browserSelector = androidBrowserSelector;
        }

        public final AndroidAuthorizationStrategyFactory build() {
            return new AndroidAuthorizationStrategyFactory(this.context, this.activity, this.fragment, this.browserSelector);
        }

        public final void context(Context context) {
            this.context = context;
        }

        public final void fragment(o oVar) {
            this.fragment = oVar;
        }

        public final String toString() {
            return "AndroidAuthorizationStrategyFactory.AndroidAuthorizationStrategyFactoryBuilder(context=" + this.context + ", activity=" + this.activity + ", fragment=" + this.fragment + ", browserSelector=" + this.browserSelector + ")";
        }
    }

    public AndroidAuthorizationStrategyFactory(Context context, Activity activity, o oVar, AndroidBrowserSelector androidBrowserSelector) {
        this.mContext = context;
        this.mActivity = activity;
        this.mFragment = oVar;
        this.mBrowserSelector = androidBrowserSelector;
    }

    public final AndroidAuthorizationStrategy getAuthorizationStrategy(AuthorizationAgent authorizationAgent, List list, BrowserDescriptor browserDescriptor) {
        Browser browserSelectBrowser = this.mBrowserSelector.selectBrowser(list, browserDescriptor);
        AuthorizationAgent authorizationAgent2 = AuthorizationAgent.WEBVIEW;
        Activity activity = this.mActivity;
        Context context = this.mContext;
        o oVar = this.mFragment;
        if (authorizationAgent == authorizationAgent2 || browserSelectBrowser == null) {
            String str = "WebView authorization, browser: " + browserSelectBrowser;
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.info("AndroidAuthorizationStrategyFactory:getAuthorizationStrategy", str);
            return new EmbeddedWebViewAuthorizationStrategy(context, activity, oVar);
        }
        int i2 = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.info("AndroidAuthorizationStrategyFactory:getAuthorizationStrategy", "Browser authorization, browser: " + browserSelectBrowser);
        return LibraryConfiguration.getInstance().isAuthorizationInCurrentTask() ? new CurrentTaskBrowserAuthorizationStrategy(context, activity, oVar, browserSelectBrowser) : new DefaultBrowserAuthorizationStrategy(context, activity, oVar, browserSelectBrowser);
    }
}
