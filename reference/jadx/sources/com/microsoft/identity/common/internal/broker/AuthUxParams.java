package com.microsoft.identity.common.internal.broker;

import defpackage.pe4;
import defpackage.y77;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class AuthUxParams {

    @y77("code_match")
    private final String codeMatch;

    @y77("operation")
    private final String operation;

    @y77("sessionID")
    private final String sessionId;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AuthUxParams)) {
            return false;
        }
        AuthUxParams authUxParams = (AuthUxParams) obj;
        return pe4.d(this.operation, authUxParams.operation) && pe4.d(this.sessionId, authUxParams.sessionId) && pe4.d(this.codeMatch, authUxParams.codeMatch);
    }

    public final String getCodeMatch() {
        return this.codeMatch;
    }

    public final String getOperation() {
        return this.operation;
    }

    public final String getSessionId() {
        return this.sessionId;
    }

    public final int hashCode() {
        String str = this.operation;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.sessionId;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.codeMatch;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        return "AuthUxParams(operation=" + this.operation + ", sessionId=" + this.sessionId + ", codeMatch=" + this.codeMatch + ')';
    }
}
