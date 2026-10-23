.class final Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters$RemoveAccountCommandParametersBuilderImpl;
.super Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters$RemoveAccountCommandParametersBuilder;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters$RemoveAccountCommandParametersBuilder<",
        "Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters;",
        "Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters$RemoveAccountCommandParametersBuilderImpl;",
        ">;"
    }
.end annotation


# virtual methods
.method public final build()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters;-><init>(Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters$RemoveAccountCommandParametersBuilder;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final build()Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters;
    .locals 1

    .line 7
    new-instance v0, Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters;-><init>(Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters$RemoveAccountCommandParametersBuilder;)V

    return-object v0
.end method

.method public final self()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;
    .locals 0

    .line 1
    return-object p0
.end method
