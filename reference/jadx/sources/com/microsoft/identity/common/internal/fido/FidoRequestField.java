package com.microsoft.identity.common.internal.fido;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public enum FidoRequestField {
    CHALLENGE("challenge"),
    RELYING_PARTY_IDENTIFIER("relyingPartyIdentifier"),
    USER_VERIFICATION_POLICY("userVerificationPolicy"),
    VERSION("version"),
    SUBMIT_URL("submitUrl"),
    CONTEXT("context"),
    ALLOWED_CREDENTIALS("allowedCredentials"),
    KEY_TYPES("keyTypes");

    private final String fieldName;

    FidoRequestField(String str) {
        this.fieldName = str;
    }

    public final String getFieldName() {
        return this.fieldName;
    }
}
