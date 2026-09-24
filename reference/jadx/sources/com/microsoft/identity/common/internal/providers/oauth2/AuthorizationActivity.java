package com.microsoft.identity.common.internal.providers.oauth2;

import android.os.Build;
import android.os.Bundle;
import com.microsoft.identity.common.PropertyBagUtil;
import com.microsoft.identity.common.internal.ui.DualScreenActivity;
import com.microsoft.identity.common.internal.util.CommonMoshiJsonAdapter;
import com.microsoft.identity.common.java.exception.TerminalException;
import com.microsoft.identity.common.java.opentelemetry.TextMapPropagatorExtension;
import com.microsoft.identity.common.java.util.StringUtil;
import com.microsoft.identity.common.logging.Logger;
import defpackage.rj7;
import defpackage.t40;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class AuthorizationActivity extends DualScreenActivity {
    private AuthorizationFragment mFragment;
    private t40 mOtelContext;
    private rj7 mSpanContext;

    public final AuthorizationFragment getFragment() {
        return this.mFragment;
    }

    public final t40 getOtelContext() {
        return this.mOtelContext;
    }

    public final rj7 getSpanContext() {
        return this.mSpanContext;
    }

    @Override // com.microsoft.identity.common.internal.ui.DualScreenActivity, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            try {
                String string = extras.getString("serializable_span_context");
                this.mSpanContext = StringUtil.isNullOrEmpty(string) ? null : (rj7) new CommonMoshiJsonAdapter().fromJson(string);
                this.mOtelContext = TextMapPropagatorExtension.extract(Build.VERSION.SDK_INT >= 33 ? (HashMap) extras.getSerializable("otel_context_carrier", HashMap.class) : (HashMap) extras.getSerializable("otel_context_carrier"));
            } catch (TerminalException e) {
                e = e;
                String str = "Exception thrown during extraction: " + e.getMessage();
                int i = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.error("AuthorizationActivity:onCreate", str, e);
            } catch (ClassCastException e2) {
                e = e2;
                String str2 = "Exception thrown during extraction: " + e.getMessage();
                int i2 = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.error("AuthorizationActivity:onCreate", str2, e);
            } catch (NullPointerException e3) {
                e = e3;
                String str3 = "Exception thrown during extraction: " + e.getMessage();
                int i3 = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.error("AuthorizationActivity:onCreate", str3, e);
            }
        }
        AuthorizationFragment authorizationFragmentFromStartIntent = PropertyBagUtil.getAuthorizationFragmentFromStartIntent(getIntent());
        this.mFragment = authorizationFragmentFromStartIntent;
        authorizationFragmentFromStartIntent.setInstanceState(extras);
        setFragment(this.mFragment);
    }
}
