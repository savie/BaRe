package com.microsoft.identity.common.java.commands;

import com.microsoft.identity.common.PropertyBagUtil;
import com.microsoft.identity.common.java.commands.parameters.InteractiveTokenCommandParameters;
import com.microsoft.identity.common.java.controllers.BaseController;
import com.microsoft.identity.common.java.logging.Logger;
import com.microsoft.identity.common.java.opentelemetry.SpanExtension;
import com.microsoft.identity.common.java.result.AcquireTokenResult;
import com.microsoft.identity.common.java.util.ported.PropertyBag;
import defpackage.qj7;
import defpackage.v57;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class InteractiveTokenCommand extends TokenCommand {
    private BaseController mController;

    @Override // com.microsoft.identity.common.java.commands.BaseCommand
    public final boolean canEqual(BaseCommand baseCommand) {
        return baseCommand instanceof InteractiveTokenCommand;
    }

    @Override // com.microsoft.identity.common.java.commands.TokenCommand, com.microsoft.identity.common.java.commands.BaseCommand
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof InteractiveTokenCommand)) {
            return false;
        }
        InteractiveTokenCommand interactiveTokenCommand = (InteractiveTokenCommand) obj;
        if (!super.equals(obj)) {
            return false;
        }
        BaseController baseController = this.mController;
        BaseController baseController2 = interactiveTokenCommand.mController;
        if (baseController == null) {
            return baseController2 == null;
        }
        return baseController.equals(baseController2);
    }

    @Override // com.microsoft.identity.common.java.commands.BaseCommand
    public final AcquireTokenResult execute() throws Exception {
        qj7 qj7VarCurrent = SpanExtension.current();
        getParameters().getClass();
        qj7VarCurrent.getClass();
        v57 v57VarMakeCurrentSpan = SpanExtension.makeCurrentSpan(qj7VarCurrent);
        try {
            if (!(getParameters() instanceof InteractiveTokenCommandParameters)) {
                throw new IllegalArgumentException("Invalid operation parameters");
            }
            Logger.info("InteractiveTokenCommand:execute", "Executing interactive token command...");
            BaseController defaultController = getControllerFactory().getDefaultController();
            this.mController = defaultController;
            defaultController.getClass();
            AcquireTokenResult acquireTokenResultAcquireToken = this.mController.acquireToken((InteractiveTokenCommandParameters) getParameters());
            if (!acquireTokenResultAcquireToken.getSucceeded().booleanValue()) {
                PropertyBagUtil.exceptionFromAcquireTokenResult(acquireTokenResultAcquireToken);
            }
            v57VarMakeCurrentSpan.close();
            return acquireTokenResultAcquireToken;
        } catch (Throwable th) {
            try {
                v57VarMakeCurrentSpan.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @Override // com.microsoft.identity.common.java.commands.BaseCommand
    public final int hashCode() {
        return (super.hashCode() * 59) + (this.mController == null ? 43 : 1);
    }

    public final void onFinishAuthorizationSession(int i, int i2, PropertyBag propertyBag) {
        this.mController.onFinishAuthorizationSession(i, i2, propertyBag);
    }
}
