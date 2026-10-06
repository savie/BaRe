package com.microsoft.identity.common.internal.commands;

import com.microsoft.identity.common.java.cache.ICacheRecord;
import com.microsoft.identity.common.java.commands.BaseCommand;
import com.microsoft.identity.common.java.controllers.BaseController;
import com.microsoft.identity.common.java.logging.Logger;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class GetCurrentAccountCommand extends BaseCommand<List<ICacheRecord>> {
    @Override // com.microsoft.identity.common.java.commands.BaseCommand
    public final boolean canEqual(BaseCommand baseCommand) {
        return baseCommand instanceof GetCurrentAccountCommand;
    }

    @Override // com.microsoft.identity.common.java.commands.BaseCommand
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof GetCurrentAccountCommand) && super.equals(obj);
    }

    @Override // com.microsoft.identity.common.java.commands.BaseCommand
    public final List<ICacheRecord> execute() throws Exception {
        ArrayList arrayList = new ArrayList();
        List<BaseController> allControllers = getControllerFactory().getAllControllers();
        for (int i = 0; i < allControllers.size(); i++) {
            BaseController baseController = allControllers.get(i);
            Logger.verbose("GetCurrentAccountCommand:execute", "Executing with controller: ".concat(baseController.getClass().getSimpleName()));
            arrayList.addAll(baseController.getCurrentAccount(getParameters()));
        }
        return arrayList;
    }
}
