package com.google.android.play.core.integrity;

import defpackage.dj7;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class h extends StandardIntegrityManager.StandardIntegrityTokenRequest {
    private final String a;

    public /* synthetic */ h(String str, g gVar) {
        this.a = str;
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityTokenRequest
    public final String a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof StandardIntegrityManager.StandardIntegrityTokenRequest)) {
            return false;
        }
        StandardIntegrityManager.StandardIntegrityTokenRequest standardIntegrityTokenRequest = (StandardIntegrityManager.StandardIntegrityTokenRequest) obj;
        String str = this.a;
        if (str == null) {
            return standardIntegrityTokenRequest.a() == null;
        }
        return str.equals(standardIntegrityTokenRequest.a());
    }

    public final int hashCode() {
        String str = this.a;
        return (str == null ? 0 : str.hashCode()) ^ 1000003;
    }

    public final String toString() {
        return dj7.n(new StringBuilder("StandardIntegrityTokenRequest{requestHash="), this.a, "}");
    }
}
