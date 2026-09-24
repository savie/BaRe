.class public final Lcom/microsoft/identity/client/AuthenticationResult;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private final mAccessToken:Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcom/microsoft/identity/common/java/cache/ICacheRecord;

    .line 10
    .line 11
    invoke-interface {v1}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getAccessToken()Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iput-object v2, p0, Lcom/microsoft/identity/client/AuthenticationResult;->mAccessToken:Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 16
    .line 17
    invoke-interface {v1}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getAccount()Lcom/microsoft/identity/common/java/dto/AccountRecord;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-static {p2}, Lcom/microsoft/identity/client/AccountAdapter;->adapt(Ljava/util/List;)Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Lcom/microsoft/identity/client/Account;

    .line 33
    .line 34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    const-string p2, "AuthenticationResult:sanitizeCorrelationId"

    .line 39
    .line 40
    if-eqz p0, :cond_0

    .line 41
    .line 42
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 43
    .line 44
    const-string p0, "Correlation id was empty, returning null."

    .line 45
    .line 46
    invoke-static {p2, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :catch_0
    move-exception p0

    .line 55
    sget p1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 56
    .line 57
    const-string p1, "Correlation id is not a valid UUID."

    .line 58
    .line 59
    invoke-static {p2, p1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method


# virtual methods
.method public final getAccessToken()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/AuthenticationResult;->mAccessToken:Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/dto/Credential;->getSecret()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getExpiresOn()Ljava/util/Date;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Date;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/microsoft/identity/client/AuthenticationResult;->mAccessToken:Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->getExpiresOn()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 14
    .line 15
    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method
