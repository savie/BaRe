.class final Lcom/microsoft/identity/client/AccountAdapter$GuestAccountFilter;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final filter(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 6

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/microsoft/identity/common/java/cache/ICacheRecord;

    .line 21
    .line 22
    invoke-interface {v0}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getAccount()Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getHomeAccountId()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v0}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getAccount()Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getLocalAccountId()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const/4 v3, 0x0

    .line 39
    const-string v4, "AccountAdapter:GuestAccountFilter"

    .line 40
    .line 41
    if-nez v1, :cond_1

    .line 42
    .line 43
    sget v5, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 44
    .line 45
    const-string v5, "Home account ID is null for entry."

    .line 46
    .line 47
    invoke-static {v4, v5}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    move v5, v3

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    const/4 v5, 0x1

    .line 53
    :goto_1
    if-nez v2, :cond_2

    .line 54
    .line 55
    sget v5, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 56
    .line 57
    const-string v5, "Local account ID is null for entry."

    .line 58
    .line 59
    invoke-static {v4, v5}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    move v3, v5

    .line 64
    :goto_2
    if-eqz v3, :cond_0

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-nez v1, :cond_0

    .line 71
    .line 72
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    return-object p0
.end method
