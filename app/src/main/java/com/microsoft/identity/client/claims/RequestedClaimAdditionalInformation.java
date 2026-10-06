package com.microsoft.identity.client.claims;

import defpackage.y77;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class RequestedClaimAdditionalInformation {

    @y77("essential")
    private Boolean mEssential = Boolean.FALSE;

    @y77("values")
    private List<Object> mValues = new ArrayList();

    @y77("value")
    private Object mValue = null;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RequestedClaimAdditionalInformation)) {
            return false;
        }
        RequestedClaimAdditionalInformation requestedClaimAdditionalInformation = (RequestedClaimAdditionalInformation) obj;
        Boolean bool = this.mEssential;
        Boolean bool2 = requestedClaimAdditionalInformation.mEssential;
        if (bool == null ? bool2 != null : !bool.equals(bool2)) {
            return false;
        }
        List<Object> list = this.mValues;
        List<Object> list2 = requestedClaimAdditionalInformation.mValues;
        if (list == null ? list2 != null : !list.equals(list2)) {
            return false;
        }
        Object obj2 = this.mValue;
        Object obj3 = requestedClaimAdditionalInformation.mValue;
        if (obj2 != null) {
            return obj2.equals(obj3);
        }
        return obj3 == null;
    }

    public Boolean getEssential() {
        return this.mEssential;
    }

    public Object getValue() {
        return this.mValue;
    }

    public List<Object> getValues() {
        return this.mValues;
    }

    public int hashCode() {
        Boolean bool = this.mEssential;
        int iHashCode = (bool != null ? bool.hashCode() : 0) * 31;
        List<Object> list = this.mValues;
        int iHashCode2 = (iHashCode + (list != null ? list.hashCode() : 0)) * 31;
        Object obj = this.mValue;
        return iHashCode2 + (obj != null ? obj.hashCode() : 0);
    }

    public void setEssential(Boolean bool) {
        this.mEssential = bool;
    }

    public void setValue(Object obj) {
        this.mValue = obj;
    }

    public void setValues(List<Object> list) {
        this.mValues = list;
    }
}
