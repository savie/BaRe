.class final Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilderImpl;
.super Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder<",
        "Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;",
        "Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilderImpl;",
        ">;"
    }
.end annotation


# virtual methods
.method public final build()Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;-><init>(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final build()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;
    .locals 1

    .line 7
    new-instance v0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;-><init>(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;)V

    return-object v0
.end method

.method public final build$1()Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters;-><init>(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidInteractiveTokenCommandParameters$AndroidInteractiveTokenCommandParametersBuilder;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final self()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final self()Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;
    .locals 0

    .line 2
    return-object p0
.end method
