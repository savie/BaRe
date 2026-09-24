package com.microsoft.identity.client.claims;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class RequestedClaim {
    private RequestedClaimAdditionalInformation mInformation;
    private String mName;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RequestedClaim)) {
            return false;
        }
        RequestedClaim requestedClaim = (RequestedClaim) obj;
        if (!this.mName.equals(requestedClaim.mName)) {
            return false;
        }
        RequestedClaimAdditionalInformation requestedClaimAdditionalInformation = this.mInformation;
        RequestedClaimAdditionalInformation requestedClaimAdditionalInformation2 = requestedClaim.mInformation;
        if (requestedClaimAdditionalInformation != null) {
            return requestedClaimAdditionalInformation.equals(requestedClaimAdditionalInformation2);
        }
        return requestedClaimAdditionalInformation2 == null;
    }

    public final RequestedClaimAdditionalInformation getAdditionalInformation() {
        return this.mInformation;
    }

    public final String getName() {
        return this.mName;
    }

    public final int hashCode() {
        int iHashCode = this.mName.hashCode() * 31;
        RequestedClaimAdditionalInformation requestedClaimAdditionalInformation = this.mInformation;
        return iHashCode + (requestedClaimAdditionalInformation != null ? requestedClaimAdditionalInformation.hashCode() : 0);
    }

    public final void setAdditionalInformation(RequestedClaimAdditionalInformation requestedClaimAdditionalInformation) {
        this.mInformation = requestedClaimAdditionalInformation;
    }

    public final void setName(String str) {
        this.mName = str;
    }
}
