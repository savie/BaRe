.class public abstract Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters$RemoveAccountCommandParametersBuilder;
.super Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters;",
        "B:",
        "Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters$RemoveAccountCommandParametersBuilder<",
        "TC;TB;>;>",
        "Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder<",
        "TC;TB;>;"
    }
.end annotation


# instance fields
.field private account:Lcom/microsoft/identity/common/java/dto/AccountRecord;

.field private browserSafeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic access$200(Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters$RemoveAccountCommandParametersBuilder;)Lcom/microsoft/identity/common/java/dto/IAccountRecord;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters$RemoveAccountCommandParametersBuilder;->account:Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters$RemoveAccountCommandParametersBuilder;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters$RemoveAccountCommandParametersBuilder;->browserSafeList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final account(Lcom/microsoft/identity/common/java/dto/AccountRecord;)Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters$RemoveAccountCommandParametersBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters$RemoveAccountCommandParametersBuilder;->account:Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 2
    .line 3
    check-cast p0, Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters$RemoveAccountCommandParametersBuilderImpl;

    .line 4
    .line 5
    return-object p0
.end method

.method public final browserSafeList(Ljava/util/List;)Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters$RemoveAccountCommandParametersBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;",
            ">;)TB;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters$RemoveAccountCommandParametersBuilder;->browserSafeList:Ljava/util/List;

    .line 2
    .line 3
    check-cast p0, Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters$RemoveAccountCommandParametersBuilderImpl;

    .line 4
    .line 5
    return-object p0
.end method

.method public abstract build()Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "RemoveAccountCommandParameters.RemoveAccountCommandParametersBuilder(super="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ", account="

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters$RemoveAccountCommandParametersBuilder;->account:Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, ", browserSafeList="

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters$RemoveAccountCommandParametersBuilder;->browserSafeList:Ljava/util/List;

    .line 31
    .line 32
    const-string v1, ")"

    .line 33
    .line 34
    invoke-static {v0, p0, v1}, Ldj7;->o(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method
