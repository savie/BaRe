.class public final Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters;
.super Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final account:Lcom/microsoft/identity/common/java/dto/IAccountRecord;

.field private final browserSafeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters$RemoveAccountCommandParametersBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters$RemoveAccountCommandParametersBuilder<",
            "**>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;-><init>(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters$RemoveAccountCommandParametersBuilder;->access$200(Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters$RemoveAccountCommandParametersBuilder;)Lcom/microsoft/identity/common/java/dto/IAccountRecord;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters;->account:Lcom/microsoft/identity/common/java/dto/IAccountRecord;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters$RemoveAccountCommandParametersBuilder;->access$300(Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters$RemoveAccountCommandParametersBuilder;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters;->browserSafeList:Ljava/util/List;

    .line 15
    .line 16
    return-void
.end method

.method public static builder()Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters$RemoveAccountCommandParametersBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters$RemoveAccountCommandParametersBuilder<",
            "**>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters$RemoveAccountCommandParametersBuilderImpl;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final canEqual(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters;

    .line 2
    .line 3
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    goto :goto_3

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_2

    .line 9
    :cond_1
    move-object v0, p1

    .line 10
    check-cast v0, Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters;

    .line 11
    .line 12
    invoke-super {p0, p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_2

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_2
    iget-object p1, v0, Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters;->account:Lcom/microsoft/identity/common/java/dto/IAccountRecord;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters;->account:Lcom/microsoft/identity/common/java/dto/IAccountRecord;

    .line 22
    .line 23
    if-nez v1, :cond_3

    .line 24
    .line 25
    if-eqz p1, :cond_4

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_4

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_4
    const/4 p1, 0x0

    .line 36
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters;->browserSafeList:Ljava/util/List;

    .line 37
    .line 38
    if-nez p0, :cond_5

    .line 39
    .line 40
    move-object v1, p1

    .line 41
    goto :goto_0

    .line 42
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    iget-object p0, v0, Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters;->browserSafeList:Ljava/util/List;

    .line 48
    .line 49
    if-nez p0, :cond_6

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_6
    new-instance p1, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 55
    .line 56
    .line 57
    :goto_1
    if-nez v1, :cond_7

    .line 58
    .line 59
    if-eqz p1, :cond_8

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_7
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    if-nez p0, :cond_8

    .line 67
    .line 68
    :goto_2
    const/4 p0, 0x0

    .line 69
    return p0

    .line 70
    :cond_8
    :goto_3
    const/4 p0, 0x1

    .line 71
    return p0
.end method

.method public final getAccount()Lcom/microsoft/identity/common/java/dto/IAccountRecord;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters;->account:Lcom/microsoft/identity/common/java/dto/IAccountRecord;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v0, v0, 0x3b

    .line 6
    .line 7
    const/16 v1, 0x2b

    .line 8
    .line 9
    iget-object v2, p0, Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters;->account:Lcom/microsoft/identity/common/java/dto/IAccountRecord;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    move v2, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    :goto_0
    add-int/2addr v0, v2

    .line 20
    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/RemoveAccountCommandParameters;->browserSafeList:Ljava/util/List;

    .line 21
    .line 22
    if-nez p0, :cond_1

    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 29
    .line 30
    .line 31
    move-object p0, v2

    .line 32
    :goto_1
    mul-int/lit8 v0, v0, 0x3b

    .line 33
    .line 34
    if-nez p0, :cond_2

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    :goto_2
    add-int/2addr v0, v1

    .line 42
    return v0
.end method
