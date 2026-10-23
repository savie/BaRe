.class public final Lcom/microsoft/identity/common/exception/BrokerCommunicationException;
.super Lcom/microsoft/identity/common/java/exception/BaseException;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final category:I

.field private final strategyType:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    invoke-static {p1}, Ldj7;->b(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p0, v0, p3, p4}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    iput p1, p0, Lcom/microsoft/identity/common/exception/BrokerCommunicationException;->category:I

    .line 14
    .line 15
    iput p2, p0, Lcom/microsoft/identity/common/exception/BrokerCommunicationException;->strategyType:I

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    throw v0

    .line 19
    :cond_1
    throw v0
.end method


# virtual methods
.method public final getCategory()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/microsoft/identity/common/exception/BrokerCommunicationException;->category:I

    .line 2
    .line 3
    return p0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lcom/microsoft/identity/common/exception/BrokerCommunicationException;->category:I

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-static {v1}, Ldj7;->b(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v1, v0

    .line 12
    :goto_0
    const/4 v2, 0x3

    .line 13
    iget v3, p0, Lcom/microsoft/identity/common/exception/BrokerCommunicationException;->strategyType:I

    .line 14
    .line 15
    if-eqz v3, :cond_5

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    if-eq v3, v4, :cond_4

    .line 19
    .line 20
    const/4 v4, 0x2

    .line 21
    if-eq v3, v4, :cond_3

    .line 22
    .line 23
    if-eq v3, v2, :cond_2

    .line 24
    .line 25
    const/4 v4, 0x4

    .line 26
    if-ne v3, v4, :cond_1

    .line 27
    .line 28
    const-string v0, "legacy_account_authenticator_for_wpj_api"

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    throw v0

    .line 32
    :cond_2
    const-string v0, "content_provider"

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_3
    const-string v0, "account_manager_add_account"

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_4
    const-string v0, "bound_service"

    .line 39
    .line 40
    :cond_5
    :goto_1
    invoke-super {p0}, Lcom/microsoft/identity/common/java/exception/BaseException;->getMessage()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    filled-new-array {v1, v0, p0}, [Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {p0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const-string v0, "[%s] [%s] :%s"

    .line 53
    .line 54
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0
.end method
