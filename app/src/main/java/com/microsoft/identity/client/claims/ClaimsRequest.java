package com.microsoft.identity.client.claims;

import com.google.gson.a;
import defpackage.t14;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ClaimsRequest {
    public static final String ACCESS_TOKEN = "access_token";
    public static final String ID_TOKEN = "id_token";
    public static final String USERINFO = "userinfo";
    private List<RequestedClaim> mUserInfoClaimsRequested = new ArrayList();
    private List<RequestedClaim> mAccessTokenClaimsRequested = new ArrayList();
    private List<RequestedClaim> mIdTokenClaimsRequested = new ArrayList();

    private static ClaimsRequest deserializeClaimsRequest(String str) {
        t14 t14Var = new t14();
        t14Var.c(new ClaimsRequestDeserializer(), ClaimsRequest.class);
        return (ClaimsRequest) new a(t14Var).c(str, ClaimsRequest.class);
    }

    public static ClaimsRequest getClaimsRequestFromJsonString(String str) {
        return deserializeClaimsRequest(str);
    }

    public static String getJsonStringFromClaimsRequest(ClaimsRequest claimsRequest) {
        return serializeClaimsRequest(claimsRequest);
    }

    private void requestClaimIn(List<RequestedClaim> list, String str, RequestedClaimAdditionalInformation requestedClaimAdditionalInformation) {
        RequestedClaim requestedClaim = new RequestedClaim();
        requestedClaim.setName(str);
        requestedClaim.setAdditionalInformation(requestedClaimAdditionalInformation);
        list.add(requestedClaim);
    }

    private static String serializeClaimsRequest(ClaimsRequest claimsRequest) {
        t14 t14Var = new t14();
        ClaimsRequestSerializer claimsRequestSerializer = new ClaimsRequestSerializer();
        RequestClaimAdditionalInformationSerializer requestClaimAdditionalInformationSerializer = new RequestClaimAdditionalInformationSerializer();
        t14Var.c(claimsRequestSerializer, ClaimsRequest.class);
        t14Var.c(requestClaimAdditionalInformationSerializer, RequestedClaimAdditionalInformation.class);
        t14Var.e = true;
        a aVar = new a(t14Var);
        if (claimsRequest != null) {
            return aVar.i(claimsRequest);
        }
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ClaimsRequest)) {
            return false;
        }
        ClaimsRequest claimsRequest = (ClaimsRequest) obj;
        List<RequestedClaim> list = this.mUserInfoClaimsRequested;
        List<RequestedClaim> list2 = claimsRequest.mUserInfoClaimsRequested;
        if (list == null ? list2 != null : !list.equals(list2)) {
            return false;
        }
        List<RequestedClaim> list3 = this.mAccessTokenClaimsRequested;
        List<RequestedClaim> list4 = claimsRequest.mAccessTokenClaimsRequested;
        if (list3 == null ? list4 != null : !list3.equals(list4)) {
            return false;
        }
        List<RequestedClaim> list5 = this.mIdTokenClaimsRequested;
        List<RequestedClaim> list6 = claimsRequest.mIdTokenClaimsRequested;
        if (list5 != null) {
            return list5.equals(list6);
        }
        return list6 == null;
    }

    public List<RequestedClaim> getAccessTokenClaimsRequested() {
        return this.mAccessTokenClaimsRequested;
    }

    public List<RequestedClaim> getIdTokenClaimsRequested() {
        return this.mIdTokenClaimsRequested;
    }

    public List<RequestedClaim> getUserInfoClaimsRequested() {
        return this.mUserInfoClaimsRequested;
    }

    public int hashCode() {
        List<RequestedClaim> list = this.mUserInfoClaimsRequested;
        int iHashCode = (list != null ? list.hashCode() : 0) * 31;
        List<RequestedClaim> list2 = this.mAccessTokenClaimsRequested;
        int iHashCode2 = (iHashCode + (list2 != null ? list2.hashCode() : 0)) * 31;
        List<RequestedClaim> list3 = this.mIdTokenClaimsRequested;
        return iHashCode2 + (list3 != null ? list3.hashCode() : 0);
    }

    public void requestClaimInAccessToken(String str, RequestedClaimAdditionalInformation requestedClaimAdditionalInformation) {
        requestClaimIn(this.mAccessTokenClaimsRequested, str, requestedClaimAdditionalInformation);
    }

    public void requestClaimInIdToken(String str, RequestedClaimAdditionalInformation requestedClaimAdditionalInformation) {
        requestClaimIn(this.mIdTokenClaimsRequested, str, requestedClaimAdditionalInformation);
    }

    public void requestClaimInUserInfo(String str, RequestedClaimAdditionalInformation requestedClaimAdditionalInformation) {
        requestClaimIn(this.mUserInfoClaimsRequested, str, requestedClaimAdditionalInformation);
    }
}
