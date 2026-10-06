package com.microsoft.identity.client.claims;

import com.google.gson.a;
import com.google.gson.internal.bind.TreeTypeAdapter;
import defpackage.dm4;
import defpackage.fl4;
import defpackage.qj4;
import defpackage.qm4;
import defpackage.z28;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
class ClaimsRequestSerializer implements dm4 {
    public static void addPropertiesToObject(List list, fl4 fl4Var, z28 z28Var) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            RequestedClaim requestedClaim = (RequestedClaim) it.next();
            String name = requestedClaim.getName();
            RequestedClaimAdditionalInformation additionalInformation = requestedClaim.getAdditionalInformation();
            a aVar = ((TreeTypeAdapter) z28Var.b).c;
            aVar.getClass();
            qm4 qm4Var = new qm4();
            aVar.l(additionalInformation, RequestedClaimAdditionalInformation.class, qm4Var);
            fl4Var.p(name, qm4Var.Y());
        }
    }

    @Override // defpackage.dm4
    public final qj4 serialize(Object obj, z28 z28Var) {
        ClaimsRequest claimsRequest = (ClaimsRequest) obj;
        fl4 fl4Var = new fl4();
        fl4 fl4Var2 = new fl4();
        fl4 fl4Var3 = new fl4();
        fl4 fl4Var4 = new fl4();
        addPropertiesToObject(claimsRequest.getAccessTokenClaimsRequested(), fl4Var3, z28Var);
        addPropertiesToObject(claimsRequest.getIdTokenClaimsRequested(), fl4Var4, z28Var);
        addPropertiesToObject(claimsRequest.getUserInfoClaimsRequested(), fl4Var2, z28Var);
        if (fl4Var2.a.d != 0) {
            fl4Var.p(ClaimsRequest.USERINFO, fl4Var2);
        }
        if (fl4Var4.a.d != 0) {
            fl4Var.p(ClaimsRequest.ID_TOKEN, fl4Var4);
        }
        if (fl4Var3.a.d != 0) {
            fl4Var.p(ClaimsRequest.ACCESS_TOKEN, fl4Var3);
        }
        return fl4Var;
    }
}
