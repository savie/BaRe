package com.microsoft.identity.client.claims;

import defpackage.dm4;
import defpackage.fl4;
import defpackage.qj4;
import defpackage.xi4;
import defpackage.z28;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
class RequestClaimAdditionalInformationSerializer implements dm4 {
    @Override // defpackage.dm4
    public final qj4 serialize(Object obj, z28 z28Var) {
        RequestedClaimAdditionalInformation requestedClaimAdditionalInformation = (RequestedClaimAdditionalInformation) obj;
        fl4 fl4Var = new fl4();
        fl4Var.s("essential", requestedClaimAdditionalInformation.getEssential());
        if (requestedClaimAdditionalInformation.getValue() != null) {
            fl4Var.u("value", requestedClaimAdditionalInformation.getValue().toString());
        }
        if (requestedClaimAdditionalInformation.getValues().size() > 0) {
            xi4 xi4Var = new xi4();
            Iterator<Object> it = requestedClaimAdditionalInformation.getValues().iterator();
            while (it.hasNext()) {
                xi4Var.s(it.next().toString());
            }
            fl4Var.p("values", xi4Var);
        }
        return fl4Var;
    }
}
