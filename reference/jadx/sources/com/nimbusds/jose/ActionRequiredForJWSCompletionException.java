package com.nimbusds.jose;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ActionRequiredForJWSCompletionException extends JOSEException {
    private final CompletableJWSObjectSigning completableSigning;
    private final JWSSignerOption option;

    public ActionRequiredForJWSCompletionException(String str, JWSSignerOption jWSSignerOption, CompletableJWSObjectSigning completableJWSObjectSigning) {
        super(str);
        Objects.requireNonNull(jWSSignerOption);
        this.option = jWSSignerOption;
        Objects.requireNonNull(completableJWSObjectSigning);
        this.completableSigning = completableJWSObjectSigning;
    }

    public CompletableJWSObjectSigning getCompletableJWSObjectSigning() {
        return this.completableSigning;
    }

    public JWSSignerOption getTriggeringOption() {
        return this.option;
    }
}
