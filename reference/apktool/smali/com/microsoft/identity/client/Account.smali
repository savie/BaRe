.class public abstract Lcom/microsoft/identity/client/Account;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final mClientInfo:Ljava/lang/String;

.field private mEnvironment:Ljava/lang/String;

.field private mHomeAccountId:Ljava/lang/String;

.field private mHomeOid:Ljava/lang/String;

.field private mHomeTenantId:Ljava/lang/String;

.field private final mIdTokenClaims:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/client/Account;->mClientInfo:Ljava/lang/String;

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;->getTokenClaims()Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/microsoft/identity/client/Account;->mIdTokenClaims:Ljava/util/Map;

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/microsoft/identity/client/Account;->mIdTokenClaims:Ljava/util/Map;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final getClaims()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/Account;->mIdTokenClaims:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getEnvironment()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/Account;->mEnvironment:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getHomeAccountId()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/microsoft/identity/client/Account;->getId()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "."

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/microsoft/identity/client/Account;->mHomeTenantId:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "Account:getId"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lcom/microsoft/identity/client/Account;->mClientInfo:Ljava/lang/String;

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    :try_start_0
    new-instance v3, Lcom/microsoft/identity/client/ClientInfo;

    .line 9
    .line 10
    invoke-direct {v3, v2}, Lcom/microsoft/identity/client/ClientInfo;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/microsoft/identity/client/exception/MsalClientException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v2

    .line 15
    sget v3, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 16
    .line 17
    const-string v3, "Failed to parse ClientInfo"

    .line 18
    .line 19
    invoke-static {v0, v3, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    move-object v3, v1

    .line 23
    :goto_0
    if-eqz v3, :cond_1

    .line 24
    .line 25
    invoke-virtual {v3}, Lcom/microsoft/identity/client/ClientInfo;->getUniqueIdentifier()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    iget-object v2, p0, Lcom/microsoft/identity/client/Account;->mIdTokenClaims:Ljava/util/Map;

    .line 31
    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    const-string v3, "oid"

    .line 35
    .line 36
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Ljava/lang/String;

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    iget-object v2, p0, Lcom/microsoft/identity/client/Account;->mHomeOid:Ljava/lang/String;

    .line 44
    .line 45
    :goto_1
    invoke-static {v2}, Lcom/microsoft/identity/common/internal/util/GzipUtil;->isEmpty(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_5

    .line 50
    .line 51
    sget v2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 52
    .line 53
    const-string v2, "Unable to get account id from either ClientInfo or IdToken. Attempting to obtain from home account id."

    .line 54
    .line 55
    invoke-static {v0, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lcom/microsoft/identity/client/Account;->mHomeAccountId:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {p0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    const-string v3, "StringUtil:getUIdFromHomeAccountId"

    .line 65
    .line 66
    if-nez v2, :cond_4

    .line 67
    .line 68
    const-string v2, "."

    .line 69
    .line 70
    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    array-length v2, p0

    .line 79
    const/4 v4, 0x2

    .line 80
    const/4 v5, 0x0

    .line 81
    if-ne v2, v4, :cond_3

    .line 82
    .line 83
    const-string v1, "Home account id is tenanted, returning uid "

    .line 84
    .line 85
    invoke-static {v3, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    aget-object v1, p0, v5

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_3
    array-length v2, p0

    .line 92
    const/4 v4, 0x1

    .line 93
    if-ne v2, v4, :cond_4

    .line 94
    .line 95
    const-string v1, "Home account id not tenanted, it\'s the uid added by v1 broker "

    .line 96
    .line 97
    invoke-static {v3, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    aget-object v1, p0, v5

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_4
    const-string p0, "Home Account id doesn\'t have uid or tenant id information, returning null "

    .line 104
    .line 105
    invoke-static {v3, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :goto_2
    move-object v2, v1

    .line 109
    :cond_5
    invoke-static {v2}, Lcom/microsoft/identity/common/internal/util/GzipUtil;->isEmpty(Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result p0

    .line 113
    if-eqz p0, :cond_6

    .line 114
    .line 115
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 116
    .line 117
    const-string p0, "Account ID is empty. Returning MISSING_FROM_THE_TOKEN_RESPONSE."

    .line 118
    .line 119
    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    const-string v2, "Missing from the token response"

    .line 123
    .line 124
    :cond_6
    return-object v2
.end method

.method public final getTenantId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/Account;->mHomeTenantId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getUsername()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/client/Account;->mIdTokenClaims:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lcom/microsoft/identity/common/java/util/SchemaUtil;->getDisplayableId(Ljava/util/Map;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    const-string p0, "Missing from the token response"

    .line 11
    .line 12
    return-object p0
.end method

.method public final setEnvironment(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/client/Account;->mEnvironment:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setHomeAccountId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/client/Account;->mHomeAccountId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/client/Account;->mHomeOid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setTenantId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/client/Account;->mHomeTenantId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
