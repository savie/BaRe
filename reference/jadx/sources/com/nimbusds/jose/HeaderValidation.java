package com.nimbusds.jose;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
class HeaderValidation {
    private HeaderValidation() {
    }

    public static void ensureDisjoint(Header header, UnprotectedHeader unprotectedHeader) throws IllegalHeaderException {
        if (header == null || unprotectedHeader == null) {
            return;
        }
        Iterator<String> it = unprotectedHeader.getIncludedParams().iterator();
        while (it.hasNext()) {
            if (header.getIncludedParams().contains(it.next())) {
                throw new IllegalHeaderException("The parameters in the protected header and the unprotected header must be disjoint");
            }
        }
    }
}
