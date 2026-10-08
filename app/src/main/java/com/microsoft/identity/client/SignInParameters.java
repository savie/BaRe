package com.microsoft.identity.client;

import android.app.Activity;
import defpackage.f6;
import defpackage.ut5;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class SignInParameters {
    private final Activity activity;
    private final AuthenticationCallback callback;
    private final List<String> scopes;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    /* JADX INFO: loaded from: classes2.dex */
    public final class SignInParametersBuilder {
        private Activity activity;
        private ut5 callback;
        private ArrayList<String> scopes;

        public final SignInParameters build() {
            List listUnmodifiableList;
            ArrayList<String> arrayList = this.scopes;
            int size = arrayList == null ? 0 : arrayList.size();
            if (size != 0) {
                listUnmodifiableList = size != 1 ? Collections.unmodifiableList(new ArrayList(this.scopes)) : Collections.singletonList(this.scopes.get(0));
            } else {
                listUnmodifiableList = Collections.EMPTY_LIST;
            }
            return new SignInParameters(this.activity, listUnmodifiableList, this.callback);
        }

        public final String toString() {
            return "SignInParameters.SignInParametersBuilder(activity=" + this.activity + ", loginHint=null, scopes=" + this.scopes + ", prompt=null, callback=" + this.callback + ")";
        }

        public final void withActivity(Activity activity) {
            this.activity = activity;
        }

        public final void withCallback(ut5 ut5Var) {
            this.callback = ut5Var;
        }

        public final void withScopes(List list) {
            if (this.scopes == null) {
                this.scopes = new ArrayList<>();
            }
            this.scopes.addAll(list);
        }
    }

    public SignInParameters(Activity activity, List list, ut5 ut5Var) {
        if (activity == null) {
            f6.n("activity is marked non-null but is null");
            throw null;
        }
        if (list == null) {
            f6.n("scopes is marked non-null but is null");
            throw null;
        }
        if (ut5Var == null) {
            f6.n("callback is marked non-null but is null");
            throw null;
        }
        this.activity = activity;
        this.scopes = list;
        this.callback = ut5Var;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SignInParameters)) {
            return false;
        }
        SignInParameters signInParameters = (SignInParameters) obj;
        Activity activity = signInParameters.activity;
        Activity activity2 = this.activity;
        if (activity2 != null ? !activity2.equals(activity) : activity != null) {
            return false;
        }
        List<String> list = signInParameters.scopes;
        List<String> list2 = this.scopes;
        if (list2 != null ? !list2.equals(list) : list != null) {
            return false;
        }
        AuthenticationCallback authenticationCallback = signInParameters.callback;
        AuthenticationCallback authenticationCallback2 = this.callback;
        return authenticationCallback2 != null ? authenticationCallback2.equals(authenticationCallback) : authenticationCallback == null;
    }

    public final Activity getActivity() {
        return this.activity;
    }

    public final AuthenticationCallback getCallback() {
        return this.callback;
    }

    public final List<String> getScopes() {
        return this.scopes;
    }

    public final int hashCode() {
        Activity activity = this.activity;
        int iHashCode = ((((activity == null ? 43 : activity.hashCode()) + 59) * 59) + 43) * 59;
        List<String> list = this.scopes;
        int iHashCode2 = (((iHashCode + (list == null ? 43 : list.hashCode())) * 59) + 43) * 59;
        AuthenticationCallback authenticationCallback = this.callback;
        return iHashCode2 + (authenticationCallback != null ? authenticationCallback.hashCode() : 43);
    }

    public final String toString() {
        return "SignInParameters(activity=" + this.activity + ", loginHint=null, scopes=" + this.scopes + ", prompt=null, callback=" + this.callback + ")";
    }
}
