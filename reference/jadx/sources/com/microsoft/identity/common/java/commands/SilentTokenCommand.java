package com.microsoft.identity.common.java.commands;

import com.microsoft.identity.common.PropertyBagUtil;
import com.microsoft.identity.common.java.commands.parameters.SilentTokenCommandParameters;
import com.microsoft.identity.common.java.controllers.BaseController;
import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.exception.UiRequiredException;
import com.microsoft.identity.common.java.logging.Logger;
import com.microsoft.identity.common.java.opentelemetry.SpanExtension;
import com.microsoft.identity.common.java.result.AcquireTokenResult;
import defpackage.qj7;
import defpackage.v57;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class SilentTokenCommand extends TokenCommand {
    @Override // com.microsoft.identity.common.java.commands.BaseCommand
    public final boolean canEqual(BaseCommand baseCommand) {
        return baseCommand instanceof SilentTokenCommand;
    }

    @Override // com.microsoft.identity.common.java.commands.TokenCommand, com.microsoft.identity.common.java.commands.BaseCommand
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof SilentTokenCommand) && super.equals(obj);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:25:0x00c0 A[Catch: all -> 0x00b2, TryCatch #1 {all -> 0x00b2, blocks: (B:3:0x0024, B:5:0x002a, B:31:0x00e4, B:17:0x00b1, B:20:0x00b4, B:23:0x00b8, B:25:0x00c0, B:27:0x00cc, B:29:0x00d8, B:32:0x00e8, B:35:0x00ec, B:38:0x00f7, B:6:0x0033, B:8:0x0070), top: B:48:0x0024, inners: #3, #4 }] */
    /* JADX WARN: Code duplicated, block: B:53:0x00e8 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r6v3, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6 */
    @Override // com.microsoft.identity.common.java.commands.BaseCommand
    public final AcquireTokenResult execute() throws Exception {
        qj7 qj7VarCurrent = SpanExtension.current();
        getParameters().getClass();
        qj7VarCurrent.getClass();
        List<BaseController> allControllers = getControllerFactory().getAllControllers();
        v57 v57VarMakeCurrentSpan = SpanExtension.makeCurrentSpan(qj7VarCurrent);
        AcquireTokenResult acquireTokenResultAcquireTokenSilent = null;
        int i = 0;
        ?? r6 = 0;
        while (i < allControllers.size()) {
            try {
                BaseController baseController = allControllers.get(i);
                baseController.getClass();
                try {
                    Logger.verbose("SilentTokenCommand:execute", "Executing with controller: " + baseController.getClass().getSimpleName());
                    acquireTokenResultAcquireTokenSilent = baseController.acquireTokenSilent((SilentTokenCommandParameters) getParameters());
                    if (acquireTokenResultAcquireTokenSilent.getSucceeded().booleanValue()) {
                        Logger.verbose("SilentTokenCommand:execute", "Executing with controller: " + baseController.getClass().getSimpleName() + ": Succeeded");
                        acquireTokenResultAcquireTokenSilent.getLocalAuthenticationResult().getClass();
                        v57VarMakeCurrentSpan.close();
                        return acquireTokenResultAcquireTokenSilent;
                    }
                    continue;
                } catch (ClientException e) {
                    e = e;
                    if (i == 0) {
                        r6 = e;
                    }
                    if (i + 1 < allControllers.size()) {
                        throw r6;
                    }
                    if (!"invalid_grant".equals(e.getErrorCode()) || "no_tokens_found".equals(e.getErrorCode())) {
                        continue;
                    } else if (!"no_account_found".equals(e.getErrorCode())) {
                        throw r6;
                    }
                } catch (UiRequiredException e2) {
                    e = e2;
                    if (i == 0) {
                        r6 = e;
                    }
                    if (i + 1 < allControllers.size()) {
                        throw r6;
                    }
                    if ("invalid_grant".equals(e.getErrorCode())) {
                        continue;
                    } else {
                        continue;
                    }
                } catch (Throwable th) {
                    if (r6 != 0) {
                        throw r6;
                    }
                    throw th;
                }
                i++;
                r6 = r6;
            } catch (Throwable th2) {
                try {
                    v57VarMakeCurrentSpan.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        }
        if (acquireTokenResultAcquireTokenSilent != null && !acquireTokenResultAcquireTokenSilent.getSucceeded().booleanValue()) {
            PropertyBagUtil.exceptionFromAcquireTokenResult(acquireTokenResultAcquireTokenSilent);
        }
        v57VarMakeCurrentSpan.close();
        return acquireTokenResultAcquireTokenSilent;
    }
}
