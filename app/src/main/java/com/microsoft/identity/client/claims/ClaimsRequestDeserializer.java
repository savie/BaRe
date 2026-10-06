package com.microsoft.identity.client.claims;

import defpackage.aw4;
import defpackage.el4;
import defpackage.fl4;
import defpackage.fw4;
import defpackage.gl4;
import defpackage.gw4;
import defpackage.iw4;
import defpackage.pj4;
import defpackage.qj4;
import defpackage.z28;
import java.lang.reflect.Type;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
class ClaimsRequestDeserializer implements pj4 {
    private static void addProperties(List list, fl4 fl4Var, z28 z28Var) {
        if (fl4Var == null) {
            return;
        }
        iw4 iw4Var = fl4Var.a;
        Iterator it = ((gw4) iw4Var.keySet()).iterator();
        while (((aw4) it).hasNext()) {
            String str = (String) ((fw4) it).b().f;
            RequestedClaim requestedClaim = new RequestedClaim();
            requestedClaim.setName(str);
            if (!(fl4Var.x(str) instanceof el4)) {
                requestedClaim.setAdditionalInformation((RequestedClaimAdditionalInformation) z28Var.E((fl4) iw4Var.get(str), RequestedClaimAdditionalInformation.class));
            }
            list.add(requestedClaim);
        }
    }

    @Override // defpackage.pj4
    public final Object deserialize(qj4 qj4Var, Type type, z28 z28Var) throws gl4 {
        ClaimsRequest claimsRequest = new ClaimsRequest();
        addProperties(claimsRequest.getAccessTokenClaimsRequested(), (fl4) qj4Var.i().a.get(ClaimsRequest.ACCESS_TOKEN), z28Var);
        addProperties(claimsRequest.getIdTokenClaimsRequested(), (fl4) qj4Var.i().a.get(ClaimsRequest.ID_TOKEN), z28Var);
        addProperties(claimsRequest.getUserInfoClaimsRequested(), (fl4) qj4Var.i().a.get(ClaimsRequest.USERINFO), z28Var);
        return claimsRequest;
    }
}
