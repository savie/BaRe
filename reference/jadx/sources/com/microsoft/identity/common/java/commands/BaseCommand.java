package com.microsoft.identity.common.java.commands;

import com.microsoft.identity.client.internal.controllers.MSALControllerFactory;
import com.microsoft.identity.common.java.commands.parameters.CommandParameters;
import defpackage.f6;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class BaseCommand<T> {
    private final CommandCallback callback;
    private final MSALControllerFactory controllerFactory;
    private final CommandParameters parameters;
    private final String publicApiId;

    public BaseCommand(CommandParameters commandParameters, MSALControllerFactory mSALControllerFactory, CommandCallback commandCallback, String str) {
        if (commandParameters == null) {
            f6.n("parameters is marked non-null but is null");
            throw null;
        }
        if (commandCallback == null) {
            f6.n("callback is marked non-null but is null");
            throw null;
        }
        if (str == null) {
            f6.n("publicApiId is marked non-null but is null");
            throw null;
        }
        this.parameters = commandParameters;
        this.callback = commandCallback;
        this.controllerFactory = mSALControllerFactory;
        this.publicApiId = str;
    }

    public abstract boolean canEqual(BaseCommand baseCommand);

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof BaseCommand)) {
            return false;
        }
        BaseCommand baseCommand = (BaseCommand) obj;
        if (!baseCommand.canEqual(this)) {
            return false;
        }
        CommandParameters commandParameters = baseCommand.parameters;
        CommandParameters commandParameters2 = this.parameters;
        if (commandParameters2 == null) {
            return commandParameters == null;
        }
        return commandParameters2.equals(commandParameters);
    }

    public abstract T execute() throws Exception;

    public final CommandCallback getCallback() {
        return this.callback;
    }

    public final MSALControllerFactory getControllerFactory() {
        return this.controllerFactory;
    }

    public final CommandParameters getParameters() {
        return this.parameters;
    }

    public final String getPublicApiId() {
        return this.publicApiId;
    }

    public int hashCode() {
        CommandParameters commandParameters = this.parameters;
        return 59 + (commandParameters == null ? 43 : commandParameters.hashCode());
    }
}
