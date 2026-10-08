package com.microsoft.identity.common.internal.fido;

import com.microsoft.identity.common.java.exception.ClientException;
import defpackage.cu3;
import defpackage.qt3;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class FidoChallenge$Companion$createFromRedirectUri$8 extends cu3 implements qt3 {
    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) throws ClientException {
        FidoRequestField fidoRequestField = (FidoRequestField) obj;
        List list = (List) obj2;
        fidoRequestField.getClass();
        ((FidoChallengeField.Companion) this.receiver).getClass();
        FidoChallengeField.Companion.throwIfInvalidOptionalListParameter(fidoRequestField, list);
        return list;
    }
}
