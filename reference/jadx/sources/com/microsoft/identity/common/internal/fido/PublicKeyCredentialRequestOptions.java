package com.microsoft.identity.common.internal.fido;

import defpackage.oi4;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class PublicKeyCredentialRequestOptions {

    @oi4(name = "allowCredentials")
    public final List<PublicKeyCredentialDescriptor> allowCredentials;

    @oi4(name = "challenge")
    public final String challenge;

    @oi4(name = "rpId")
    public final String rpId;

    @oi4(name = "userVerification")
    public final String userVerification;

    public PublicKeyCredentialRequestOptions(String str, String str2, ArrayList arrayList, String str3) {
        this.challenge = str;
        this.rpId = str2;
        this.allowCredentials = arrayList;
        this.userVerification = str3;
    }
}
