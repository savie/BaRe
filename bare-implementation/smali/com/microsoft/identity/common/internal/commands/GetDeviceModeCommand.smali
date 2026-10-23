.class public final Lcom/microsoft/identity/common/internal/commands/GetDeviceModeCommand;
.super Lcom/microsoft/identity/common/java/commands/BaseCommand;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/identity/common/java/commands/BaseCommand<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# virtual methods
.method public final canEqual(Lcom/microsoft/identity/common/java/commands/BaseCommand;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Lcom/microsoft/identity/common/internal/commands/GetDeviceModeCommand;

    .line 2
    .line 3
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/microsoft/identity/common/internal/commands/GetDeviceModeCommand;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    invoke-super {p0, p1}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_2

    .line 16
    .line 17
    return v2

    .line 18
    :cond_2
    return v0
.end method

.method public final execute()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getControllerFactory()Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;->getDefaultController()Lcom/microsoft/identity/common/java/controllers/BaseController;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getParameters()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/java/controllers/BaseController;->getDeviceMode(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method
