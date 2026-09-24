package com.microsoft.identity.common.internal.fido;

import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.util.UrlUtil;
import defpackage.nq7;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class FidoChallenge {
    private final FidoChallengeField<List<String>> allowedCredentials;
    private final FidoChallengeField<String> challenge;
    private final FidoChallengeField<String> context;
    private final FidoChallengeField<List<String>> keyTypes;
    private final FidoChallengeField<String> relyingPartyIdentifier;
    private final FidoChallengeField<String> submitUrl;
    private final FidoChallengeField<String> userVerificationPolicy;
    private final FidoChallengeField<String> version;

    public FidoChallenge(FidoChallengeField<String> fidoChallengeField, FidoChallengeField<String> fidoChallengeField2, FidoChallengeField<String> fidoChallengeField3, FidoChallengeField<String> fidoChallengeField4, FidoChallengeField<String> fidoChallengeField5, FidoChallengeField<String> fidoChallengeField6, FidoChallengeField<List<String>> fidoChallengeField7, FidoChallengeField<List<String>> fidoChallengeField8) {
        this.challenge = fidoChallengeField;
        this.relyingPartyIdentifier = fidoChallengeField2;
        this.userVerificationPolicy = fidoChallengeField3;
        this.version = fidoChallengeField4;
        this.submitUrl = fidoChallengeField5;
        this.context = fidoChallengeField6;
        this.keyTypes = fidoChallengeField7;
        this.allowedCredentials = fidoChallengeField8;
    }

    public static final FidoChallenge createFromRedirectUri(String str) throws ClientException {
        str.getClass();
        Map<String, String> parameters = UrlUtil.getParameters(str);
        parameters.getClass();
        FidoRequestField fidoRequestField = FidoRequestField.CHALLENGE;
        String str2 = parameters.get(fidoRequestField.getFieldName());
        FidoChallengeField.Companion companion = FidoChallengeField.Companion;
        FidoChallengeField fidoChallengeField = new FidoChallengeField(fidoRequestField, str2, new FidoChallenge$Companion$createFromRedirectUri$1(2, companion, FidoChallengeField.Companion.class, "throwIfInvalidRequiredParameter", "throwIfInvalidRequiredParameter(Lcom/microsoft/identity/common/internal/fido/FidoRequestField;Ljava/lang/String;)Ljava/lang/String;", 0));
        FidoRequestField fidoRequestField2 = FidoRequestField.RELYING_PARTY_IDENTIFIER;
        FidoChallengeField fidoChallengeField2 = new FidoChallengeField(fidoRequestField2, parameters.get(fidoRequestField2.getFieldName()), new FidoChallenge$Companion$createFromRedirectUri$2(2, companion, FidoChallengeField.Companion.class, "throwIfInvalidRelyingPartyIdentifier", "throwIfInvalidRelyingPartyIdentifier(Lcom/microsoft/identity/common/internal/fido/FidoRequestField;Ljava/lang/String;)Ljava/lang/String;", 0));
        FidoRequestField fidoRequestField3 = FidoRequestField.USER_VERIFICATION_POLICY;
        String str3 = parameters.get(fidoRequestField3.getFieldName());
        if (str3 == null) {
            str3 = "required";
        }
        FidoChallengeField fidoChallengeField3 = new FidoChallengeField(fidoRequestField3, str3, new FidoChallenge$Companion$createFromRedirectUri$3(2, companion, FidoChallengeField.Companion.class, "throwIfInvalidRequiredParameter", "throwIfInvalidRequiredParameter(Lcom/microsoft/identity/common/internal/fido/FidoRequestField;Ljava/lang/String;)Ljava/lang/String;", 0));
        FidoRequestField fidoRequestField4 = FidoRequestField.VERSION;
        FidoChallengeField fidoChallengeField4 = new FidoChallengeField(fidoRequestField4, parameters.get(fidoRequestField4.getFieldName()), new FidoChallenge$Companion$createFromRedirectUri$4(2, companion, FidoChallengeField.Companion.class, "throwIfInvalidProtocolVersion", "throwIfInvalidProtocolVersion(Lcom/microsoft/identity/common/internal/fido/FidoRequestField;Ljava/lang/String;)Ljava/lang/String;", 0));
        FidoRequestField fidoRequestField5 = FidoRequestField.SUBMIT_URL;
        FidoChallengeField fidoChallengeField5 = new FidoChallengeField(fidoRequestField5, parameters.get(fidoRequestField5.getFieldName()), new FidoChallenge$Companion$createFromRedirectUri$5(2, companion, FidoChallengeField.Companion.class, "throwIfInvalidSubmitUrl", "throwIfInvalidSubmitUrl(Lcom/microsoft/identity/common/internal/fido/FidoRequestField;Ljava/lang/String;)Ljava/lang/String;", 0));
        FidoRequestField fidoRequestField6 = FidoRequestField.CONTEXT;
        FidoChallengeField fidoChallengeField6 = new FidoChallengeField(fidoRequestField6, parameters.get(fidoRequestField6.getFieldName()), new FidoChallenge$Companion$createFromRedirectUri$6(2, companion, FidoChallengeField.Companion.class, "throwIfInvalidRequiredParameter", "throwIfInvalidRequiredParameter(Lcom/microsoft/identity/common/internal/fido/FidoRequestField;Ljava/lang/String;)Ljava/lang/String;", 0));
        FidoRequestField fidoRequestField7 = FidoRequestField.KEY_TYPES;
        String str4 = parameters.get(fidoRequestField7.getFieldName());
        FidoChallengeField fidoChallengeField7 = new FidoChallengeField(fidoRequestField7, str4 != null ? nq7.x0(str4, new String[]{","}, 6) : null, new FidoChallenge$Companion$createFromRedirectUri$7(2, companion, FidoChallengeField.Companion.class, "throwIfInvalidOptionalListParameter", "throwIfInvalidOptionalListParameter(Lcom/microsoft/identity/common/internal/fido/FidoRequestField;Ljava/util/List;)Ljava/util/List;", 0));
        FidoRequestField fidoRequestField8 = FidoRequestField.ALLOWED_CREDENTIALS;
        String str5 = parameters.get(fidoRequestField8.getFieldName());
        return new FidoChallenge(fidoChallengeField, fidoChallengeField2, fidoChallengeField3, fidoChallengeField4, fidoChallengeField5, fidoChallengeField6, fidoChallengeField7, new FidoChallengeField(fidoRequestField8, str5 != null ? nq7.x0(str5, new String[]{","}, 6) : null, new FidoChallenge$Companion$createFromRedirectUri$8(2, companion, FidoChallengeField.Companion.class, "throwIfInvalidOptionalListParameter", "throwIfInvalidOptionalListParameter(Lcom/microsoft/identity/common/internal/fido/FidoRequestField;Ljava/util/List;)Ljava/util/List;", 0)));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FidoChallenge)) {
            return false;
        }
        FidoChallenge fidoChallenge = (FidoChallenge) obj;
        return this.challenge.equals(fidoChallenge.challenge) && this.relyingPartyIdentifier.equals(fidoChallenge.relyingPartyIdentifier) && this.userVerificationPolicy.equals(fidoChallenge.userVerificationPolicy) && this.version.equals(fidoChallenge.version) && this.submitUrl.equals(fidoChallenge.submitUrl) && this.context.equals(fidoChallenge.context) && this.keyTypes.equals(fidoChallenge.keyTypes) && this.allowedCredentials.equals(fidoChallenge.allowedCredentials);
    }

    public final FidoChallengeField<List<String>> getAllowedCredentials() {
        return this.allowedCredentials;
    }

    public final FidoChallengeField<String> getChallenge() {
        return this.challenge;
    }

    public final FidoChallengeField<String> getContext() {
        return this.context;
    }

    public final FidoChallengeField<List<String>> getKeyTypes() {
        return this.keyTypes;
    }

    public final FidoChallengeField<String> getRelyingPartyIdentifier() {
        return this.relyingPartyIdentifier;
    }

    public final FidoChallengeField<String> getSubmitUrl() {
        return this.submitUrl;
    }

    public final FidoChallengeField<String> getUserVerificationPolicy() {
        return this.userVerificationPolicy;
    }

    public final FidoChallengeField<String> getVersion() {
        return this.version;
    }

    public final int hashCode() {
        return this.allowedCredentials.hashCode() + ((this.keyTypes.hashCode() + ((this.context.hashCode() + ((this.submitUrl.hashCode() + ((this.version.hashCode() + ((this.userVerificationPolicy.hashCode() + ((this.relyingPartyIdentifier.hashCode() + (this.challenge.hashCode() * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "FidoChallenge(challenge=" + this.challenge + ", relyingPartyIdentifier=" + this.relyingPartyIdentifier + ", userVerificationPolicy=" + this.userVerificationPolicy + ", version=" + this.version + ", submitUrl=" + this.submitUrl + ", context=" + this.context + ", keyTypes=" + this.keyTypes + ", allowedCredentials=" + this.allowedCredentials + ')';
    }
}
