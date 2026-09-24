package com.microsoft.identity.common.internal.fido;

import com.microsoft.identity.common.java.exception.ClientException;
import defpackage.cu3;
import defpackage.q;
import defpackage.qt3;
import java.net.MalformedURLException;
import java.net.URL;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class FidoChallenge$Companion$createFromRedirectUri$5 extends cu3 implements qt3 {
    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) throws ClientException {
        FidoRequestField fidoRequestField = (FidoRequestField) obj;
        String str = (String) obj2;
        fidoRequestField.getClass();
        ((FidoChallengeField.Companion) this.receiver).getClass();
        FidoChallengeField.Companion.throwIfInvalidRequiredParameter(fidoRequestField, str);
        try {
            new URL(str);
            return str;
        } catch (MalformedURLException unused) {
            q.i("passkey_protocol_request_parsing_error", "submitUrl value is malformed.", null);
            return null;
        }
    }
}
