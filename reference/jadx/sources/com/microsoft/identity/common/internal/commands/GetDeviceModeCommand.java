package com.microsoft.identity.common.internal.commands;

import com.microsoft.identity.common.java.commands.BaseCommand;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class GetDeviceModeCommand extends BaseCommand<Boolean> {
    @Override // com.microsoft.identity.common.java.commands.BaseCommand
    public final boolean canEqual(BaseCommand baseCommand) {
        return baseCommand instanceof GetDeviceModeCommand;
    }

    @Override // com.microsoft.identity.common.java.commands.BaseCommand
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof GetDeviceModeCommand) && super.equals(obj);
    }

    @Override // com.microsoft.identity.common.java.commands.BaseCommand
    public final Boolean execute() throws Exception {
        return Boolean.valueOf(getControllerFactory().getDefaultController().getDeviceMode(getParameters()));
    }
}
