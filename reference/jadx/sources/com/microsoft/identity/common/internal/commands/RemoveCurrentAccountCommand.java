package com.microsoft.identity.common.internal.commands;

import com.microsoft.identity.common.java.commands.BaseCommand;
import com.microsoft.identity.common.java.commands.parameters.RemoveAccountCommandParameters;
import com.microsoft.identity.common.java.controllers.BaseController;
import com.microsoft.identity.common.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class RemoveCurrentAccountCommand extends BaseCommand<Boolean> {
    @Override // com.microsoft.identity.common.java.commands.BaseCommand
    public final boolean canEqual(BaseCommand baseCommand) {
        return baseCommand instanceof RemoveCurrentAccountCommand;
    }

    @Override // com.microsoft.identity.common.java.commands.BaseCommand
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof RemoveCurrentAccountCommand) && super.equals(obj);
    }

    @Override // com.microsoft.identity.common.java.commands.BaseCommand
    public final Boolean execute() throws Exception {
        for (BaseController baseController : getControllerFactory().getAllControllers()) {
            String strConcat = "Executing with controller: ".concat(baseController.getClass().getSimpleName());
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.verbose("RemoveCurrentAccountCommand:execute", strConcat);
            if (baseController.removeCurrentAccount((RemoveAccountCommandParameters) getParameters())) {
                return Boolean.TRUE;
            }
        }
        return Boolean.FALSE;
    }
}
