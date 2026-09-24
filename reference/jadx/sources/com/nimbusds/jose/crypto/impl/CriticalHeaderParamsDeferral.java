package com.nimbusds.jose.crypto.impl;

import com.nimbusds.jose.Header;
import com.nimbusds.jose.HeaderParameterNames;
import com.nimbusds.jose.JOSEException;
import com.nimbusds.jose.JWEHeader;
import defpackage.f6;
import java.util.Collections;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class CriticalHeaderParamsDeferral {
    private Set<String> deferredParams = Collections.EMPTY_SET;

    public void ensureHeaderPasses(JWEHeader jWEHeader) throws JOSEException {
        if (headerPasses(jWEHeader)) {
            return;
        }
        f6.j("Unsupported critical header parameter(s)");
    }

    public Set<String> getDeferredCriticalHeaderParams() {
        return Collections.unmodifiableSet(this.deferredParams);
    }

    public Set<String> getProcessedCriticalHeaderParams() {
        return Collections.singleton(HeaderParameterNames.BASE64_URL_ENCODE_PAYLOAD);
    }

    public boolean headerPasses(Header header) {
        if (header.getCriticalParams() == null) {
            return true;
        }
        for (String str : header.getCriticalParams()) {
            if (!getProcessedCriticalHeaderParams().contains(str) && !getDeferredCriticalHeaderParams().contains(str)) {
                return false;
            }
        }
        return true;
    }

    public void setDeferredCriticalHeaderParams(Set<String> set) {
        if (set == null) {
            this.deferredParams = Collections.EMPTY_SET;
        } else {
            this.deferredParams = set;
        }
    }
}
