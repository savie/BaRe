package com.microsoft.identity.common.internal.broker;

import defpackage.fz5;
import defpackage.pe4;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class AuthUxJsonPayload {
    private final String actionComponent;
    private final String actionName;
    private final String correlationId;
    private final AuthUxParams params;

    public AuthUxJsonPayload(String str, String str2, String str3, AuthUxParams authUxParams) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        this.correlationId = str;
        this.actionName = str2;
        this.actionComponent = str3;
        this.params = authUxParams;
    }

    public static /* synthetic */ AuthUxJsonPayload copy$default(AuthUxJsonPayload authUxJsonPayload, String str, String str2, String str3, AuthUxParams authUxParams, int i, Object obj) {
        if ((i & 1) != 0) {
            str = authUxJsonPayload.correlationId;
        }
        if ((i & 2) != 0) {
            str2 = authUxJsonPayload.actionName;
        }
        if ((i & 4) != 0) {
            str3 = authUxJsonPayload.actionComponent;
        }
        if ((i & 8) != 0) {
            authUxParams = authUxJsonPayload.params;
        }
        return authUxJsonPayload.copy(str, str2, str3, authUxParams);
    }

    public final String component1() {
        return this.correlationId;
    }

    public final String component2() {
        return this.actionName;
    }

    public final String component3() {
        return this.actionComponent;
    }

    public final AuthUxParams component4() {
        return this.params;
    }

    public final AuthUxJsonPayload copy(String str, String str2, String str3, AuthUxParams authUxParams) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        return new AuthUxJsonPayload(str, str2, str3, authUxParams);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AuthUxJsonPayload)) {
            return false;
        }
        AuthUxJsonPayload authUxJsonPayload = (AuthUxJsonPayload) obj;
        return pe4.d(this.correlationId, authUxJsonPayload.correlationId) && pe4.d(this.actionName, authUxJsonPayload.actionName) && pe4.d(this.actionComponent, authUxJsonPayload.actionComponent) && pe4.d(this.params, authUxJsonPayload.params);
    }

    public final String getActionComponent() {
        return this.actionComponent;
    }

    public final String getActionName() {
        return this.actionName;
    }

    public final String getCorrelationId() {
        return this.correlationId;
    }

    public final AuthUxParams getParams() {
        return this.params;
    }

    public int hashCode() {
        int iG = fz5.g(fz5.g(this.correlationId.hashCode() * 31, 31, this.actionName), 31, this.actionComponent);
        AuthUxParams authUxParams = this.params;
        return iG + (authUxParams == null ? 0 : authUxParams.hashCode());
    }

    public String toString() {
        return "AuthUxJsonPayload(correlationId=" + this.correlationId + ", actionName=" + this.actionName + ", actionComponent=" + this.actionComponent + ", params=" + this.params + ')';
    }
}
