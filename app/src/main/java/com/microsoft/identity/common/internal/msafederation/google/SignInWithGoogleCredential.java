package com.microsoft.identity.common.internal.msafederation.google;

import com.microsoft.identity.common.internal.msafederation.MsaFederatedCredential;
import defpackage.pe4;
import defpackage.y77;
import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class SignInWithGoogleCredential extends MsaFederatedCredential implements Serializable {

    @y77("idToken")
    private final String idToken;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof SignInWithGoogleCredential) && pe4.d(this.idToken, ((SignInWithGoogleCredential) obj).idToken);
    }

    public final int hashCode() {
        return this.idToken.hashCode();
    }

    public final String toString() {
        return "SignInWithGoogleCredential(idToken=" + this.idToken + ')';
    }
}
