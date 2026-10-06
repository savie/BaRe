package com.microsoft.identity.common.internal.providers.oauth2;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.o;
import androidx.fragment.app.z;
import com.microsoft.identity.common.PropertyBagUtil;
import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.providers.RawAuthorizationResult;
import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsAuthorizationRequest;
import com.microsoft.identity.common.java.providers.oauth2.AuthorizationRequest;
import com.microsoft.identity.common.java.providers.oauth2.OAuth2Strategy;
import com.microsoft.identity.common.java.util.ResultFuture;
import defpackage.f6;
import defpackage.q;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AndroidAuthorizationStrategy<GenericOAuth2Strategy extends OAuth2Strategy, GenericAuthorizationRequest extends AuthorizationRequest> {
    private final WeakReference<Activity> mReferencedActivity;
    private final WeakReference<Context> mReferencedApplicationContext;
    private final WeakReference<o> mReferencedFragment;

    public AndroidAuthorizationStrategy(Context context, Activity activity, o oVar) {
        if (context == null) {
            f6.n("applicationContext is marked non-null but is null");
            throw null;
        }
        if (activity == null) {
            f6.n("activity is marked non-null but is null");
            throw null;
        }
        this.mReferencedApplicationContext = new WeakReference<>(context);
        this.mReferencedActivity = new WeakReference<>(activity);
        this.mReferencedFragment = new WeakReference<>(oVar);
    }

    public abstract void completeAuthorization(int i, RawAuthorizationResult rawAuthorizationResult);

    public final Context getApplicationContext() {
        return this.mReferencedApplicationContext.get();
    }

    public final void launchIntent(Intent intent) throws ClientException {
        o oVar = this.mReferencedFragment.get();
        if (oVar == null) {
            Activity activity = this.mReferencedActivity.get();
            if (activity != null) {
                activity.startActivity(intent);
                return;
            } else {
                q.i("null_object", "Referenced activity is null", null);
                return;
            }
        }
        Bundle extras = intent.getExtras();
        extras.getClass();
        AuthorizationFragment authorizationFragmentFromStartIntent = PropertyBagUtil.getAuthorizationFragmentFromStartIntent(intent);
        authorizationFragmentFromStartIntent.setInstanceState(extras);
        z fragmentManager = oVar.getFragmentManager();
        if (fragmentManager == null) {
            q.i("null_object", "Fragment Manager is null", null);
            return;
        }
        androidx.fragment.app.a aVar = new androidx.fragment.app.a(fragmentManager);
        aVar.g(oVar.getId(), authorizationFragmentFromStartIntent, o.class.getName(), 1);
        aVar.e();
    }

    public abstract ResultFuture requestAuthorization(MicrosoftStsAuthorizationRequest microsoftStsAuthorizationRequest, OAuth2Strategy oAuth2Strategy) throws ClientException;
}
