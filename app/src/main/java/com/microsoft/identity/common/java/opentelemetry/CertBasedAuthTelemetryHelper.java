package com.microsoft.identity.common.java.opentelemetry;

import com.microsoft.identity.common.PropertyBagUtil;
import com.microsoft.identity.common.java.logging.LibraryInfoHelper;
import defpackage.f6;
import defpackage.r86;
import defpackage.rj7;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class CertBasedAuthTelemetryHelper {
    private final r86 mSpan;

    public CertBasedAuthTelemetryHelper(rj7 rj7Var) {
        if (rj7Var != null) {
            this.mSpan = PropertyBagUtil.createSpanFromParent("CertBasedAuth", rj7Var);
        } else {
            f6.n("spanContext is marked non-null but is null");
            throw null;
        }
    }

    public final void setCertBasedAuthChallengeHandler(String str) {
        this.mSpan.getClass();
    }

    public final void setExistingPivProviderPresent(boolean z) {
        this.mSpan.getClass();
    }

    public final void setPublicKeyAlgoType(String str) {
        if (str != null) {
            this.mSpan.getClass();
        } else {
            f6.n("type is marked non-null but is null");
        }
    }

    public final void setResultFailure(String str) {
        if (str != null) {
            this.mSpan.getClass();
        } else {
            f6.n("message is marked non-null but is null");
        }
    }

    public final void setResultSuccess() {
        this.mSpan.getClass();
    }

    public final void setUserChoice(CertBasedAuthChoice certBasedAuthChoice) {
        int iOrdinal = certBasedAuthChoice.ordinal();
        r86 r86Var = this.mSpan;
        if (iOrdinal == 0) {
            r86Var.getClass();
        } else if (iOrdinal != 1) {
            r86Var.getClass();
        } else {
            r86Var.getClass();
        }
    }

    public final void setResultFailure(Exception exc) {
        this.mSpan.getClass();
    }

    public CertBasedAuthTelemetryHelper() {
        this.mSpan = LibraryInfoHelper.createSpan("CertBasedAuth");
    }
}
