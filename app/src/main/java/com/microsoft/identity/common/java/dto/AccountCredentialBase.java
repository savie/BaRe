package com.microsoft.identity.common.java.dto;

import defpackage.f6;
import defpackage.qj4;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AccountCredentialBase implements Cloneable {
    private transient Map<String, qj4> mAdditionalFields = Collections.synchronizedMap(new HashMap());

    public final Object clone() throws CloneNotSupportedException {
        AccountCredentialBase accountCredentialBase = (AccountCredentialBase) super.clone();
        accountCredentialBase.setAdditionalFields(new HashMap(this.mAdditionalFields));
        return accountCredentialBase;
    }

    public final Map<String, qj4> getAdditionalFields() {
        return this.mAdditionalFields;
    }

    public final void mergeAdditionalFields(AccountCredentialBase accountCredentialBase) {
        if (accountCredentialBase == null) {
            f6.n("other is marked non-null but is null");
            return;
        }
        if (this.mAdditionalFields == null) {
            this.mAdditionalFields = Collections.synchronizedMap(new HashMap());
        }
        Map<String, qj4> map = accountCredentialBase.mAdditionalFields;
        if (map != null) {
            for (Map.Entry<String, qj4> entry : map.entrySet()) {
                if (!this.mAdditionalFields.containsKey(entry.getKey())) {
                    this.mAdditionalFields.put(entry.getKey(), entry.getValue());
                }
            }
        }
    }

    public final void setAdditionalFields(Map<String, qj4> map) {
        if (map != null) {
            this.mAdditionalFields = Collections.synchronizedMap(map);
        } else {
            f6.n("additionalFields is marked non-null but is null");
        }
    }

    public String toString() {
        return "AccountCredentialBase{mAdditionalFields=" + this.mAdditionalFields + '}';
    }
}
