.class public abstract Lcom/microsoft/identity/common/java/commands/BaseCommand;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final callback:Lcom/microsoft/identity/common/java/commands/CommandCallback;

.field private final controllerFactory:Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;

.field private final parameters:Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

.field private final publicApiId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;Lcom/microsoft/identity/common/java/commands/CommandCallback;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    if-eqz p3, :cond_1

    .line 8
    .line 9
    if-eqz p4, :cond_0

    .line 10
    .line 11
    iput-object p1, p0, Lcom/microsoft/identity/common/java/commands/BaseCommand;->parameters:Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/microsoft/identity/common/java/commands/BaseCommand;->callback:Lcom/microsoft/identity/common/java/commands/CommandCallback;

    .line 14
    .line 15
    iput-object p2, p0, Lcom/microsoft/identity/common/java/commands/BaseCommand;->controllerFactory:Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;

    .line 16
    .line 17
    iput-object p4, p0, Lcom/microsoft/identity/common/java/commands/BaseCommand;->publicApiId:Ljava/lang/String;

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const-string p0, "publicApiId is marked non-null but is null"

    .line 21
    .line 22
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v0

    .line 26
    :cond_1
    const-string p0, "callback is marked non-null but is null"

    .line 27
    .line 28
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0

    .line 32
    :cond_2
    const-string p0, "parameters is marked non-null but is null"

    .line 33
    .line 34
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0
.end method


# virtual methods
.method public abstract canEqual(Lcom/microsoft/identity/common/java/commands/BaseCommand;)Z
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/microsoft/identity/common/java/commands/BaseCommand;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lcom/microsoft/identity/common/java/commands/BaseCommand;

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->canEqual(Lcom/microsoft/identity/common/java/commands/BaseCommand;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    iget-object p1, p1, Lcom/microsoft/identity/common/java/commands/BaseCommand;->parameters:Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/BaseCommand;->parameters:Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    .line 21
    .line 22
    if-nez p0, :cond_3

    .line 23
    .line 24
    if-eqz p1, :cond_4

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_3
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-nez p0, :cond_4

    .line 32
    .line 33
    :goto_0
    const/4 p0, 0x0

    .line 34
    return p0

    .line 35
    :cond_4
    :goto_1
    const/4 p0, 0x1

    .line 36
    return p0
.end method

.method public abstract execute()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final getCallback()Lcom/microsoft/identity/common/java/commands/CommandCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/BaseCommand;->callback:Lcom/microsoft/identity/common/java/commands/CommandCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getControllerFactory()Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/BaseCommand;->controllerFactory:Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getParameters()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/BaseCommand;->parameters:Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPublicApiId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/BaseCommand;->publicApiId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/BaseCommand;->parameters:Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/16 p0, 0x2b

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    :goto_0
    const/16 v0, 0x3b

    .line 13
    .line 14
    add-int/2addr v0, p0

    .line 15
    return v0
.end method
